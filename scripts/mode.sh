#!/system/bin/sh
# 切换 appwrap 的目标：chrome | wps
# 用法： sh /data/local/tmp/mode.sh chrome     或     sh /data/local/tmp/mode.sh wps
MODE="$1"
PKG=com.anland.appwrap
PREFS_DIR=/data/data/com.anland.appwrap/shared_prefs
BAK=/data/local/tmp/wps-backup/appwrap.xml.orig

UID_APP=$(nsenter -t 1 -m -- ls -n /data/data/$PKG/ 2>/dev/null | sed -n 2p | awk '{print $3}')
[ -z "$UID_APP" ] && UID_APP=10549

am force-stop $PKG

case "$MODE" in
  chrome)
    [ -f "$BAK" ] || { echo "缺少备份 $BAK"; exit 1; }
    nsenter -t 1 -m -- cp "$BAK" $PREFS_DIR/appwrap.xml
    echo "已切回 Chrome（rootDir=/data/adb/anland-chrome/root-slim, display=relay）"
    ;;
  wps)
    cat > /data/local/tmp/appwrap-wps.xml <<'XML'
<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="container"></string>
    <boolean name="relayVerbose" value="false" />
    <boolean name="kgsl" value="false" />
    <string name="envExtra"></string>
    <int name="display" value="0" />
    <string name="rootDir">/data/adb/anland-wps/root</string>
    <string name="dsPath">droidspaces</string>
    <string name="chromeArgs"></string>
    <boolean name="autoAttach" value="true" />
    <string name="url"></string>
    <int name="perfMode" value="1" />
    <int name="mode" value="3" />
    <string name="args"></string>
    <string name="exe"></string>
    <string name="name">wps</string>
    <string name="user"></string>
    <string name="runtimeDir">/data/local/tmp/awl</string>
</map>
XML
    nsenter -t 1 -m -- cp /data/local/tmp/appwrap-wps.xml $PREFS_DIR/appwrap.xml
    echo "已切到 WPS（rootDir=/data/adb/anland-wps/root, display=X11）"
    ;;
  *)
    echo "用法: sh $0 chrome|wps"; exit 1;;
esac

nsenter -t 1 -m -- chown $UID_APP:$UID_APP $PREFS_DIR/appwrap.xml
nsenter -t 1 -m -- chmod 660 $PREFS_DIR/appwrap.xml
echo "--- 当前配置 ---"
nsenter -t 1 -m -- grep -E "rootDir|display|name" $PREFS_DIR/appwrap.xml 2>/dev/null
echo "现在可以点开 App 了"
