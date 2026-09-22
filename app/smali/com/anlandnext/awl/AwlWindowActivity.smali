.class public Lcom/anlandnext/awl/AwlWindowActivity;
.super Landroid/app/Activity;
.source "AwlWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anlandnext/awl/AwlWindowActivity$HostFire;,
        Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;,
        Lcom/anlandnext/awl/AwlWindowActivity$WlInputConnection;
    }
.end annotation


# static fields
.field private static final BTN_BACK:I = 0x116

.field private static final BTN_FORWARD:I = 0x115

.field private static final BTN_LEFT:I = 0x110

.field private static final BTN_MIDDLE:I = 0x112

.field private static final BTN_RIGHT:I = 0x111

.field private static final CAPTURE_CONFINE:I = 0x1

.field private static final CAPTURE_LOCK:I = 0x2

.field private static final CAPTURE_NONE:I = 0x0

.field private static final CLS_MULTI_FINGER_SWIPE:I = 0x4

.field private static final CLS_PINCH:I = 0x5

.field private static final CLS_TWO_FINGER_SWIPE:I = 0x3

.field private static final CTRL_DESC:Ljava/lang/String; = "anland.ICtrl"

.field private static final C_CAPTURE:I = 0x7

.field private static final C_CLIP_WRITE:I = 0x6

.field private static final C_CLOSE:I = 0x1

.field private static final C_CURSOR:I = 0x8

.field private static final C_ICON:I = 0xa

.field private static final C_IME_HIDE:I = 0x4

.field private static final C_IME_SHOW:I = 0x3

.field private static final C_IME_STATE:I = 0x5

.field private static final C_KEEPON:I = 0x9

.field private static final C_TITLE:I = 0x2

.field private static final HOST_SEQ:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final KEY:I = 0x9

