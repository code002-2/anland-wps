# GLES 转发扩展 OpenGL（桌面 GL / GLX）—— 进展与踩坑

## 目标

原来的转发只服务 **GLES**（`libEGL.so.1` + `libGLESv2.so.2` → Unix socket → Android 侧
`glproxy-server`/`libglproxysrv.so` → 真 Adreno）。桌面 Linux 程序（Qt、WPS、glxgears…）
要的是 **OpenGL + GLX**，所以这一轮给转发栈补上：

```
X11 客户端 (libGL.so.1 + GLX)
        │  gl4es：桌面 GL(1.x/2.x/立即模式/固定管线) → GLES2
        ▼
libGLESv2.so.2 / libEGL.so.1（我们的转发壳，本轮新增 X11 窗口面 + 呈现）
        │  Unix socket（协议：glp_req/glp_rsp）
        ▼
glproxy-server（Android/bionic，NDK 编译）→ 真 Adreno EGL/GLES
```

关键点：**桌面 GL 没有在服务端实现** —— 服务端仍然只跑 GLES，桌面 GL 的翻译由
客户端进程里的 gl4es 完成（翻译成本在本地，减少往返）。

## 本轮新增/改动的文件

| 文件 | 作用 |
|------|------|
| `glp_glx11.c`（新） | EGL **窗口面**（X11 Window → 服务端 Pbuffer）+ `eglSwapBuffers` 里的 `glReadPixels` → `XPutImage` 呈现；接管 `eglGetDisplay`（见坑 4） |
| `glproxy-gen.py`（改） | 出参尺寸表按位置兜底；补齐 attrib_list 尺寸；把 `eglCreateWindowSurface / eglSwapBuffers / eglQuerySurface / eglDestroySurface / eglGetDisplay` 转为手工实现；**字符串返回值一律走 blob 回传**（见坑 1） |
| `glp_sizes.h`（改） | `glp_attribs_size(void*)`：EGL 的 attrib 表既有 `EGLint*` 也有 `EGLAttrib*` |
| `glp_client.c`（改） | 发送侧调试日志（`GLPROXY_DEBUG=1`） |
| `glproxy-server.c`（改） | 拦截 `eglTerminate`（见坑 3）；补齐自定义 op（`GLP_OP_CUSTOM_*`）——**注意**：设备上曾存在一个缺这两个自定义 op 的旧版本服务端 |
| `glx4test.c` / `glctxprobe.c` / `eglprobe.c` | 端到端验证：EGL 探针、GL 上下文+常量、GLX 立即模式三角形+呈现校验 |
| `patch-gen*.py` 等 | 上述改动的可重放补丁 |

## 已验证通过（实测）

1. **EGL 全链路**：`eglGetDisplay` → `eglInitialize`（返回 1，**EGL 1.5**）→
   `eglChooseConfig`（拿到 config）→ `eglCreateContext` → `eglCreatePbufferSurface` → `eglMakeCurrent`
2. **真 GPU 身份确认**：
   `glGetString(GL_RENDERER) = "OpenGL ES 3.2 V@0842.8 (GIT@008a698cf0 …)"` ← 手机 Adreno
3. **GL 调用正确往返**：`glGetIntegerv` 返回真实值（`MAX_TEXTURE_SIZE=16384`、
   `MAX_VERTEX_ATTRIBS=32`、`MAX_COMBINED_TEXTURE_IMAGE_UNITS=96` …）
4. **gl4es 初始化成功**：`Using GLES 2.0 backend` → `Android driver detected` →
   `Targeting OpenGL 2.1` → `glXChooseVisual` 选中 `depth=24 class=4`
5. X11 呈现层代码路径已实现（`eglCreateWindowSurface` + `glReadPixels`→`XPutImage`），
   用 `Xvfb :9` 做无头验证，不影响用户正在用的 Xwayland :0

## 还没完成

- `glXCreateContext` 之后仍会失败/退出（本轮最后卡在这里）：gl4es 的 GLX 建上下文路径
  还会重新走一遍 EGL 初始化，且它的 `hardext` 探测拿到的 `Max texture size: 0` 等值可疑
  （说明它的**临时上下文**那一步没真正 current）。