.field private static final LIVE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/anlandnext/awl/AwlWindowActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAD_BUTTON_MAP:[[I

.field private static final PTR_AXIS:I = 0x5

.field private static final PTR_BUTTON:I = 0x4

.field private static final PTR_ENTER:I = 0x1

.field private static final PTR_LEAVE:I = 0x2

.field private static final PTR_MOTION:I = 0x3

.field private static final PTR_REL:I = 0x6

.field private static final STATE_RESET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "anland-awlwin"

.field private static final TOUCH_CANCEL:I = 0xe

.field private static final TOUCH_DOWN:I = 0xb

.field private static final TOUCH_MOTION:I = 0xc

.field private static final TOUCH_UP:I = 0xd

.field private static sLastClipPushed:Ljava/lang/String;

.field private static sLastClipWritten:Ljava/lang/String;


# instance fields
.field private attached:Z

.field private final capRect:[I

.field private captureMode:I

.field private final clipListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private clipMgr:Landroid/content/ClipboardManager;

.field private compCursor:I

.field private compText:Ljava/lang/String;

.field private confinex:F

.field private confiney:F

.field private ctrl:Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;

.field private final daemonDeath:Landroid/os/IBinder$DeathRecipient;

.field private deathLinked:Z

.field private finishingByGone:Z

.field private hiddenInput:Landroid/widget/EditText;

.field private host:J

.field private hostCbs:Lcom/anlandnext/awl/Awl$HostCallbacks;

.field private hostWin:Lcom/anlandnext/awl/Awl$WlWindow;

.field private id:J

.field private imeHint:I

.field private imePurpose:I

.field private final imeRect:[I

.field private imeWanted:Z

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private lastH:I

.field private lastImeMargin:I

.field private lastMouseX:F

.field private lastMouseY:F

.field private lastW:I

.field private mouseSavedBS:I

.field private padInWin:Z

.field private ptrHidden:Z

.field private root:Landroid/widget/FrameLayout;

.field private surAnchor:I

.field private surCursor:I

.field private surText:Ljava/lang/String;

.field private sv:Landroid/view/SurfaceView;

.field private taskIcon:Landroid/graphics/Bitmap;

.field private taskTitle:Ljava/lang/String;

.field private final winEvents:Lcom/anlandnext/awl/Awl$Callback;


# direct methods
.method public static synthetic $r8$lambda$J9mYjJGPsMuR3AsTywOY8s1gjyI(Lcom/anlandnext/awl/AwlWindowActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->lambda$onCreate$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XVDJrMTh8KlpC3VEZ8Qr478cS48(Lcom/anlandnext/awl/AwlWindowActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->lambda$applyTaskIconAsync$2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSt9FUPIOIgEGBhalWoeCs412ZI(Lcom/anlandnext/awl/AwlWindowActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->lambda$applyTaskIconAsync$3(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetattached(Lcom/anlandnext/awl/AwlWindowActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->attached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcompText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetid(Lcom/anlandnext/awl/AwlWindowActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastH(Lcom/anlandnext/awl/AwlWindowActivity;)I
    .locals 0

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastW(Lcom/anlandnext/awl/AwlWindowActivity;)I
    .locals 0

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;)I
    .locals 0

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surAnchor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;)I
    .locals 0

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsurText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputattached(Lcom/anlandnext/awl/AwlWindowActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->attached:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcompCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V
    .locals 0

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compCursor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcompText(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfinishingByGone(Lcom/anlandnext/awl/AwlWindowActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->finishingByGone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastH(Lcom/anlandnext/awl/AwlWindowActivity;I)V
    .locals 0

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastW(Lcom/anlandnext/awl/AwlWindowActivity;I)V
    .locals 0

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsurAnchor(Lcom/anlandnext/awl/AwlWindowActivity;I)V
    .locals 0

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surAnchor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsurCursor(Lcom/anlandnext/awl/AwlWindowActivity;I)V
    .locals 0

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsurText(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtaskTitle(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->taskTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyKeepOn(Lcom/anlandnext/awl/AwlWindowActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->applyKeepOn(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyTaskDescription(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->applyTaskDescription()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyTaskIconAsync(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->applyTaskIconAsync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbytesAfter(Lcom/anlandnext/awl/AwlWindowActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->bytesAfter(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mbytesAfterCp(Lcom/anlandnext/awl/AwlWindowActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->bytesAfterCp(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mbytesBefore(Lcom/anlandnext/awl/AwlWindowActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->bytesBefore(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mbytesBeforeCp(Lcom/anlandnext/awl/AwlWindowActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->bytesBeforeCp(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearComposing(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->clearComposing()V

    return-void
.end method

.method static bridge synthetic -$$Nest$meditorSelStart(Lcom/anlandnext/awl/AwlWindowActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->editorSelStart()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$meditorText(Lcom/anlandnext/awl/AwlWindowActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->editorText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyImeState(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->notifyImeState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monImeHide(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->onImeHide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monImeShow(Lcom/anlandnext/awl/AwlWindowActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->onImeShow(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monImeState(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;IIIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/anlandnext/awl/AwlWindowActivity;->onImeState(Ljava/lang/String;IIIIIIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpushClipboard(Lcom/anlandnext/awl/AwlWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->pushClipboard()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSurface(Lcom/anlandnext/awl/AwlWindowActivity;Landroid/view/SurfaceHolder;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anlandnext/awl/AwlWindowActivity;->sendSurface(Landroid/view/SurfaceHolder;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPointerCaptureMode(Lcom/anlandnext/awl/AwlWindowActivity;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/anlandnext/awl/AwlWindowActivity;->setPointerCaptureMode(IIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPointerHidden(Lcom/anlandnext/awl/AwlWindowActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->setPointerHidden(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoSurroundingIndex(Lcom/anlandnext/awl/AwlWindowActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->toSurroundingIndex(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mwriteClipboard(Lcom/anlandnext/awl/AwlWindowActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->writeClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsLastClipPushed(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/anlandnext/awl/AwlWindowActivity;->sLastClipPushed:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsLastClipWritten(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/anlandnext/awl/AwlWindowActivity;->sLastClipWritten:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$smcomposingCursorChars(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->composingCursorChars(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcpBack(Ljava/lang/String;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->cpBack(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcpFwd(Ljava/lang/String;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->cpFwd(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smpreeditCursorBytes(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->preeditCursorBytes(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsnap(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->snap(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsnapBack(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->snapBack(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smutf8Len(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->utf8Len(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/anlandnext/awl/AwlWindowActivity;->LIVE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/anlandnext/awl/AwlWindowActivity;->HOST_SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    const/16 v1, 0x110

    .line 1468
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x111

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x112

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0x116

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x10

    const/16 v5, 0x115

    filled-new-array {v4, v5}, [I

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[I

    move-result-object v0

    sput-object v0, Lcom/anlandnext/awl/AwlWindowActivity;->PAD_BUTTON_MAP:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, -0x1

    .line 108
    iput-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastImeMargin:I

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    const/4 v1, 0x4

    .line 139
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeRect:[I

    .line 141
    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$1;

    invoke-direct {v0, p0}, Lcom/anlandnext/awl/AwlWindowActivity$1;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;)V

    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->winEvents:Lcom/anlandnext/awl/Awl$Callback;

    .line 276
    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$2;

    invoke-direct {v0, p0}, Lcom/anlandnext/awl/AwlWindowActivity$2;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;)V

    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->daemonDeath:Landroid/os/IBinder$DeathRecipient;

    .line 556
    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$4;

    invoke-direct {v0, p0}, Lcom/anlandnext/awl/AwlWindowActivity$4;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;)V

    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->clipListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    const/4 v0, 0x0

    .line 1241
    iput v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->captureMode:I

    .line 1242
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->capRect:[I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1405
    iput v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    iput v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    return-void
.end method

.method private applyImeInset(Landroid/view/WindowInsets;)V
    .locals 1

    .line 746
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 747
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->imeOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 748
    :cond_0
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastImeMargin:I

    if-ne p1, v0, :cond_1

    return-void

    .line 749
    :cond_1
    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastImeMargin:I

    .line 750
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 751
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 752
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyKeepOn(Z)V
    .locals 3

    .line 1315
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x80

    if-eqz p1, :cond_1

    .line 1316
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1318
    :cond_1
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1320
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": keep-screen-on "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_2

    const-string p1, "on (idle inhibitor)"

    goto :goto_1

    :cond_2
    const-string p1, "off"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "anland-awlwin"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private applyPointerCapture()V
    .locals 1

    .line 1282
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1283
    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->captureMode:I

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    return-void

    .line 1284
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    return-void
.end method

.method private applyTaskDescription()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->taskTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->taskIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->taskIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 506
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->taskTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->taskIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 507
    :cond_1
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->taskTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    .line 508
    :goto_0
    invoke-virtual {p0, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method private applyTaskIconAsync()V
    .locals 4

    .line 514
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    .line 515
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda2;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;J)V

    const-string p0, "awl-icon"

    invoke-direct {v2, v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private bindWindowId(JLjava/lang/String;Lcom/anlandnext/awl/Awl$HostCallbacks;Z)V
    .locals 9

    .line 317
    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    cmp-long v3, p1, v1

    if-eqz v3, :cond_b

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    cmp-long v3, v1, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gez v3, :cond_1

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    if-nez v8, :cond_3

    .line 320
    iget-boolean v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->attached:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->host:J

    invoke-static {v1, v2, v3, v4}, Lcom/anlandnext/awl/AwlClient;->pause(JJ)V

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 321
    invoke-direct/range {v0 .. v5}, Lcom/anlandnext/awl/AwlWindowActivity;->setPointerCaptureMode(IIIII)V

    .line 322
    sget-object v1, Lcom/anlandnext/awl/AwlWindowActivity;->LIVE:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iput-boolean v7, p0, Lcom/anlandnext/awl/AwlWindowActivity;->attached:Z

    .line 325
    :cond_3
    iput-wide p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    .line 326
    sget-object v1, Lcom/anlandnext/awl/AwlWindowActivity;->HOST_SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->host:J

    .line 327
    new-instance v1, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;

    invoke-direct {v1, p0}, Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;)V

    iput-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->ctrl:Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;

    .line 333
    const-string v1, ""

    iput-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    iput v7, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surAnchor:I

    iput v7, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    .line 334
    iput-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    iput v7, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compCursor:I

    .line 335
    iput-boolean v7, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeWanted:Z

    .line 336
    sget-object v1, Lcom/anlandnext/awl/AwlWindowActivity;->LIVE:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_6

    .line 339
    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-static {v1, v2}, Lcom/anlandnext/awl/Awl;->hostArrived(J)V

    .line 340
    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-static {v1, v2}, Lcom/anlandnext/awl/Awl;->hostEntry(J)Lcom/anlandnext/awl/Awl$HostEntry;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 341
    iget-object v3, v1, Lcom/anlandnext/awl/Awl$HostEntry;->cbs:Lcom/anlandnext/awl/Awl$HostCallbacks;

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    iput-object v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hostCbs:Lcom/anlandnext/awl/Awl$HostCallbacks;

    if-eqz v1, :cond_5

    .line 342
    iget-object v2, v1, Lcom/anlandnext/awl/Awl$HostEntry;->win:Lcom/anlandnext/awl/Awl$WlWindow;

    :cond_5
    iput-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hostWin:Lcom/anlandnext/awl/Awl$WlWindow;

    goto :goto_2

    .line 344
    :cond_6
    new-instance v1, Lcom/anlandnext/awl/Awl$WlWindow;

    iget-wide v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-direct {v1, v2, v3, v6, p3}, Lcom/anlandnext/awl/Awl$WlWindow;-><init>(JZLjava/lang/String;)V

    iput-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hostWin:Lcom/anlandnext/awl/Awl$WlWindow;

    move-object v1, p4

    .line 345
    iput-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hostCbs:Lcom/anlandnext/awl/Awl$HostCallbacks;

    :goto_2
    if-eqz p3, :cond_7

    .line 349
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 350
    iput-object p3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->taskTitle:Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->applyTaskDescription()V

    .line 354
    :cond_7
    const-string v1, "anland-awlwin"

    if-eqz v8, :cond_8

    .line 356
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->daemonDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-static {v2}, Lcom/anlandnext/awl/AwlClient;->monitorDeath(Landroid/os/IBinder$DeathRecipient;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->deathLinked:Z

    if-nez v2, :cond_9

    .line 357
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->available()Z

    move-result v2

    if-nez v2, :cond_9

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "win "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": daemon unreachable -> finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->finish()V

    return-void

    .line 363
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "win re-bound to id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_9
    iget-boolean v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->attached:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    if-eqz v1, :cond_a

    .line 370
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    .line 371
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 372
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    iget v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    invoke-direct {p0, v1, v2, v3}, Lcom/anlandnext/awl/AwlWindowActivity;->sendSurface(Landroid/view/SurfaceHolder;II)V

    .line 374
    :cond_a
    new-instance v1, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v1}, Lcom/anlandnext/awl/AwlWindowActivity;->fireHost(Lcom/anlandnext/awl/AwlWindowActivity$HostFire;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private static byteToChar(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    move v2, v1

    .line 896
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 897
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    const v4, 0xffff

    if-gt v3, v4, :cond_3

    const/4 v4, 0x3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    add-int/2addr v2, v4

    if-le v2, p1, :cond_4

    goto :goto_2

    .line 901
    :cond_4
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_5
    :goto_2
    return v1
.end method

.method private bytesAfter(I)I
    .locals 3

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->snap(Ljava/lang/String;I)I

    move-result p1

    .line 978
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->utf8Len(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private bytesAfterCp(I)I
    .locals 4

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 991
    :cond_0
    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    .line 992
    :goto_0
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ge v0, p1, :cond_1

    .line 993
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/anlandnext/awl/AwlWindowActivity;->snap(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_1
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->utf8Len(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private bytesBefore(I)I
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    iget v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    sub-int/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->snapBack(Ljava/lang/String;I)I

    move-result p1

    .line 973
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    invoke-virtual {v0, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->utf8Len(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private bytesBeforeCp(I)I
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 982
    :cond_0
    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    :goto_0
    if-lez v1, :cond_1

    if-ge v0, p1, :cond_1

    .line 984
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Lcom/anlandnext/awl/AwlWindowActivity;->snapBack(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 987
    :cond_1
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->utf8Len(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private clearComposing()V
    .locals 1

    .line 856
    const-string v0, ""

    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 857
    iput v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compCursor:I

    .line 858
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->notifyImeState()V

    return-void
.end method

.method private static composingCursorChars(Ljava/lang/String;I)I
    .locals 4

    .line 924
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v2, p1

    .line 925
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v0, v1

    move v2, v0

    .line 927
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-ge v0, p1, :cond_0

    .line 928
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 929
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method private confHiX()F
    .locals 5

    .line 1250
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->capRect:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confLoX()F

    move-result v0

    iget v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->capRect:[I

    const/4 v4, 0x0

    aget v4, p0, v4

    aget p0, p0, v1

    add-int/2addr v4, p0

    int-to-float p0, v4

    sub-float/2addr p0, v2

    .line 1251
    invoke-static {v3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 1250
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 1251
    :cond_0
    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    int-to-float p0, p0

    sub-float/2addr p0, v2

    return p0
.end method

.method private confHiY()F
    .locals 5

    .line 1254
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->capRect:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confLoY()F

    move-result v0

    iget v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->capRect:[I

    const/4 v4, 0x1

    aget v4, p0, v4

    aget p0, p0, v1

    add-int/2addr v4, p0

    int-to-float p0, v4

    sub-float/2addr p0, v2

    .line 1255
    invoke-static {v3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 1254
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 1255
    :cond_0
    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    int-to-float p0, p0

    sub-float/2addr p0, v2

    return p0
.end method

.method private confLoX()F
    .locals 1

    .line 1247
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->capRect:[I

    const/4 v0, 0x2

    aget v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget p0, p0, v0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private confLoY()F
    .locals 1

    .line 1248
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->capRect:[I

    const/4 v0, 0x3

    aget v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    aget p0, p0, v0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static cpBack(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 940
    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->snapBack(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static cpFwd(Ljava/lang/String;II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 944
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 945
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->snap(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private editorSelStart()I
    .locals 2

    .line 870
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compCursor:I

    add-int/2addr v0, p0

    return v0
.end method

.method private editorText()Ljava/lang/String;
    .locals 4

    .line 864
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 865
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 866
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private endPadStream()V
    .locals 17

    move-object/from16 v0, p0

    .line 1357
    iget v1, v0, Lcom/anlandnext/awl/AwlWindowActivity;->mouseSavedBS:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1359
    iput v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->mouseSavedBS:I

    .line 1360
    sget-object v3, Lcom/anlandnext/awl/AwlWindowActivity;->PAD_BUTTON_MAP:[[I

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1361
    aget v7, v6, v2

    and-int/2addr v7, v1

    if-eqz v7, :cond_0

    .line 1362
    iget-wide v8, v0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/4 v7, 0x1

    aget v11, v6, v7

    iget v12, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    iget v13, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x4

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1364
    :cond_1
    iget-boolean v1, v0, Lcom/anlandnext/awl/AwlWindowActivity;->padInWin:Z

    if-eqz v1, :cond_2

    .line 1365
    iput-boolean v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->padInWin:Z

    .line 1366
    iget-wide v3, v0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    :cond_2
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1368
    iput v1, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    iput v1, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    return-void
.end method

.method private static fallbackSc(I)I
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_9

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_8

    const/16 v0, 0x42

    if-eq p0, v0, :cond_7

    const/16 v0, 0x43

    if-eq p0, v0, :cond_6

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_5

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_3

    const/16 v1, 0x70

    if-eq p0, v1, :cond_2

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x6a

    return p0

    :pswitch_1
    const/16 p0, 0x69

    return p0

    :pswitch_2
    const/16 p0, 0x6c

    return p0

    :pswitch_3
    const/16 p0, 0x67

    return p0

    :cond_0
    const/16 p0, 0x6b

    return p0

    :cond_1
    const/16 p0, 0x66

    return p0

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/16 p0, 0x6d

    return p0

    :cond_5
    const/16 p0, 0x68

    return p0

    :cond_6
    const/16 p0, 0xe

    return p0

    :cond_7
    const/16 p0, 0x1c

    return p0

    :cond_8
    const/16 p0, 0x39

    return p0

    :cond_9
    const/16 p0, 0xf

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static finishById(J)V
    .locals 2

    .line 291
    sget-object v0, Lcom/anlandnext/awl/AwlWindowActivity;->LIVE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anlandnext/awl/AwlWindowActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 293
    iput-boolean v1, v0, Lcom/anlandnext/awl/AwlWindowActivity;->finishingByGone:Z

    .line 294
    invoke-virtual {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->finish()V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " finished (client gone)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "anland-awlwin"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private fireHost(Lcom/anlandnext/awl/AwlWindowActivity$HostFire;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hostCbs:Lcom/anlandnext/awl/Awl$HostCallbacks;

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hostWin:Lcom/anlandnext/awl/Awl$WlWindow;

    invoke-interface {p1, v0, v1, p0}, Lcom/anlandnext/awl/AwlWindowActivity$HostFire;->fire(Lcom/anlandnext/awl/Awl$HostCallbacks;Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 161
    const-string p1, "anland-awlwin"

    const-string v0, "host lifecycle callback threw"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private handleMouseEvent(Landroid/view/MotionEvent;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1419
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1423
    iget v4, v0, Lcom/anlandnext/awl/AwlWindowActivity;->captureMode:I

    const/16 v5, 0x1c

    const/16 v6, 0x1b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v4, v9, :cond_5

    const/4 v10, 0x2

    if-eq v4, v10, :cond_2

    .line 1444
    iget v4, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    sub-float v4, v2, v4

    .line 1445
    :goto_0
    iget v5, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    iget v5, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    sub-float v5, v3, v5

    .line 1447
    :goto_1
    iput v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    .line 1448
    iput v3, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    goto :goto_2

    .line 1427
    :cond_2
    invoke-static {v1, v6}, Lcom/anlandnext/awl/AwlWindowActivity;->sumAxis(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1428
    invoke-static {v1, v5}, Lcom/anlandnext/awl/AwlWindowActivity;->sumAxis(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1429
    iget v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    .line 1430
    :cond_3
    iget v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    .line 1432
    :cond_4
    iget v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    iget v3, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    move v14, v2

    move v15, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move v2, v7

    goto :goto_3

    .line 1435
    :cond_5
    invoke-static {v1, v6}, Lcom/anlandnext/awl/AwlWindowActivity;->sumAxis(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1436
    invoke-static {v1, v5}, Lcom/anlandnext/awl/AwlWindowActivity;->sumAxis(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1437
    invoke-direct {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->confLoX()F

    move-result v2

    invoke-direct {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->confHiX()F

    move-result v3

    iget v6, v0, Lcom/anlandnext/awl/AwlWindowActivity;->confinex:F

    add-float/2addr v6, v4

    invoke-direct {v0, v2, v3, v6}, Lcom/anlandnext/awl/AwlWindowActivity;->limitRange(FFF)F

    move-result v2

    iput v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->confinex:F

    .line 1438
    invoke-direct {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->confLoY()F

    move-result v2

    invoke-direct {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->confHiY()F

    move-result v3

    iget v6, v0, Lcom/anlandnext/awl/AwlWindowActivity;->confiney:F

    add-float/2addr v6, v5

    invoke-direct {v0, v2, v3, v6}, Lcom/anlandnext/awl/AwlWindowActivity;->limitRange(FFF)F

    move-result v3

    iput v3, v0, Lcom/anlandnext/awl/AwlWindowActivity;->confiney:F

    .line 1440
    iget v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->confinex:F

    iput v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    .line 1441
    iput v3, v0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    :goto_2
    move v14, v2

    move v15, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move v2, v9

    .line 1451
    :goto_3
    iget-boolean v3, v0, Lcom/anlandnext/awl/AwlWindowActivity;->padInWin:Z

    if-nez v3, :cond_6

    .line 1452
    invoke-direct/range {p0 .. p1}, Lcom/anlandnext/awl/AwlWindowActivity;->padEnter(Landroid/view/MotionEvent;)V

    :cond_6
    cmpl-float v3, v20, v8

    if-nez v3, :cond_7

    cmpl-float v3, v21, v8

    if-eqz v3, :cond_8

    .line 1454
    :cond_7
    iget-wide v3, v0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-wide/from16 v16, v3

    invoke-static/range {v16 .. v24}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    :cond_8
    if-eqz v2, :cond_9

    .line 1456
    iget-wide v10, v0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    .line 1457
    :cond_9
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    .line 1458
    iget v2, v0, Lcom/anlandnext/awl/AwlWindowActivity;->mouseSavedBS:I

    xor-int/2addr v2, v1

    if-eqz v2, :cond_d

    .line 1460
    sget-object v3, Lcom/anlandnext/awl/AwlWindowActivity;->PAD_BUTTON_MAP:[[I

    array-length v4, v3

    move v5, v7

    :goto_4
    if-ge v5, v4, :cond_c

    aget-object v6, v3, v5

    .line 1461
    aget v10, v6, v7

    and-int v11, v2, v10

    if-eqz v11, :cond_b

    move v12, v10

    .line 1462
    iget-wide v10, v0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    aget v13, v6, v9

    and-int v6, v1, v12

    if-eqz v6, :cond_a

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v16, v6

    goto :goto_5

    :cond_a
    move/from16 v16, v8

    :goto_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x4

    invoke-static/range {v10 .. v18}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1464
    :cond_c
    iput v1, v0, Lcom/anlandnext/awl/AwlWindowActivity;->mouseSavedBS:I

    :cond_d
    return-void
.end method

.method private handleTouchpadScroll(Landroid/view/MotionEvent;)V
    .locals 10

    .line 1497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 1504
    :cond_1
    iget-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->padInWin:Z

    if-nez v0, :cond_2

    .line 1505
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->padEnter(Landroid/view/MotionEvent;)V

    :cond_2
    const/16 v0, 0x33

    .line 1506
    invoke-static {p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->sumAxis(Landroid/view/MotionEvent;I)F

    move-result v5

    const/16 v0, 0x32

    .line 1507
    invoke-static {p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->sumAxis(Landroid/view/MotionEvent;I)F

    move-result v6

    const/4 p1, 0x0

    cmpl-float v0, v5, p1

    if-nez v0, :cond_3

    cmpl-float p1, v6, p1

    if-eqz p1, :cond_5

    .line 1509
    :cond_3
    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    return-void

    .line 1499
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->padInWin:Z

    if-eqz p1, :cond_5

    .line 1500
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    :cond_5
    :goto_1
    return-void
.end method

.method private imeInputType()I
    .locals 4

    .line 705
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imePurpose:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    move v2, v1

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x12

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x81

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x61

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x21

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x11

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x2

    .line 727
    :goto_0
    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeHint:I

    and-int/lit16 v3, p0, 0x200

    if-eqz v3, :cond_0

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    :cond_0
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_2

    const v3, 0x8000

    or-int/2addr v2, v3

    :cond_2
    and-int/lit8 v3, p0, 0x4

    if-eqz v3, :cond_3

    or-int/lit16 v2, v2, 0x4000

    :cond_3
    and-int/lit8 v3, p0, 0x10

    if-eqz v3, :cond_4

    or-int/lit16 v2, v2, 0x1000

    :cond_4
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_5

    and-int/lit8 p0, v2, 0xf

    if-ne p0, v1, :cond_5

    const/16 p0, 0x8

    if-eq v0, p0, :cond_5

    and-int/lit16 p0, v2, -0xff1

    or-int/lit16 p0, p0, 0x80

    return p0

    :cond_5
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private imeOverlayMode()Z
    .locals 2

    .line 742
    const-string v0, "awl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/anlandnext/awl/AwlWindowActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ime_mode"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private initHiddenInput()V
    .locals 3

    .line 674
    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/anlandnext/awl/AwlWindowActivity$5;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 687
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 688
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 689
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    const v2, 0x3eb33333

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    const-string v2, "\u2328"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    const v2, 0x80000000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 690
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 691
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 692
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 693
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 694
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 695
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    const v1, 0x12000002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 698
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method private static isMouse(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1330
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    const/16 v0, 0x1002

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isTouchpad(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1348
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1349
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v2, 0x1002

    if-eq v0, v2, :cond_0

    .line 1350
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$applyTaskIconAsync$2(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->taskIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->applyTaskDescription()V

    return-void
.end method

.method private synthetic lambda$applyTaskIconAsync$3(J)V
    .locals 3

    const/4 v0, 0x2

    .line 516
    new-array v0, v0, [I

    .line 517
    invoke-static {p1, p2, v0}, Lcom/anlandnext/awl/AwlClient;->icon(J[I)[B

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 519
    aget v1, v0, v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    aget v0, v0, v2

    if-lez v0, :cond_0

    .line 521
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 523
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 525
    const-string v0, "anland-awlwin"

    const-string v1, "toplevel icon decode failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    :cond_0
    :goto_0
    new-instance p1, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda4;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$bindWindowId$0(Lcom/anlandnext/awl/Awl$HostCallbacks;Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V
    .locals 0

    .line 374
    invoke-interface {p0, p1, p2}, Lcom/anlandnext/awl/Awl$HostCallbacks;->onHostCreate(Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 478
    invoke-direct {p0, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->applyImeInset(Landroid/view/WindowInsets;)V

    return-object p2
.end method

.method static synthetic lambda$onDestroy$8(Lcom/anlandnext/awl/Awl$HostCallbacks;Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V
    .locals 0

    .line 1720
    invoke-interface {p0, p1, p2}, Lcom/anlandnext/awl/Awl$HostCallbacks;->onHostDestroy(Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$onPause$7(Lcom/anlandnext/awl/Awl$HostCallbacks;Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V
    .locals 0

    .line 639
    invoke-interface {p0, p1, p2}, Lcom/anlandnext/awl/Awl$HostCallbacks;->onHostPause(Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$onResume$6(Lcom/anlandnext/awl/Awl$HostCallbacks;Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V
    .locals 0

    .line 631
    invoke-interface {p0, p1, p2}, Lcom/anlandnext/awl/Awl$HostCallbacks;->onHostResume(Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$onStart$4(Lcom/anlandnext/awl/Awl$HostCallbacks;Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V
    .locals 0

    .line 607
    invoke-interface {p0, p1, p2}, Lcom/anlandnext/awl/Awl$HostCallbacks;->onHostStart(Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$onStop$5(Lcom/anlandnext/awl/Awl$HostCallbacks;Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V
    .locals 0

    .line 612
    invoke-interface {p0, p1, p2}, Lcom/anlandnext/awl/Awl$HostCallbacks;->onHostStop(Lcom/anlandnext/awl/Awl$WlWindow;Landroid/app/Activity;)V

    return-void
.end method

.method private limitRange(FFF)F
    .locals 0

    cmpg-float p0, p3, p1

    if-gez p0, :cond_0

    return p1

    :cond_0
    cmpl-float p0, p3, p2

    if-lez p0, :cond_1

    return p2

    :cond_1
    return p3
.end method

.method private notifyImeState()V
    .locals 13

    .line 819
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 820
    :cond_0
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->editorSelStart()I

    move-result v3

    .line 822
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 823
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    move v5, v0

    move v6, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    move v5, v1

    move v6, v5

    .line 827
    :goto_0
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    move v4, v3

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 828
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeRect:[I

    const/4 v2, 0x2

    aget v3, v1, v2

    if-lez v3, :cond_3

    const/4 v3, 0x3

    aget v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    if-eqz v1, :cond_3

    .line 833
    new-array v2, v2, [I

    .line 834
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    .line 835
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v4, 0x0

    .line 836
    aget v5, v2, v4

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 837
    new-instance v2, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 838
    invoke-virtual {v2, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object v7

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeRect:[I

    aget v2, v1, v4

    int-to-float v8, v2

    aget v2, v1, v6

    int-to-float v9, v2

    aget v1, v1, v3

    add-int v3, v2, v1

    int-to-float v10, v3

    add-int/2addr v2, v1

    int-to-float v11, v2

    const/4 v12, 0x1

    .line 839
    invoke-virtual/range {v7 .. v12}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object v1

    .line 843
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 844
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 845
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compCursor:I

    invoke-virtual {v1, v0, v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 848
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "win "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ": cursor anchor info rejected: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "anland-awlwin"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private onImeHide()V
    .locals 3

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ime hide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anland-awlwin"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 786
    iput-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeWanted:Z

    .line 787
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 788
    iget-object v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 791
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 792
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 793
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private onImeShow(II)V
    .locals 1

    const/4 v0, 0x1

    .line 756
    iput-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeWanted:Z

    .line 757
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeHint:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imePurpose:I

    if-eq p2, v0, :cond_1

    .line 758
    :cond_0
    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeHint:I

    .line 759
    iput p2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imePurpose:I

    .line 760
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->imeInputType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 762
    :cond_1
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->tryShowIme()V

    return-void
.end method

.method private onImeState(Ljava/lang/String;IIIIIIIII)V
    .locals 5

    .line 800
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeHint:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v0, :cond_1

    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imePurpose:I

    if-eq p5, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 801
    :goto_1
    const-string v3, ""

    if-nez p1, :cond_2

    move-object p1, v3

    :cond_2
    iput-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    .line 802
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v4, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/anlandnext/awl/AwlWindowActivity;->byteToChar(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    .line 803
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/anlandnext/awl/AwlWindowActivity;->byteToChar(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surAnchor:I

    .line 804
    iput p4, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeHint:I

    .line 805
    iput p5, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imePurpose:I

    .line 806
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeRect:[I

    aput p6, p1, v1

    aput p7, p1, v2

    const/4 p2, 0x2

    aput p8, p1, p2

    const/4 p2, 0x3

    aput p9, p1, p2

    and-int/lit8 p1, p10, 0x1

    if-eqz p1, :cond_4

    .line 808
    iput-object v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    .line 809
    iput v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compCursor:I

    .line 810
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 813
    iget-object p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->imeInputType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 814
    :cond_5
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->notifyImeState()V

    return-void
.end method

.method private padEnter(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v0, 0x1

    .line 1376
    iput-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->padInWin:Z

    .line 1377
    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->captureMode:I

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 1387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    .line 1388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    goto :goto_0

    .line 1379
    :cond_0
    iget p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    .line 1380
    :cond_1
    iget p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    goto :goto_0

    .line 1383
    :cond_2
    iget p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->confinex:F

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    .line 1384
    iget p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->confiney:F

    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    .line 1391
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    iget v4, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    iget v5, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    return-void
.end method

.method private static preeditCursorBytes(Ljava/lang/String;I)I
    .locals 5

    .line 910
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v2, p1

    .line 911
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v0, v1

    move v2, v0

    .line 913
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-ge v0, p1, :cond_3

    .line 914
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :cond_1
    const v4, 0xffff

    if-gt v3, v4, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    :goto_1
    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    .line 917
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    return v2
.end method

.method private pushClipboard()V
    .locals 3

    .line 585
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->readClipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/high16 v2, 0x40000

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_2
    sget-object v1, Lcom/anlandnext/awl/AwlWindowActivity;->sLastClipWritten:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/anlandnext/awl/AwlWindowActivity;->sLastClipPushed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 590
    :cond_3
    sput-object v0, Lcom/anlandnext/awl/AwlWindowActivity;->sLastClipPushed:Ljava/lang/String;

    .line 591
    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-static {v1, v2, v0}, Lcom/anlandnext/awl/AwlClient;->clipboard(JLjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private readClipText()Ljava/lang/String;
    .locals 4

    .line 568
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->clipMgr:Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 570
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 571
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 573
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "text/*"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    const/4 v2, 0x0

    .line 575
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 576
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 577
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_4
    :goto_0
    return-object v1

    .line 579
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "win "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": clipboard read denied"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "anland-awlwin"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private sendSurface(Landroid/view/SurfaceHolder;II)V
    .locals 8

    .line 538
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    iget-object v5, p0, Lcom/anlandnext/awl/AwlWindowActivity;->ctrl:Lcom/anlandnext/awl/AwlWindowActivity$CtrlBinder;

    iget-wide v6, p0, Lcom/anlandnext/awl/AwlWindowActivity;->host:J

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/anlandnext/awl/AwlClient;->surface(JIILandroid/view/Surface;Landroid/os/IBinder;J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 539
    :goto_0
    iput-boolean p2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->attached:Z

    .line 540
    iput v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    .line 541
    iput v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    if-nez p2, :cond_1

    .line 543
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "win "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " surface binder rc="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " -> finish"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "anland-awlwin"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->finish()V

    return-void

    .line 547
    :cond_1
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->applyTaskIconAsync()V

    return-void
.end method

.method private sendTouch(ILandroid/view/MotionEvent;I)V
    .locals 9

    .line 1568
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1569
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move v2, p1

    .line 1568
    invoke-static/range {v0 .. v8}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    return-void
.end method

.method private setPointerCaptureMode(IIIII)V
    .locals 4

    .line 1261
    iput p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->captureMode:I

    .line 1262
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->capRect:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v2, 0x2

    aput p4, v0, v2

    const/4 v3, 0x3

    aput p5, v0, v3

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_2

    .line 1265
    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confLoX()F

    move-result v1

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confHiX()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    .line 1266
    :goto_0
    iget v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confLoY()F

    move-result v2

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confHiY()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    .line 1267
    :goto_1
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confLoX()F

    move-result v0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confHiX()F

    move-result v3

    invoke-direct {p0, v0, v3, v1}, Lcom/anlandnext/awl/AwlWindowActivity;->limitRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->confinex:F

    .line 1268
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confLoY()F

    move-result v0

    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->confHiY()F

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->limitRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->confiney:F

    goto :goto_2

    :cond_2
    if-ne p1, v2, :cond_4

    .line 1271
    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseX:F

    .line 1272
    :cond_3
    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastMouseY:F

    .line 1274
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->applyPointerCapture()V

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": pointer capture mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " rect="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "anland-awlwin"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPointerHidden(Z)V
    .locals 3

    .line 1302
    iget-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->ptrHidden:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1303
    :cond_0
    iput-boolean p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->ptrHidden:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1304
    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1305
    :goto_0
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 1306
    :cond_2
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->root:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 1307
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": android pointer "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_4

    const-string p1, "hidden (client cursor)"

    goto :goto_1

    :cond_4
    const-string p1, "restored"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "anland-awlwin"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setupFullscreen()V
    .locals 3

    .line 489
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    .line 492
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 491
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    const/4 v1, 0x2

    .line 493
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v0, 0x3

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-void
.end method

.method private static snap(Ljava/lang/String;I)I
    .locals 1

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 952
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    .line 953
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    return p1
.end method

.method private static snapBack(Ljava/lang/String;I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 962
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    .line 963
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 964
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return p1
.end method

.method private static sumAxis(Landroid/view/MotionEvent;I)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 1482
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1483
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v3

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1484
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method private toSurroundingIndex(I)I
    .locals 2

    .line 875
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surCursor:I

    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->surText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt p1, v0, :cond_0

    return p1

    .line 877
    :cond_0
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->compText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private tryShowIme()V
    .locals 7

    .line 767
    iget-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeWanted:Z

    const-string v1, "win "

    const-string v2, "anland-awlwin"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 773
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 774
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 775
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    .line 779
    iget-object v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v3

    .line 780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": ime show requestFocus="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " showSoftInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    .line 781
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 780
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 768
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ime show deferred (wanted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeWanted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 769
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->hasWindowFocus()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 768
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static utf8Len(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 884
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 885
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const v3, 0xffff

    if-gt v2, v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    :goto_1
    add-int/2addr v1, v3

    .line 887
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    return v1
.end method

.method private writeClipboard(Ljava/lang/String;)V
    .locals 1

    .line 596
    sput-object p1, Lcom/anlandnext/awl/AwlWindowActivity;->sLastClipWritten:Ljava/lang/String;

    .line 597
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->clipMgr:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    return-void

    .line 598
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 599
    iget-object p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->clipMgr:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    return-void

    .line 599
    :cond_1
    const-string v0, "anland"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12

    .line 1668
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1669
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_9

    const/16 v1, 0x19

    if-eq v0, v1, :cond_9

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v1, 0x43

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 1673
    iget-boolean v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imeWanted:Z

    if-eqz v1, :cond_4

    .line 1674
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 1675
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->fallbackSc(I)I

    move-result v0

    :goto_0
    move v6, v0

    if-lez v6, :cond_3

    .line 1677
    iget-wide v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    const/16 v5, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v11}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    .line 1678
    iget-wide v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    :cond_3
    return v2

    .line 1683
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_5

    return v2

    .line 1685
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    if-nez v1, :cond_6

    .line 1686
    invoke-static {v0}, Lcom/anlandnext/awl/AwlWindowActivity;->fallbackSc(I)I

    move-result v1

    :cond_6
    move v6, v1

    if-lez v6, :cond_8

    .line 1688
    iget-wide v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    .line 1689
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_7

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    :goto_1
    move v9, p0

    const/4 v10, 0x0

    .line 1690
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    const/16 v5, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1688
    invoke-static/range {v3 .. v11}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    return v2

    .line 1693
    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1672
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    # ===== 补丁(输入桥)：触点在「⌨」按钮范围内时走正常分发，否则输入框永远收不到点击 =====
    :try_start_btn
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    if-eqz v6, :btn_done

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :btn_done

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-ltz v8, :btn_done

    iget v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-gtz v8, :btn_done

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-ltz v8, :btn_done

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-gtz v8, :btn_done

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :btn_done
    :try_end_btn
    .catch Ljava/lang/Exception; {:try_start_btn .. :try_end_btn} :catch_btn

    goto :btn_ok

    :catch_btn
    move-exception v5

    :btn_ok
    # ===== 补丁结束 =====

    .line 1520
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1521
    :cond_0
    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->isMouse(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 1522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1524
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->handleTouchpadScroll(Landroid/view/MotionEvent;)V

    return v4

    :cond_1
    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_2

    .line 1528
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->handleMouseEvent(Landroid/view/MotionEvent;)V

    return v4

    .line 1535
    :cond_2
    iget-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->padInWin:Z

    if-eqz v0, :cond_3

    .line 1536
    iget-wide v5, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 1537
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v7, 0xb

    const/4 v11, 0x0

    .line 1536
    invoke-static/range {v5 .. v13}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    .line 1538
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->endPadStream()V

    .line 1541
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v5, 0xb

    if-eqz v0, :cond_b

    const/16 v6, 0xd

    if-eq v0, v4, :cond_a

    const/4 v7, 0x2

    if-eq v0, v7, :cond_8

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 1563
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1553
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, v6, p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->sendTouch(ILandroid/view/MotionEvent;I)V

    return v4

    .line 1546
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, v5, p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->sendTouch(ILandroid/view/MotionEvent;I)V

    return v4

    .line 1559
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 1560
    iget-wide v5, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v7, 0xe

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v4

    .line 1549
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v3, v0, :cond_9

    const/16 v0, 0xc

    .line 1550
    invoke-direct {p0, v0, p1, v3}, Lcom/anlandnext/awl/AwlWindowActivity;->sendTouch(ILandroid/view/MotionEvent;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    return v4

    .line 1556
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, v6, p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->sendTouch(ILandroid/view/MotionEvent;I)V

    return v4

    .line 1543
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, v5, p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->sendTouch(ILandroid/view/MotionEvent;I)V

    return v4
.end method

.method protected final hostWindow(JLjava/lang/String;Lcom/anlandnext/awl/Awl$HostCallbacks;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 392
    invoke-direct/range {v0 .. v5}, Lcom/anlandnext/awl/AwlWindowActivity;->bindWindowId(JLjava/lang/String;Lcom/anlandnext/awl/Awl$HostCallbacks;Z)V

    return-void
.end method

.method protected onAwaitWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 397
    const-string v1, "anland-awlwin"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    # ===== 补丁(输入桥)：输入法弹出时不要缩放窗口。
    # 默认行为会把窗口按 IME 高度重排 → wayland surface 变小 → 画面被压成一条、下面全黑。
    # SOFT_INPUT_ADJUST_NOTHING(0x30) 让键盘直接盖在上面，画面保持原样。
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v9, 0x30

    invoke-virtual {v10, v9}, Landroid/view/Window;->setSoftInputMode(I)V
    # ===== 补丁结束 =====

    const/4 p1, 0x1

    .line 403
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 405
    const-string v2, "FEATURE_NO_TITLE (content already set by a subclass?)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    :goto_0
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 408
    const-class v0, Landroid/content/ClipboardManager;

    invoke-virtual {p0, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->clipMgr:Landroid/content/ClipboardManager;

    .line 416
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "id"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-ltz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/anlandnext/awl/AwlWindowActivity;->bindWindowId(JLjava/lang/String;Lcom/anlandnext/awl/Awl$HostCallbacks;Z)V

    goto :goto_1

    :cond_0
    move-object v5, p0

    .line 419
    invoke-virtual {v5}, Lcom/anlandnext/awl/AwlWindowActivity;->onAwaitWindow()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 422
    invoke-static {}, Lcom/anlandnext/awl/AwlClient;->available()Z

    move-result p0

    if-nez p0, :cond_1

    .line 423
    const-string p0, "await: daemon unreachable -> finish"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v5}, Lcom/anlandnext/awl/AwlWindowActivity;->finish()V

    return-void

    .line 427
    :cond_1
    const-string p0, "awaiting a wayland window (unbound)"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_1
    new-instance p0, Landroid/view/SurfaceView;

    invoke-direct {p0, v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p0, v5, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    .line 434
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 435
    iget-object p0, v5, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$3;

    invoke-direct {v0, v5}, Lcom/anlandnext/awl/AwlWindowActivity$3;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;)V

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 462
    invoke-direct {v5}, Lcom/anlandnext/awl/AwlWindowActivity;->initHiddenInput()V

    .line 468
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-lt p0, v0, :cond_2

    .line 469
    invoke-virtual {v5}, Lcom/anlandnext/awl/AwlWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 471
    :cond_2
    new-instance p0, Landroid/widget/FrameLayout;

    invoke-direct {p0, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p0, v5, Lcom/anlandnext/awl/AwlWindowActivity;->root:Landroid/widget/FrameLayout;

    .line 472
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 473
    iget-object p0, v5, Lcom/anlandnext/awl/AwlWindowActivity;->root:Landroid/widget/FrameLayout;

    iget-object v0, v5, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    iget-object p0, v5, Lcom/anlandnext/awl/AwlWindowActivity;->root:Landroid/widget/FrameLayout;

    iget-object v0, v5, Lcom/anlandnext/awl/AwlWindowActivity;->hiddenInput:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x60

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800055

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x18

    const/16 v3, 0xa0

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iget-object p0, v5, Lcom/anlandnext/awl/AwlWindowActivity;->root:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, v5}, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda0;-><init>(Lcom/anlandnext/awl/AwlWindowActivity;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 481
    iget-object p0, v5, Lcom/anlandnext/awl/AwlWindowActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p0}, Lcom/anlandnext/awl/AwlWindowActivity;->setContentView(Landroid/view/View;)V

    .line 483
    invoke-direct {v5}, Lcom/anlandnext/awl/AwlWindowActivity;->setupFullscreen()V

    return-void

    .line 429
    :cond_3
    invoke-virtual {v5}, Lcom/anlandnext/awl/AwlWindowActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1720
    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->fireHost(Lcom/anlandnext/awl/AwlWindowActivity$HostFire;)V

    .line 1721
    invoke-virtual {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {v0, v1}, Lcom/anlandnext/awl/Awl;->hostGone(J)V

    .line 1722
    :cond_0
    sget-object v0, Lcom/anlandnext/awl/AwlWindowActivity;->LIVE:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    iget-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->deathLinked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->daemonDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-static {v0}, Lcom/anlandnext/awl/AwlClient;->unmonitorDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1725
    iput-boolean v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->deathLinked:Z

    .line 1732
    :cond_1
    iput-boolean v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->attached:Z

    .line 1733
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1587
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1588
    :cond_0
    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->captureMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const v0, 0x100008

    .line 1589
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1590
    :goto_0
    invoke-static {p1}, Lcom/anlandnext/awl/AwlWindowActivity;->isMouse(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 1591
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1592
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    packed-switch v0, :pswitch_data_0

    .line 1647
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1644
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->handleMouseEvent(Landroid/view/MotionEvent;)V

    return v1

    .line 1615
    :pswitch_1
    iget p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->captureMode:I

    if-eqz p1, :cond_3

    return v1

    .line 1617
    :cond_3
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->endPadStream()V

    return v1

    .line 1605
    :pswitch_2
    iget-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->padInWin:Z

    if-eqz v0, :cond_4

    .line 1606
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->handleMouseEvent(Landroid/view/MotionEvent;)V

    return v1

    .line 1609
    :cond_4
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->padEnter(Landroid/view/MotionEvent;)V

    return v1

    .line 1620
    :pswitch_3
    iget-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->padInWin:Z

    if-nez v0, :cond_5

    .line 1621
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->padEnter(Landroid/view/MotionEvent;)V

    :cond_5
    const/16 v0, 0x33

    .line 1622
    invoke-static {p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->sumAxis(Landroid/view/MotionEvent;I)F

    move-result v6

    const/16 v0, 0x32

    .line 1623
    invoke-static {p1, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->sumAxis(Landroid/view/MotionEvent;I)F

    move-result v7

    const/4 v0, 0x0

    cmpl-float v2, v6, v0

    if-nez v2, :cond_b

    cmpl-float v2, v7, v0

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x9

    .line 1628
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v3, 0xa

    .line 1629
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    cmpl-float v3, v2, v0

    if-nez v3, :cond_7

    cmpl-float v3, v9, v0

    if-eqz v3, :cond_a

    .line 1636
    :cond_7
    iget v3, p0, Lcom/anlandnext/awl/AwlWindowActivity;->captureMode:I

    if-ne v3, v1, :cond_8

    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->confinex:F

    iget p1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->confiney:F

    :goto_1
    move v11, p1

    move v10, v0

    goto :goto_2

    :cond_8
    if-nez v3, :cond_9

    .line 1637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_1

    :cond_9
    move v10, v0

    move v11, v10

    .line 1638
    :goto_2
    iget-wide v4, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    neg-float v8, v2

    const/4 v12, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static/range {v4 .. v12}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    :cond_a
    return v1

    .line 1625
    :cond_b
    :goto_3
    iget-wide v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/anlandnext/awl/AwlClient;->input(JIIFFFFI)V

    return v1

    .line 1612
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->handleMouseEvent(Landroid/view/MotionEvent;)V

    return v1

    .line 1595
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 1596
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->handleTouchpadScroll(Landroid/view/MotionEvent;)V

    return v1

    .line 1599
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_f

    .line 1600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_e

    goto :goto_4

    .line 1602
    :cond_e
    invoke-direct {p0, p1}, Lcom/anlandnext/awl/AwlWindowActivity;->handleMouseEvent(Landroid/view/MotionEvent;)V

    :cond_f
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9

    .line 301
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 303
    const-string v0, "id"

    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 304
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/anlandnext/awl/AwlWindowActivity;->bindWindowId(JLjava/lang/String;Lcom/anlandnext/awl/Awl$HostCallbacks;Z)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 8

    .line 639
    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {p0, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->fireHost(Lcom/anlandnext/awl/AwlWindowActivity$HostFire;)V

    .line 640
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->clipMgr:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 641
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->clipListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 642
    invoke-direct/range {v2 .. v7}, Lcom/anlandnext/awl/AwlWindowActivity;->setPointerCaptureMode(IIIII)V

    .line 643
    iget-wide v0, v2, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-ltz p0, :cond_1

    invoke-direct {v2}, Lcom/anlandnext/awl/AwlWindowActivity;->endPadStream()V

    .line 647
    :cond_1
    iget-wide v0, v2, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    iget-wide v3, v2, Lcom/anlandnext/awl/AwlWindowActivity;->host:J

    invoke-static {v0, v1, v3, v4}, Lcom/anlandnext/awl/AwlClient;->pause(JJ)V

    const/4 p0, 0x0

    .line 648
    iput-boolean p0, v2, Lcom/anlandnext/awl/AwlWindowActivity;->attached:Z

    .line 649
    invoke-static {}, Lcom/anlandnext/awl/Awl;->release()V

    .line 650
    iget-object p0, v2, Lcom/anlandnext/awl/AwlWindowActivity;->winEvents:Lcom/anlandnext/awl/Awl$Callback;

    invoke-static {p0}, Lcom/anlandnext/awl/Awl;->unregisterCallback(Lcom/anlandnext/awl/Awl$Callback;)V

    .line 651
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "win "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v2, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " PAUSE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "anland-awlwin"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-super {v2}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 3

    .line 1289
    invoke-super {p0, p1}, Landroid/app/Activity;->onPointerCaptureChanged(Z)V

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": pointer capture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "granted"

    goto :goto_0

    :cond_0
    const-string p1, "lost"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " (mode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->captureMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "anland-awlwin"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 618
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 619
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->setupFullscreen()V

    .line 620
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->winEvents:Lcom/anlandnext/awl/Awl$Callback;

    invoke-static {v0}, Lcom/anlandnext/awl/Awl;->registerCallback(Lcom/anlandnext/awl/Awl$Callback;)V

    .line 621
    invoke-static {}, Lcom/anlandnext/awl/Awl;->acquire()V

    .line 622
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->clipMgr:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 623
    iget-object v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->clipListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 627
    :cond_0
    iget-boolean v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->attached:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 628
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    .line 629
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->sv:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastW:I

    iget v2, p0, Lcom/anlandnext/awl/AwlWindowActivity;->lastH:I

    invoke-direct {p0, v0, v1, v2}, Lcom/anlandnext/awl/AwlWindowActivity;->sendSurface(Landroid/view/SurfaceHolder;II)V

    .line 631
    :cond_1
    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p0, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->fireHost(Lcom/anlandnext/awl/AwlWindowActivity$HostFire;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " RESUME"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "anland-awlwin"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 606
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 607
    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->fireHost(Lcom/anlandnext/awl/AwlWindowActivity$HostFire;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 612
    new-instance v0, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/anlandnext/awl/AwlWindowActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Lcom/anlandnext/awl/AwlWindowActivity;->fireHost(Lcom/anlandnext/awl/AwlWindowActivity$HostFire;)V

    .line 613
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 657
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 658
    iget-wide v0, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    .line 659
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/anlandnext/awl/AwlClient;->focus(JZ)I

    if-eqz p1, :cond_1

    .line 661
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->tryShowIme()V

    .line 662
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->pushClipboard()V

    .line 663
    invoke-direct {p0}, Lcom/anlandnext/awl/AwlWindowActivity;->applyPointerCapture()V

    .line 665
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anlandnext/awl/AwlWindowActivity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " focus="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "anland-awlwin"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