- 因此**还没有**跑出「立即模式三角形出现在 X 窗口」的 PASS。
- APK 还没更新：`libglproxysrv.so`（APK 里的服务端）与容器里的转发壳**必须同版本**，
  协议表对不上会静默错乱（见坑 2）。

## 踩过的坑（这一轮最值钱的部分）

1. **字符串返回值跨地址空间**：生成器原来只对 `const GLubyte *`（glGetString）走 blob 回传，
   `eglQueryString` 的 `const char *` 没覆盖 → 把**服务端地址空间的指针**回传给客户端 →
   一解引用就段错误。修：`is_str_ret()` 覆盖 `char */GLubyte */GLchar *`。
2. **协议表必须两边同版本**：客户端与服务端的 op 编号 = 「按名字排序后的入口序号 + 0x1000」。
   旧服务端二进制是 275 个入口编的，新客户端是 290 个 → 客户端发 `eglGetDisplay`，
   服务端当成 `eglMakeCurrent` 执行 → 表现为「EGL 各种诡异失败 + 卡死」，极难查。
   **任何生成器改动都要同时重编服务和客户端。**
3. **Android/Adreno 的 `eglTerminate` 会卡住服务端线程**（客户端等回复永久挂起）。
   规避：服务端拦截 `GLP_EGLTERMINATE` 直接回 `EGL_TRUE`，不做真实终止。
4. **gl4es 的 GLX 会把 X11 `Display*` 当 native display 传**：`eglGetDisplay(x_display)` →
   服务端拿到这个指针 → `EGL_BAD_PARAMETER`。修：壳里接管 `eglGetDisplay`，
   一律换成 `EGL_DEFAULT_DISPLAY`。
5. **`libEGL.so.1` 与 `libGLESv2.so.2` 是同一个二进制的两个名字**：安装时必须
   **把新产物复制到这两个名字**，否则旧的 `libEGL.so.1` 会因为链接顺序排在前面而"赢"，
   表现为「一部分 GL 调用正常、一部分是桩」的诡异状态（本轮栽在这上面很久）。
6. **服务端需要 NDK 的 GLES3 存根**：`-lGLESv2` 的存根没有 `glBeginTransformFeedback`
   等 GLES3 符号，要链 `-lGLESv3`。
7. **没有 x86_64 工具链时也能编 bionic**：用系统 clang + NDK 的 sysroot：
   ```
   clang --target=aarch64-linux-android29 \
     --sysroot=/opt/android-ndk-r27c/toolchains/llvm/prebuilt/linux-x86_64/sysroot \
     -resource-dir=/opt/android-ndk-r27c/toolchains/llvm/prebuilt/linux-x86_64/lib/clang/18 \
     -rtlib=compiler-rt --unwindlib=none -O2 -pthread \
     glproxy-server.c glp_gen_server.c -o glproxy-server -lEGL -lGLESv3 -llog
   ```
8. **测试环境**：容器里 `/dev` 若是空的，`Xvfb` 会段错误启动不了 → 先 `mount --bind /dev <rootfs>/dev`；
   另外 Xvfb 只需 `apt-get install xvfb`，用它做无头 GLX 验证不打扰用户会话。

## 下一步（按优先级）

1. 查 `glXCreateContext`：确认 gl4es 的 `hardext` 临时上下文为何没生效
   （怀疑与 `eglMakeCurrent` 的 surface/config 组合或 `eglGetConfigAttrib` 返回有关），
   必要时用 `LIBGL_NOBATCH=1`/`LIBGL_DEBUG=1` 打开更多 gl4es 日志。
2. 打通后更新 APK：同时替换 `assets/glproxy/*`（新增 `libGL.so.1`）与
   `lib/arm64-v8a/libglproxysrv.so`，保证协议同版本。
3. 桌面 GL 上的 `glMapBufferRange` 等"返回指针"的入口目前会返回空指针（跨地址空间无解），
   需要的话按 blob 回传实现。
