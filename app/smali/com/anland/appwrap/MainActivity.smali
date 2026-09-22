.class public final Lcom/anland/appwrap/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final BUF_MAX:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "appwrap"


# instance fields
.field private autoAttachBox:Landroid/widget/CheckBox;

.field private autoFlowDone:Z

.field private autostartPending:Z

.field private volatile busy:Z

.field private cfg:Lcom/anland/appwrap/AppCfg;

.field private chromeArgsEdit:Landroid/widget/EditText;

.field private conn:Ljava/io/FileDescriptor;

.field private ctrEdit:Landroid/widget/EditText;

.field private dispGroup:Landroid/widget/RadioGroup;

.field private dsEdit:Landroid/widget/EditText;

.field private envEdit:Landroid/widget/EditText;

.field private exeEdit:Landroid/widget/EditText;

.field private forceRelaunch:Z

.field private gpuBox:Landroid/widget/CheckBox;

.field private installAutoPending:Z

.field private lastUiFlush:J

.field private final logBuf:Ljava/lang/StringBuilder;

.field private logView:Landroid/widget/TextView;

.field private modeGroup:Landroid/widget/RadioGroup;

.field private panel:Landroid/widget/LinearLayout;

.field private perfGroup:Landroid/widget/RadioGroup;

.field private prepared:Z

.field private proc:Lcom/anlandnext/awl/Awl$ClientProcess;

.field private progress:Landroid/widget/ProgressBar;

.field private final relayKeep:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private relayVerboseBox:Landroid/widget/CheckBox;

.field private rootEdit:Landroid/widget/EditText;

.field private rtEdit:Landroid/widget/EditText;

.field private shProc:Ljava/lang/Process;

.field private statusView:Landroid/widget/TextView;

.field private twoStepBox:Landroid/widget/CheckBox;

.field private final ui:Landroid/os/Handler;

.field private uiFlushPending:Z

.field private urlEdit:Landroid/widget/EditText;

.field private userEdit:Landroid/widget/EditText;

.field private final wcb:Lcom/anlandnext/awl/Awl$Callback;


# direct methods
.method public static synthetic $r8$lambda$0-Zw_Fre_pVxnBExNOIH0G66rhM(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$launchChrootRelay$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$0mFBEHaZ_HeIwZKbPUKzdBfBsZI(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$handleIntentExtras$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$34Bu12aYJBc4IMYbsKtbWR5TAbY(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$installRootfs$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$3GqUrFxwKx0frJbMc6B8Kzhfh_U(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3a8ceEB_kKL6Pms39nWyTJc3UBQ(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$stop$35(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8FUtrNLm6s5p8YYwRY-M41K4ZWY(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$launchChrootRelay$33(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AbTP1FBfmw5oG2qoJbsYdM8mujE(Lcom/anland/appwrap/MainActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$10(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$CsfXVJdBko6OyknV4trQbvC9vzs(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$launch$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$Dwo4nhF61XX2ASf7WQ0iqYyFFk8(Lcom/anland/appwrap/MainActivity;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anland/appwrap/MainActivity;->lambda$pumpProcess$43(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DzKN5E-hMQARk7u1eJdMqvsgQSA(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EKfCl-X9nsPnOOem6BBTTCXdTlc(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ElnGve9bY4zpRwl3rE6q9jQjPTM(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$pumpProcess$42(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FncZCv01Q4ZK5HnOX4Qxn4Cm2qQ(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gn1iJiBHoaxPbag9gR3eGFpuYRc(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HqyWmFsOni5yCIcf2OTt4vDzeDo(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I6FrW-UICdKn1OVrwP71o2fTGwA(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IUQN5J29vq9AiCxJUULcafuwzEQ(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anland/appwrap/MainActivity;->lambda$pumpProcess$41(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N9bmF5e2WLlRNlRs3UVTU_NTzgg(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$launchInternal$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$QA-ZRfhpQGbl9RgXFLiZKVipauA(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$logLine$45(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QCDRQaFbMT4owI_ZgSTwK2Vfve4(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$remoteShell$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QZmoToLVIjqo23IheIjbDcA2YyQ(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QfeVFqV-SRZQTX83lAsmpSnF0UE(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T59mysAfyGy2tkljvsYARpKboIg(Lcom/anland/appwrap/MainActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$7(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T5vfnsePNY5QPyjZfbExW9M5gp4(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$wipeRootfs$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$VBR4BupwCKKvuexypPPEE4QnqnI(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anland/appwrap/MainActivity;->lambda$pump$38(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VD9qXrfTgoGzKsPrkamMNQ29pRE(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$pump$39(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxbJ4Yszg8Dixn2IZy5OtSJRL94(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->autoFlow()V

    return-void
.end method

.method public static synthetic $r8$lambda$YYXq6ZYDUcPn28cJ_IjDOYK7etw(Lcom/anland/appwrap/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$autoFlow$23(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YiExb_C7DS5mXNwFecEpDor9rwQ(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$remoteShell$3(Lcom/anland/appwrap/RootExec$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZazRxfyvX1oYNAEYjjE63ScquJo(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->attachAll()V

    return-void
.end method

.method public static synthetic $r8$lambda$_-Gm1ZTeUlsukOiqtzjLj74MZ6g(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_t-nuvbmdtAy3FxErhHeUxIt3A0(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aNTuRssOjJyyC2A91i3act5D1Kw(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$stop$34(Lcom/anland/appwrap/RootExec$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aStLPTiPzqVgY1fiqTd5aupbVNI(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cHbUFnhe3Sk6PslBDFoMQHQkabQ(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cQKQZpjNQGYIEZ7f9UClDOfZ7XY(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$wipeRootfs$25(Lcom/anland/appwrap/RootExec$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$coVlUO6UjcPfyRZi9aFLHCp9HOI(Lcom/anland/appwrap/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$buildUi$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dQSLJ8Dsn2Lw6ewgIR3ma94DSTQ(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->launchInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$lZmLzeMPOvWHI9aydbWky7EaM8s(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$selfTest$36(Lcom/anland/appwrap/RootExec$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mmRZV57xsLmxA6cp-DtKGeeQ5T4(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$installRootfs$21(Lcom/anland/appwrap/RootExec$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mpTShIk0FsGzv-QnFExjT6gIegw(Lcom/anland/appwrap/MainActivity;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anland/appwrap/MainActivity;->lambda$pump$40(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qfG9bRrflV5vtgcFwslyTB0sh9o(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$autoFlow$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$rSOX86CcIndFMpaa5X3wivpLfz8(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$launchInternal$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$tBCgDyxKxrCA_mYP_vbD-ZcUbNk(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->launch()V

    return-void
.end method

.method public static synthetic $r8$lambda$tkFBMUTDnhbkvEirUPdKfTJ2oKw(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$selfTest$37(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x80w0GnbdTislkGAGFn84_pKCV8(Lcom/anland/appwrap/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->lambda$onCreate$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpPR4VeL7z9XKAfGRsaBdFcCCnc(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$appendRaw$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$zCwPwTQolsuJHdecM9jEaITogJw(Lcom/anland/appwrap/MainActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anland/appwrap/MainActivity;->lambda$launchChrootRelay$32(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zwNcB8TOLyUdISEW1-8O1Qb-52M(Lcom/anland/appwrap/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->lambda$launch$27()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcfg(Lcom/anland/appwrap/MainActivity;)Lcom/anland/appwrap/AppCfg;
    .locals 0

    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstatusView(Lcom/anland/appwrap/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mattach(Lcom/anland/appwrap/MainActivity;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anland/appwrap/MainActivity;->attach(JLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogLine(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowProgress(Lcom/anland/appwrap/MainActivity;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anland/appwrap/MainActivity;->showProgress(ZZI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/anland/appwrap/MainActivity;->logBuf:Ljava/lang/StringBuilder;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anland/appwrap/MainActivity;->relayKeep:Ljava/util/List;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anland/appwrap/MainActivity;->ui:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/anland/appwrap/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$1;-><init>(Lcom/anland/appwrap/MainActivity;)V

    iput-object v0, p0, Lcom/anland/appwrap/MainActivity;->wcb:Lcom/anlandnext/awl/Awl$Callback;

    return-void
.end method

.method private addDisp(Landroid/widget/RadioGroup;Ljava/lang/String;I)V
    .locals 1

    .line 441
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    add-int/lit16 p3, p3, 0x3e8

    .line 443
    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setId(I)V

    .line 444
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addMode(Landroid/widget/RadioGroup;Ljava/lang/String;I)V
    .locals 1

    .line 434
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 435
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p3, p3, 0x1

    .line 436
    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setId(I)V

    .line 437
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPerf(Landroid/widget/RadioGroup;Ljava/lang/String;I)V
    .locals 1

    .line 449
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 450
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x2

    const/high16 p2, 0x41400000    # 12.0f

    .line 451
    invoke-virtual {v0, p0, p2}, Landroid/widget/RadioButton;->setTextSize(IF)V

    add-int/lit8 p3, p3, 0x64

    .line 452
    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setId(I)V

    .line 453
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;
    .locals 5

    .line 400
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 401
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 402
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 403
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 404
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    .line 405
    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v4, 0x68

    .line 406
    invoke-direct {p0, v4}, Lcom/anland/appwrap/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 407
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v2, p2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    const/4 p0, 0x1

    .line 411
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 412
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private declared-synchronized appendRaw(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/high16 v0, 0x10000

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 987
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 988
    iget-wide v2, p0, Lcom/anland/appwrap/MainActivity;->lastUiFlush:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    .line 989
    iput-wide v0, p0, Lcom/anland/appwrap/MainActivity;->lastUiFlush:J

    .line 990
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->logView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 991
    :cond_1
    iget-boolean p1, p0, Lcom/anland/appwrap/MainActivity;->uiFlushPending:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 992
    iput-boolean p1, p0, Lcom/anland/appwrap/MainActivity;->uiFlushPending:Z

    .line 993
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->ui:Landroid/os/Handler;

    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-wide/16 v1, 0x104

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private attach(JLjava/lang/String;)V
    .locals 3

    .line 876
    new-instance v0, Lcom/anland/appwrap/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$3;-><init>(Lcom/anland/appwrap/MainActivity;)V

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6302\u8f7d\u7a97\u53e3 id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 884
    invoke-static {p0, p1, p2, p3, v0}, Lcom/anlandnext/awl/Awl;->attachWindow(Landroid/content/Context;JLjava/lang/String;Lcom/anlandnext/awl/Awl$HostCallbacks;)V

    return-void
.end method

.method private attachAll()V
    .locals 4

    .line 869
    invoke-static {}, Lcom/anlandnext/awl/Awl;->getWindows()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 870
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 871
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anlandnext/awl/Awl$WlWindow;

    iget-boolean v2, v1, Lcom/anlandnext/awl/Awl$WlWindow;->attached:Z

    if-nez v2, :cond_1

    iget-wide v2, v1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    iget-object v1, v1, Lcom/anlandnext/awl/Awl$WlWindow;->title:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/anland/appwrap/MainActivity;->attach(JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    .line 870
    :cond_3
    :goto_1
    const-string v0, "\u6ca1\u6709\u7a97\u53e3\u53ef\u6302\u8f7d"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private autoFlow()V
    .locals 2

    .line 535
    iget-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->autostartPending:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u6536\u5230 autostart \u6307\u4ee4\uff0c\u4ea4\u7ed9\u5b83\u542f\u52a8"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v0, v0, Lcom/anland/appwrap/AppCfg;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u4e0d\u662f chroot \u6a21\u5f0f\uff08mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v1, v1, Lcom/anland/appwrap/AppCfg;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09\uff1a\u5c55\u5f00\u300c\u2699 \u8bbe\u7f6e/\u8bca\u65ad\u300d\u624b\u52a8\u542f\u52a8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void

    .line 540
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda35;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string p0, "autoflow"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private buildUi()V
    .locals 12

    .line 243
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 244
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 245
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0xc

    .line 246
    invoke-direct {p0, v3}, Lcom/anland/appwrap/MainActivity;->dp(I)I

    move-result v3

    .line 247
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 249
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->statusView:Landroid/widget/TextView;

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v5, 0x2

    .line 250
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 251
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 259
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    new-instance v6, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda49;

    invoke-direct {v6, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda49;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v7, "\u91cd\u65b0\u6253\u5f00"

    invoke-direct {p0, v7, v6}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    new-instance v6, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v7, "\u505c\u6b62"

    invoke-direct {p0, v7, v6}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 266
    const-string v6, "\u6027\u80fd\u6a21\u5f0f\uff08\u9009\u4e86\u4f1a\u81ea\u52a8\u91cd\u542f WPS \u751f\u6548\uff09:"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41400000    # 12.0f

    .line 267
    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 268
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->perfGroup:Landroid/widget/RadioGroup;

    .line 270
    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 271
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->perfGroup:Landroid/widget/RadioGroup;

    const-string v8, "\u6d41\u7545\uff080.4 \u500d + \u5173 GPU \u5408\u6210\uff0c\u63a8\u8350\uff09"

    invoke-direct {p0, v3, v8, v4}, Lcom/anland/appwrap/MainActivity;->addPerf(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 272
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->perfGroup:Landroid/widget/RadioGroup;

    const-string v8, "\u539f\u7248\uff080.6 \u500d\uff0c\u52a8\u753b\u7279\u6548\u7167\u65e7\uff09"

    invoke-direct {p0, v3, v8, v2}, Lcom/anland/appwrap/MainActivity;->addPerf(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 273
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->perfGroup:Landroid/widget/RadioGroup;

    iget-object v8, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v8, v8, Lcom/anland/appwrap/AppCfg;->perfMode:I

    add-int/lit8 v8, v8, 0x64

    invoke-virtual {v3, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 274
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->perfGroup:Landroid/widget/RadioGroup;

    new-instance v8, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v8, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/anland/appwrap/MainActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 287
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->perfGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 290
    new-instance v8, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v9, "\u5e94\u7528\u6b64\u6863\u4f4d\u5e76\u91cd\u542f WPS"

    invoke-direct {p0, v9, v8}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    .line 302
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 303
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v9, v9, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    const-string v10, "rootfs \u76ee\u5f55"

    invoke-direct {p0, v3, v10, v9}, Lcom/anland/appwrap/MainActivity;->addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->rootEdit:Landroid/widget/EditText;

    .line 307
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v9, v9, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    const-string v10, "WPS \u53c2\u6570"

    invoke-direct {p0, v3, v10, v9}, Lcom/anland/appwrap/MainActivity;->addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->chromeArgsEdit:Landroid/widget/EditText;

    .line 308
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v9, v9, Lcom/anland/appwrap/AppCfg;->url:Ljava/lang/String;

    const-string v10, "\u8d77\u59cb URL"

    invoke-direct {p0, v3, v10, v9}, Lcom/anland/appwrap/MainActivity;->addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->urlEdit:Landroid/widget/EditText;

    .line 309
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v9, v9, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    const-string v10, "\u989d\u5916\u73af\u5883\u53d8\u91cf"

    invoke-direct {p0, v3, v10, v9}, Lcom/anland/appwrap/MainActivity;->addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->envEdit:Landroid/widget/EditText;

    .line 312
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 314
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v9, v9, Lcom/anland/appwrap/AppCfg;->exe:Ljava/lang/String;

    const-string v10, "\u547d\u4ee4(\u5bb9\u5668/\u539f\u751f)"

    invoke-direct {p0, v3, v10, v9}, Lcom/anland/appwrap/MainActivity;->addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, p0, Lcom/anland/appwrap/MainActivity;->exeEdit:Landroid/widget/EditText;

    .line 316
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v9, v9, Lcom/anland/appwrap/AppCfg;->container:Ljava/lang/String;

    const-string v10, "\u5bb9\u5668\u540d"

    invoke-direct {p0, v3, v10, v9}, Lcom/anland/appwrap/MainActivity;->addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, p0, Lcom/anland/appwrap/MainActivity;->ctrEdit:Landroid/widget/EditText;

    .line 317
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v9, v9, Lcom/anland/appwrap/AppCfg;->user:Ljava/lang/String;

    const-string v10, "\u5bb9\u5668\u5185\u7528\u6237"

    invoke-direct {p0, v3, v10, v9}, Lcom/anland/appwrap/MainActivity;->addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, p0, Lcom/anland/appwrap/MainActivity;->userEdit:Landroid/widget/EditText;

    .line 318
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v9, v9, Lcom/anland/appwrap/AppCfg;->dsPath:Ljava/lang/String;

    const-string v10, "droidspaces"

    invoke-direct {p0, v3, v10, v9}, Lcom/anland/appwrap/MainActivity;->addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, p0, Lcom/anland/appwrap/MainActivity;->dsEdit:Landroid/widget/EditText;

    .line 319
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v9, v9, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    const-string v10, "\u5b88\u62a4\u8fdb\u7a0b runtime"

    invoke-direct {p0, v3, v10, v9}, Lcom/anland/appwrap/MainActivity;->addRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v9

    iput-object v9, p0, Lcom/anland/appwrap/MainActivity;->rtEdit:Landroid/widget/EditText;

    .line 321
    new-instance v9, Landroid/widget/RadioGroup;

    invoke-direct {v9, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/anland/appwrap/MainActivity;->modeGroup:Landroid/widget/RadioGroup;

    .line 322
    invoke-virtual {v9, v4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 323
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->modeGroup:Landroid/widget/RadioGroup;

    const-string v10, "chroot"

    const/4 v11, 0x3

    invoke-direct {p0, v9, v10, v11}, Lcom/anland/appwrap/MainActivity;->addMode(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 324
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->modeGroup:Landroid/widget/RadioGroup;

    const-string v10, "\u5bb9\u5668"

    invoke-direct {p0, v9, v10, v2}, Lcom/anland/appwrap/MainActivity;->addMode(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 325
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->modeGroup:Landroid/widget/RadioGroup;

    const-string v10, "\u539f\u751f"

    invoke-direct {p0, v9, v10, v4}, Lcom/anland/appwrap/MainActivity;->addMode(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 326
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->modeGroup:Landroid/widget/RadioGroup;

    const-string v10, "\u4ec5\u5bbf\u4e3b"

    invoke-direct {p0, v9, v10, v5}, Lcom/anland/appwrap/MainActivity;->addMode(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 327
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->modeGroup:Landroid/widget/RadioGroup;

    iget-object v10, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v10, v10, Lcom/anland/appwrap/AppCfg;->mode:I

    add-int/2addr v10, v2

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->check(I)V

    .line 328
    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/anland/appwrap/MainActivity;->modeGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    const-string v10, "\u753b\u9762\u540e\u7aef\uff08chroot \u6a21\u5f0f\uff09:"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v9, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 334
    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    new-instance v6, Landroid/widget/RadioGroup;

    invoke-direct {v6, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/anland/appwrap/MainActivity;->dispGroup:Landroid/widget/RadioGroup;

    .line 336
    invoke-virtual {v6, v4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 337
    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->dispGroup:Landroid/widget/RadioGroup;

    const-string v9, "wayland(relay)"

    invoke-direct {p0, v6, v9, v11}, Lcom/anland/appwrap/MainActivity;->addDisp(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 338
    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->dispGroup:Landroid/widget/RadioGroup;

    const-string v9, "x11(Xwayland)"

    invoke-direct {p0, v6, v9, v4}, Lcom/anland/appwrap/MainActivity;->addDisp(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 339
    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->dispGroup:Landroid/widget/RadioGroup;

    const-string v9, "wayland(fd)"

    invoke-direct {p0, v6, v9, v2}, Lcom/anland/appwrap/MainActivity;->addDisp(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 340
    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->dispGroup:Landroid/widget/RadioGroup;

    const-string v9, "wl-socket(root)"

    invoke-direct {p0, v6, v9, v5}, Lcom/anland/appwrap/MainActivity;->addDisp(Landroid/widget/RadioGroup;Ljava/lang/String;I)V

    .line 341
    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->dispGroup:Landroid/widget/RadioGroup;

    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v9, v9, Lcom/anland/appwrap/AppCfg;->display:I

    const/16 v10, 0x3e8

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 342
    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/anland/appwrap/MainActivity;->dispGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    const-string v9, "\u663e\u793a\u9ad8\u7ea7\u9879"

    invoke-direct {p0, v6, v9, v4}, Lcom/anland/appwrap/MainActivity;->check(Landroid/widget/LinearLayout;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v6

    .line 345
    new-instance v9, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v9, v3}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda10;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 347
    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-boolean v6, v6, Lcom/anland/appwrap/AppCfg;->autoAttach:Z

    const-string v9, "\u65b0\u7a97\u53e3\u81ea\u52a8\u6302\u8f7d"

    invoke-direct {p0, v3, v9, v6}, Lcom/anland/appwrap/MainActivity;->check(Landroid/widget/LinearLayout;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->autoAttachBox:Landroid/widget/CheckBox;

    .line 350
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-boolean v6, v6, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    const-string v9, "\u26a0 kgsl \u771f GPU\uff08\u4e0e Android \u62a2 GPU\uff0c\u5b9e\u6d4b\u4f1a\u628a SurfaceFlinger \u641e\u5d29\u2192\u8f6f\u91cd\u542f\uff09"

    invoke-direct {p0, v3, v9, v6}, Lcom/anland/appwrap/MainActivity;->check(Landroid/widget/LinearLayout;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->gpuBox:Landroid/widget/CheckBox;

    .line 351
    new-instance v6, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/anland/appwrap/MainActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 355
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    const-string v6, "\u4e24\u6b65\u89e3\u5305\uff08\u6392\u67e5 tar \u7ba1\u9053\u95ee\u9898\u65f6\u7528\uff09"

    invoke-direct {p0, v3, v6, v4}, Lcom/anland/appwrap/MainActivity;->check(Landroid/widget/LinearLayout;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->twoStepBox:Landroid/widget/CheckBox;

    .line 358
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-boolean v4, v4, Lcom/anland/appwrap/AppCfg;->relayVerbose:Z

    const-string v6, "\u4e2d\u7ee7 verbose \u65e5\u5fd7\uff08\u6392\u969c\u7528\uff0c\u4f1a\u62d6\u6162\uff09"

    invoke-direct {p0, v3, v6, v4}, Lcom/anland/appwrap/MainActivity;->check(Landroid/widget/LinearLayout;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->relayVerboseBox:Landroid/widget/CheckBox;

    .line 360
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 361
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v6, "\u4fdd\u5b58"

    invoke-direct {p0, v6, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v6, "\u5b89\u88c5 rootfs"

    invoke-direct {p0, v6, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v6, "\u542f\u52a8"

    invoke-direct {p0, v6, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/anland/appwrap/MainActivity;)V

    invoke-direct {p0, v7, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 368
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v6, "\u5237\u65b0\u7a97\u53e3"

    invoke-direct {p0, v6, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v6, "\u5168\u90e8\u6302\u8f7d"

    invoke-direct {p0, v6, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v6, "\u6e05\u7406 rootfs"

    invoke-direct {p0, v6, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v6, "\u81ea\u68c0"

    invoke-direct {p0, v6, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v6, "\u8dd1\u8fdc\u7a0b\u811a\u672c"

    invoke-direct {p0, v6, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    new-instance v4, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v6, "\u6e05\u65e5\u5fd7"

    invoke-direct {p0, v6, v4}, Lcom/anland/appwrap/MainActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    new-instance v3, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    const v6, 0x1010078

    invoke-direct {v3, p0, v4, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->progress:Landroid/widget/ProgressBar;

    .line 379
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 380
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 381
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 384
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/anland/appwrap/MainActivity;->logView:Landroid/widget/TextView;

    .line 385
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 386
    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->logView:Landroid/widget/TextView;

    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 387
    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->logView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 388
    iget-object v2, p0, Lcom/anland/appwrap/MainActivity;->logView:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v2, p0, Lcom/anland/appwrap/MainActivity;->panel:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0xf0

    .line 392
    invoke-direct {p0, v7}, Lcom/anland/appwrap/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 391
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    invoke-virtual {p0, v0}, Lcom/anland/appwrap/MainActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 1

    .line 419
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 420
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private check(Landroid/widget/LinearLayout;Ljava/lang/String;Z)Landroid/widget/CheckBox;
    .locals 1

    .line 426
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 429
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private dp(I)I
    .locals 0

    int-to-float p1, p1

    .line 1014
    invoke-virtual {p0}, Lcom/anland/appwrap/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private handleIntentExtras(Landroid/content/Intent;Z)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 133
    :cond_0
    const-string v0, "args"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iput-object v0, v1, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 135
    :cond_1
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iput-object v0, v1, Lcom/anland/appwrap/AppCfg;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 137
    :cond_2
    const-string v0, "env"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 139
    :cond_3
    const-string v0, "kgsl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 140
    :cond_4
    const-string v0, "rv"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/anland/appwrap/AppCfg;->relayVerbose:Z

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 144
    :cond_5
    const-string v0, "disp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v3, v1, Lcom/anland/appwrap/AppCfg;->display:I

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/anland/appwrap/AppCfg;->display:I

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 145
    :cond_6
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v3, v1, Lcom/anland/appwrap/AppCfg;->mode:I

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/anland/appwrap/AppCfg;->mode:I

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 147
    :cond_7
    const-string v0, "perf"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 148
    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v3, v1, Lcom/anland/appwrap/AppCfg;->perfMode:I

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/anland/appwrap/AppCfg;->perfMode:I

    .line 149
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0}, Lcom/anland/appwrap/AppCfg;->applyPreset()V

    .line 150
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 153
    :cond_8
    const-string v0, "root"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 154
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iput-object v0, v1, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 160
    :cond_9
    const-string v0, "sh"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, "shf"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_10

    if-eqz v1, :cond_a

    goto :goto_2

    .line 169
    :cond_a
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->syncUiFromCfg()V

    if-nez v0, :cond_b

    if-eqz v1, :cond_d

    :cond_b
    if-eqz v1, :cond_c

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "sh "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->remoteShell(Ljava/lang/String;)V

    .line 174
    :cond_d
    const-string v0, "autostart"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/anland/appwrap/MainActivity;->forceRelaunch:Z

    .line 180
    iput-boolean p1, p0, Lcom/anland/appwrap/MainActivity;->autostartPending:Z

    if-eqz p2, :cond_e

    .line 181
    const-string p1, "autostart\uff1a3 \u79d2\u540e\u81ea\u52a8\u300c\u4fdd\u5b58 + \u542f\u52a8\u300d"

    goto :goto_0

    .line 182
    :cond_e
    const-string p1, "autostart\uff08onNewIntent\uff09\uff1a3 \u79d2\u540e\u91cd\u65b0\u300c\u4fdd\u5b58 + \u542f\u52a8\u300d"

    .line 181
    :goto_0
    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->ui:Landroid/os/Handler;

    new-instance p2, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda39;

    invoke-direct {p2, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda39;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    :goto_1
    return-void

    .line 163
    :cond_10
    :goto_2
    const-string p1, "\u5ffd\u7565 --es sh/shf\uff1arelease \u5305\u91cc\u6ca1\u6709\u8fdc\u7a0b root \u547d\u4ee4\u94a9\u5b50\uff08\u7528 debug \u5305\u6392\u969c\uff09"

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->syncUiFromCfg()V

    return-void
.end method

.method private installRootfs()V
    .locals 2

    .line 491
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->saveCfg()V

    .line 492
    iget-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->busy:Z

    if-eqz v0, :cond_0

    const-string v0, "\u6b63\u5728\u5fd9\uff0c\u5148\u7b49\u4e00\u4f1a\u513f"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->toast(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->busy:Z

    const/4 v1, 0x0

    .line 494
    invoke-direct {p0, v0, v0, v1}, Lcom/anland/appwrap/MainActivity;->showProgress(ZZI)V

    .line 495
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda22;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string p0, "install-rootfs"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$appendRaw$44()V
    .locals 2

    const/4 v0, 0x0

    .line 994
    iput-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->uiFlushPending:Z

    .line 995
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anland/appwrap/MainActivity;->lastUiFlush:J

    .line 996
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->logView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$autoFlow$23(Z)V
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 544
    iget-boolean p1, p0, Lcom/anland/appwrap/MainActivity;->busy:Z

    if-eqz p1, :cond_0

    const-string p1, "\u6b63\u5728\u89e3\u5305\u4e2d\u2026"

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void

    .line 545
    :cond_0
    const-string p1, "\u9996\u6b21\u8fd0\u884c\uff1a\u5f00\u59cb\u89e3\u5305\u5185\u7f6e rootfs\uff08\u7ea6 500 MB\uff0c\u4e00\u5206\u949f\u5de6\u53f3\uff09"

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 546
    iput-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->installAutoPending:Z

    .line 547
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->installRootfs()V

    return-void

    .line 550
    :cond_1
    invoke-static {}, Lcom/anlandnext/awl/Awl;->getWindows()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 551
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 556
    invoke-static {}, Lcom/anland/appwrap/Launcher;->daemonHealthScript()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-static {v3, v4, v5}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v3

    .line 557
    iget-object v4, v3, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v5, "DAEMON-OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5b88\u62a4\u8fdb\u7a0b\u8fde\u63a5\u5df2\u8fc7\u671f\uff08"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09\u2192 \u91cd\u542f WPS \u800c\u4e0d\u662f\u6302\u65e7\u7a97\u53e3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 559
    iput-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->forceRelaunch:Z

    :cond_3
    if-eqz v2, :cond_4

    .line 562
    iget-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->forceRelaunch:Z

    if-nez v0, :cond_4

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u6709 WPS \u7a97\u53e3\uff08"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u4e2a\uff09\u2192 \u76f4\u63a5\u6302\u8f7d\u56de\u6765\uff0c\u4e0d\u91cd\u542f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 564
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->attachAll()V

    return-void

    .line 566
    :cond_4
    iput-boolean v1, p0, Lcom/anland/appwrap/MainActivity;->forceRelaunch:Z

    .line 567
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->launch()V

    return-void
.end method

.method private synthetic lambda$autoFlow$24()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {p0, v0}, Lcom/anland/appwrap/Rootfs;->installed(Landroid/content/Context;Lcom/anland/appwrap/AppCfg;)Z

    move-result v0

    .line 542
    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, v0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda29;-><init>(Lcom/anland/appwrap/MainActivity;Z)V

    invoke-virtual {p0, v1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buildUi$10(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 352
    const-string p1, "\u26a0 \u5df2\u5f00\u542f kgsl\uff1achroot \u91cc\u7684 Mesa \u4f1a\u548c Android \u7684 Adreno \u9a71\u52a8\u5171\u7528 GPU\uff0c\u5b9e\u6d4b\u5bfc\u81f4 SurfaceFlinger SIGABRT + \u8f6f\u91cd\u542f\u3002\u9664\u975e\u4f60\u5728\u505a\u5b9e\u9a8c\uff0c\u5426\u5219\u4e0d\u8981\u5f00\u3002"

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildUi$11(Landroid/view/View;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->saveCfg()V

    return-void
.end method

.method private synthetic lambda$buildUi$12(Landroid/view/View;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->installRootfs()V

    return-void
.end method

.method private synthetic lambda$buildUi$13(Landroid/view/View;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->launch()V

    return-void
.end method

.method private synthetic lambda$buildUi$14(Landroid/view/View;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->stop()V

    return-void
.end method

.method private synthetic lambda$buildUi$15(Landroid/view/View;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->refreshWindows()V

    return-void
.end method

.method private synthetic lambda$buildUi$16(Landroid/view/View;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->attachAll()V

    return-void
.end method

.method private synthetic lambda$buildUi$17(Landroid/view/View;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->wipeRootfs()V

    return-void
.end method

.method private synthetic lambda$buildUi$18(Landroid/view/View;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->selfTest()V

    return-void
.end method

.method private synthetic lambda$buildUi$19(Landroid/view/View;)V
    .locals 0

    .line 374
    const-string p1, "sh /data/local/tmp/appwrap-sh.sh"

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->remoteShell(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$buildUi$20(Landroid/view/View;)V
    .locals 1

    .line 375
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->logBuf:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->logView:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$buildUi$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lcom/anland/appwrap/MainActivity;->forceRelaunch:Z

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->autoFlow()V

    return-void
.end method

.method private synthetic lambda$buildUi$6(Landroid/view/View;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->stop()V

    return-void
.end method

.method private synthetic lambda$buildUi$7(Landroid/widget/RadioGroup;I)V
    .locals 1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x64

    .line 277
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget p1, p1, Lcom/anland/appwrap/AppCfg;->perfMode:I

    if-ne p2, p1, :cond_1

    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iput p2, p1, Lcom/anland/appwrap/AppCfg;->perfMode:I

    .line 279
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {p1}, Lcom/anland/appwrap/AppCfg;->applyPreset()V

    .line 280
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->syncUiFromCfg()V

    .line 281
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {p1, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u6027\u80fd\u6a21\u5f0f \u2192 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/anland/appwrap/AppCfg;->presetName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u53c2\u6570: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object p2, p2, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lcom/anland/appwrap/MainActivity;->forceRelaunch:Z

    .line 285
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->autoFlow()V

    return-void
.end method

.method private synthetic lambda$buildUi$8(Landroid/view/View;)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {p1}, Lcom/anland/appwrap/AppCfg;->applyPreset()V

    .line 292
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->syncUiFromCfg()V

    .line 293
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {p1, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5df2\u5e94\u7528\u6863\u4f4d\u300c"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v0, v0, Lcom/anland/appwrap/AppCfg;->perfMode:I

    invoke-static {v0}, Lcom/anland/appwrap/AppCfg;->presetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u300d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53c2\u6570: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v0, v0, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/anland/appwrap/MainActivity;->forceRelaunch:Z

    .line 297
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->autoFlow()V

    return-void
.end method

.method static synthetic lambda$buildUi$9(Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 346
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$handleIntentExtras$2()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->autostartPending:Z

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->saveCfg()V

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->launch()V

    return-void
.end method

.method private synthetic lambda$installRootfs$21(Lcom/anland/appwrap/RootExec$Result;)V
    .locals 3

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->busy:Z

    .line 510
    invoke-direct {p0, v0, v0, v0}, Lcom/anland/appwrap/MainActivity;->showProgress(ZZI)V

    .line 511
    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->statusView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-boolean v1, p1, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-eqz v1, :cond_0

    const-string v1, "rootfs \u5b89\u88c5\u5b8c\u6210 \u2713"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rootfs \u5b89\u88c5\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anland/appwrap/RootExec$Result;->why()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 513
    iget-boolean v1, p1, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->refreshWindows()V

    .line 515
    :cond_1
    iget-boolean p1, p1, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/anland/appwrap/MainActivity;->installAutoPending:Z

    if-eqz p1, :cond_2

    .line 516
    iput-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->installAutoPending:Z

    .line 517
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->ui:Landroid/os/Handler;

    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda23;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$installRootfs$22()V
    .locals 3

    .line 496
    new-instance v0, Lcom/anland/appwrap/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$2;-><init>(Lcom/anland/appwrap/MainActivity;)V

    .line 507
    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v2, p0, Lcom/anland/appwrap/MainActivity;->twoStepBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {p0, v1, v0, v2}, Lcom/anland/appwrap/Rootfs;->install(Landroid/content/Context;Lcom/anland/appwrap/AppCfg;Lcom/anland/appwrap/Rootfs$Progress;Z)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 508
    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, v0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda46;-><init>(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V

    invoke-virtual {p0, v1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$launch$27()V
    .locals 1

    .line 592
    invoke-static {}, Lcom/anlandnext/awl/Awl;->available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    const-string v0, "\u5b88\u62a4\u8fdb\u7a0b\u4ecd\u7136\u8d77\u4e0d\u6765\uff1a\u68c0\u67e5 anland-awl \u6a21\u5757 / \u91cd\u542f\u4e00\u6b21\u8bbe\u5907"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 596
    :cond_0
    const-string v0, "\u5b88\u62a4\u8fdb\u7a0b\u5df2\u5c31\u7eea"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->launchInternal()V

    return-void
.end method

.method private synthetic lambda$launch$28()V
    .locals 9

    .line 587
    invoke-static {}, Lcom/anland/appwrap/Launcher;->startDaemonScript()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x15f90

    invoke-static {v0, v1, v2}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 588
    iget-object v1, v0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 589
    :cond_1
    iget-object v0, v0, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v4, v1, :cond_3

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  ! "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x5dc

    .line 590
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :catch_0
    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda48;-><init>(Lcom/anland/appwrap/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$launchChrootRelay$31()V
    .locals 1

    .line 794
    const-string v0, "\u5957\u63a5\u5b57\u5728\u3001\u4f46\u4e2d\u7ee7\u8fdb\u7a0b\u5df2\u7ecf\u4e0d\u5728\u4e86 \u2014\u2014 \u4e2d\u7ee7\u542f\u52a8\u5931\u8d25\uff0c\u770b\u4e0a\u9762 [relay] \u7684\u8f93\u51fa"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$launchChrootRelay$32(ZLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4e2d\u7ee7\u5957\u63a5\u5b57 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " 8 \u79d2\u5185\u6ca1\u51fa\u73b0 \u2014\u2014 \u653e\u5f03\u542f\u52a8 WPS\uff08\u770b\u4e0a\u9762\u4e2d\u7ee7\u7684\u8f93\u51fa\uff09"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void

    .line 806
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4e2d\u7ee7\u5c31\u7eea: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 807
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->startChromeViaRelay()V

    return-void
.end method

.method private synthetic lambda$launchChrootRelay$33(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x28

    if-ge v0, v2, :cond_2

    if-nez v1, :cond_2

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ -S "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    invoke-static {p1}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ] && echo SOCK; pgrep libawlrelay.so >/dev/null 2>&1 && echo ALIVE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1388

    .line 786
    invoke-static {v2, v3, v4}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v2

    .line 789
    iget-object v3, v2, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v4, "SOCK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 790
    iget-object v2, v2, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v4, "ALIVE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 794
    new-instance p1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda40;

    invoke-direct {p1, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda40;-><init>(Lcom/anland/appwrap/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_1
    const-wide/16 v2, 0xc8

    .line 798
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    :catch_0
    :cond_2
    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, v1, p1}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda41;-><init>(Lcom/anland/appwrap/MainActivity;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$launchInternal$29()V
    .locals 1

    .line 618
    const-string v0, "rootfs \u8fd8\u6ca1\u88c5 \u2192 \u5148\u89e3\u5305\uff0c\u88c5\u5b8c\u81ea\u52a8\u542f\u52a8"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 619
    iput-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->installAutoPending:Z

    .line 620
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->installRootfs()V

    return-void
.end method

.method private synthetic lambda$launchInternal$30()V
    .locals 10

    .line 616
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {p0, v0}, Lcom/anland/appwrap/Rootfs;->installed(Landroid/content/Context;Lcom/anland/appwrap/AppCfg;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda44;-><init>(Lcom/anland/appwrap/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 626
    :cond_0
    invoke-static {}, Lcom/anlandnext/awl/Awl;->getWindows()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 627
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anlandnext/awl/Awl$WlWindow;

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5173\u95ed\u65e7\u7a97\u53e3 id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/anlandnext/awl/Awl$WlWindow;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 629
    iget-wide v1, v1, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-static {v1, v2}, Lcom/anlandnext/awl/Awl;->closeWindow(J)I

    goto :goto_0

    .line 631
    :cond_1
    invoke-static {}, Lcom/anland/appwrap/Launcher;->daemonHealthScript()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5b88\u62a4\u8fdb\u7a0b\u5065\u5eb7\u68c0\u67e5: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 633
    iget-object v0, v0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v1, "DAEMON-OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "  "

    const/4 v2, 0x0

    const-string v3, "\n"

    if-nez v0, :cond_4

    .line 636
    const-string v0, "\u2192 \u91cd\u542f\u5b88\u62a4\u8fdb\u7a0b\u4ee5\u62ff\u5230\u65b0\u7684 SurfaceControl \u8fde\u63a5"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 637
    invoke-static {}, Lcom/anland/appwrap/Launcher;->restartDaemonScript()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v4, 0x15f90

    invoke-static {v0, v4, v5}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 638
    iget-object v0, v0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x5dc

    .line 639
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :catch_0
    :cond_4
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v0, v0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/anland/appwrap/Launcher;->cleanupScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v4, 0xea60

    invoke-static {v0, v4, v5}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 642
    iget-boolean v6, v0, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-eqz v6, :cond_5

    const-string v0, "\u5df2\u6e05\u7406\u4e0a\u4e00\u6b21\u6b8b\u7559"

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6e05\u7406\u6b8b\u7559\u65f6: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anland/appwrap/RootExec$Result;->why()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 648
    const-string v0, "\u68c0\u67e5 GL \u8f6c\u53d1\u670d\u52a1\u7aef\uff08libglproxysrv\uff09\u2026"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    .line 650
    invoke-virtual {p0}, Lcom/anland/appwrap/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/anland/appwrap/Launcher;->glproxyStartScript(Lcom/anland/appwrap/AppCfg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0, v4, v5}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 652
    iget-object v4, v0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 653
    :cond_7
    iget-object v4, v0, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_4
    const-string v7, "  ! "

    if-ge v6, v5, :cond_9

    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 654
    :cond_9
    iget-object v4, v0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v5, "GLPROXY-OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v5, "GLPROXY-ALREADY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 655
    invoke-static {}, Lcom/anland/appwrap/Launcher;->glproxyHealthScript()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x4e20

    invoke-static {v4, v5, v6}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v4

    .line 656
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u26a0 GL \u8f6c\u53d1\u670d\u52a1\u7aef\u6ca1\u8d77\u6765\uff08"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/anland/appwrap/RootExec$Result;->why()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\uff09\u2192 GL \u4f1a\u9000\u56de SwiftShader\uff0c\u7ee7\u7eed\u542f\u52a8\uff08\u770b /data/local/tmp/glproxy.log\uff09"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 659
    :cond_a
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {v0}, Lcom/anland/appwrap/Launcher;->pulseEnsureScript(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v4, 0x2bf20

    invoke-static {v0, v4, v5}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 660
    iget-object v4, v0, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_5
    if-ge v6, v5, :cond_c

    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 661
    :cond_c
    iget-object v0, v0, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 662
    :cond_e
    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda45;-><init>(Lcom/anland/appwrap/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$logLine$45(Ljava/lang/String;)V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->logView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->appendRaw(Ljava/lang/String;)V

    .line 1004
    :cond_1
    const-string p0, "appwrap"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onCreate$0(Z)V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rootfs("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 104
    const-string p1, "\u5df2\u5b89\u88c5"

    goto :goto_0

    :cond_0
    const-string p1, "\u672a\u5b89\u88c5 \u2014\u2014 \u70b9\u300c\u5b89\u88c5 rootfs\u300d"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {p0, v0}, Lcom/anland/appwrap/Rootfs;->installed(Landroid/content/Context;Lcom/anland/appwrap/AppCfg;)Z

    move-result v0

    .line 103
    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/anland/appwrap/MainActivity;Z)V

    invoke-virtual {p0, v1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$pump$38(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->appendRaw(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$pump$39(Ljava/lang/String;)V
    .locals 2

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] \u6d41\u7ed3\u675f\uff08\u8fdb\u7a0b\u9000\u51fa\uff1f\uff09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$pump$40(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    .line 943
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x400

    .line 945
    :try_start_1
    new-array p1, p1, [C

    .line 947
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-lez v1, :cond_0

    .line 948
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 949
    const-string v1, "appwrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p2, v2}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda26;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 952
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 943
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 954
    :catch_0
    :goto_2
    new-instance p1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0, p2}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda27;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$pumpProcess$41(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->appendRaw(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$pumpProcess$42(Ljava/lang/String;)V
    .locals 2

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] \u6d41\u7ed3\u675f\uff08\u8fdb\u7a0b\u9000\u51fa\uff1f\uff09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$pumpProcess$43(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    .line 964
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x400

    .line 966
    :try_start_1
    new-array p1, p1, [C

    .line 968
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-lez v1, :cond_0

    .line 969
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 970
    const-string v1, "appwrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, p2, v2}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda37;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 973
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 964
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 975
    :catch_0
    :goto_2
    new-instance p1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda38;

    invoke-direct {p1, p0, p2}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda38;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$remoteShell$3(Lcom/anland/appwrap/RootExec$Result;)V
    .locals 8

    .line 218
    iget-object v0, p1, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p1, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  ! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8fdc\u7a0b\u547d\u4ee4\u7ed3\u675f exit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/anland/appwrap/RootExec$Result;->exit:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$remoteShell$4(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0xdbba0

    .line 216
    invoke-static {p1, v0, v1}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p1

    .line 217
    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda33;-><init>(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V

    invoke-virtual {p0, v0}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$selfTest$36(Lcom/anland/appwrap/RootExec$Result;)V
    .locals 8

    .line 923
    iget-object v0, p1, Lcom/anland/appwrap/RootExec$Result;->out:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 924
    :cond_1
    iget-object v0, p1, Lcom/anland/appwrap/RootExec$Result;->err:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  ! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 925
    :cond_3
    iget-boolean v0, p1, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  (\u811a\u672c\u9000\u51fa\u7801 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/anland/appwrap/RootExec$Result;->exit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anland/appwrap/RootExec$Result;->why()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 926
    :cond_4
    const-string p1, "---- \u81ea\u68c0\u7ed3\u675f ----"

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$selfTest$37(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x2bf20

    .line 921
    invoke-static {p1, v0, v1}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p1

    .line 922
    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda21;-><init>(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V

    invoke-virtual {p0, v0}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$stop$34(Lcom/anland/appwrap/RootExec$Result;)V
    .locals 2

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u505c\u6b62: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-eqz v1, :cond_0

    const-string p1, "\u5df2\u53d1\u9001"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/anland/appwrap/RootExec$Result;->why()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$stop$35(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0xea60

    .line 831
    invoke-static {p1, v0, v1}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    move-result-object p1

    .line 832
    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda32;-><init>(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V

    invoke-virtual {p0, v0}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$wipeRootfs$25(Lcom/anland/appwrap/RootExec$Result;)V
    .locals 2

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e05\u7406: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/anland/appwrap/RootExec$Result;->ok:Z

    if-eqz v1, :cond_0

    const-string p1, "\u5b8c\u6210"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/anland/appwrap/RootExec$Result;->why()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$wipeRootfs$26()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {p0, v0}, Lcom/anland/appwrap/Rootfs;->wipe(Landroid/content/Context;Lcom/anland/appwrap/AppCfg;)Lcom/anland/appwrap/RootExec$Result;

    move-result-object v0

    .line 576
    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda24;-><init>(Lcom/anland/appwrap/MainActivity;Lcom/anland/appwrap/RootExec$Result;)V

    invoke-virtual {p0, v1}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private launch()V
    .locals 2

    .line 581
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->saveCfg()V

    .line 584
    invoke-static {}, Lcom/anlandnext/awl/Awl;->available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    const-string v0, "\u5b88\u62a4\u8fdb\u7a0b\u4e0d\u53ef\u7528 \u2014\u2014 \u7528 root \u62c9\u8d77\u6765\uff08\u6a21\u5757\u76ee\u5f55\u91cc\u7684\u4e8c\u8fdb\u5236\u5728 App \u547d\u540d\u7a7a\u95f4\u91cc\u53ef\u6267\u884c\uff09"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda34;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string p0, "start-daemon"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 602
    :cond_0
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->launchInternal()V

    return-void
.end method

.method private launchChrootRelay(Ljava/io/FileDescriptor;)V
    .locals 12

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anland/appwrap/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libawlrelay.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 745
    invoke-static {}, Lcom/anlandnext/awl/Awl;->getWaylandFd()Ljava/io/FileDescriptor;

    move-result-object v6

    if-nez v6, :cond_0

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u9644\u52a0\u8fde\u63a5 getWaylandFd() \u5931\u8d25\uff08\u7b2c "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " \u6761\uff09"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    goto :goto_1

    .line 748
    :cond_0
    :try_start_0
    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 751
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 752
    sget v9, Landroid/system/OsConstants;->F_GETFD:I

    invoke-static {v8, v9, v2}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v9

    .line 753
    sget v10, Landroid/system/OsConstants;->FD_CLOEXEC:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_1

    .line 754
    sget v10, Landroid/system/OsConstants;->F_SETFD:I

    sget v11, Landroid/system/OsConstants;->FD_CLOEXEC:I

    not-int v11, v11

    and-int/2addr v9, v11

    invoke-static {v8, v10, v9}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    .line 756
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u9644\u52a0\u8fde\u63a5 fd "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u5df2\u6e05\u6389 CLOEXEC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 758
    :cond_1
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v8, p0, Lcom/anland/appwrap/MainActivity;->relayKeep:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 762
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u9644\u52a0\u8fde\u63a5 dup \u5931\u8d25: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 766
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0a\u6e38\u8fde\u63a5\u6570: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\uff08\u542b\u4e3b\u8fde\u63a5\uff09"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {v3}, Lcom/anland/appwrap/Launcher;->relaySockPath(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;

    move-result-object v3

    .line 770
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "rm -f "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x2710

    invoke-static {v3, v6, v7}, Lcom/anland/appwrap/RootExec;->run(Ljava/lang/String;J)Lcom/anland/appwrap/RootExec$Result;

    .line 772
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {v3, v0, v1}, Lcom/anland/appwrap/Launcher;->relayArgv(Lcom/anland/appwrap/AppCfg;Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u4e2d\u7ee7: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 774
    aget-object v1, v0, v2

    new-array v3, v4, [Ljava/lang/String;

    aget-object v6, v0, v5

    aput-object v6, v3, v2

    aget-object v0, v0, v4

    aput-object v0, v3, v5

    invoke-static {p1, v1, v3}, Lcom/anlandnext/awl/Awl;->spawnClient(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)Lcom/anlandnext/awl/Awl$ClientProcess;

    move-result-object p1

    if-nez p1, :cond_3

    .line 775
    const-string p1, "\u4e2d\u7ee7\u542f\u52a8\u5931\u8d25\uff08spawnClient \u8fd4\u56de null\uff09"

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void

    .line 776
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e2d\u7ee7\u5df2\u542f\u52a8 pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/anlandnext/awl/Awl$ClientProcess;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 777
    iget-object v0, p1, Lcom/anlandnext/awl/Awl$ClientProcess;->stdout:Landroid/os/ParcelFileDescriptor;

    const-string v1, "relay"

    invoke-direct {p0, v1, v0}, Lcom/anland/appwrap/MainActivity;->pump(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 778
    iget-object p1, p1, Lcom/anlandnext/awl/Awl$ClientProcess;->stderr:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1, p1}, Lcom/anland/appwrap/MainActivity;->pump(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 780
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {p1}, Lcom/anland/appwrap/Launcher;->relaySockPath(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;

    move-result-object p1

    .line 781
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    const-string p0, "relay-wait"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private launchInternal()V
    .locals 12

    .line 606
    invoke-static {}, Lcom/anlandnext/awl/Awl;->available()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5b88\u62a4\u8fdb\u7a0b\u4e0d\u53ef\u7528\uff1aanland-awl \u6a21\u5757\u6ca1\u88c5\u6216\u6ca1\u8d77\u6765"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v0, v0, Lcom/anland/appwrap/AppCfg;->mode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->prepared:Z

    if-nez v0, :cond_1

    .line 610
    iput-boolean v2, p0, Lcom/anland/appwrap/MainActivity;->prepared:Z

    .line 611
    const-string v0, "\u51c6\u5907\uff1a\u6e05\u7406\u4e0a\u6b21\u6b8b\u7559 + \u542f GL \u8f6c\u53d1\u670d\u52a1\u7aef + \u68c0\u67e5\u97f3\u9891 sink \u2026"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string p0, "prepare"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 666
    iput-boolean v0, p0, Lcom/anland/appwrap/MainActivity;->prepared:Z

    .line 667
    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v3, v3, Lcom/anland/appwrap/AppCfg;->mode:I

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-boolean v3, v3, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    if-eqz v3, :cond_2

    .line 668
    const-string v3, "\u26a0 kgsl=true\uff1achroot \u91cc\u7684 Mesa \u4f1a\u76f4\u8fde GPU\uff0c\u4e0e Android \u7684 Adreno \u9a71\u52a8\u5171\u7528 /dev/kgsl-3d0 \u2014\u2014 \u5b9e\u6d4b\u4f1a\u8ba9 SurfaceFlinger SIGABRT \u5e76\u8f6f\u91cd\u542f\uff0c\u98ce\u9669\u81ea\u8d1f"

    invoke-direct {p0, v3}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 671
    :cond_2
    invoke-static {}, Lcom/anlandnext/awl/Awl;->getWaylandFd()Ljava/io/FileDescriptor;

    move-result-object v3

    if-nez v3, :cond_3

    .line 672
    const-string v0, "getWaylandFd() \u5931\u8d25\uff08socketpair / T_CONNECT \u88ab\u62d2\uff09"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void

    .line 673
    :cond_3
    const-string v4, "wayland \u8fde\u63a5\u5df2\u5efa\u7acb\uff08\u672c\u8fdb\u7a0b\u521b\u5efa \u2192 \u5b88\u62a4\u8fdb\u7a0b\u8bb0\u7684 uid \u5c31\u662f\u6211\u4eec\uff09"

    invoke-direct {p0, v4}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 675
    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v4, v4, Lcom/anland/appwrap/AppCfg;->mode:I

    const-string v5, "\u5df2\u542f\u52a8 pid="

    const-string v6, "err"

    const-string v7, "out"

    if-eqz v4, :cond_c

    const-string v8, "spawnClient(su) \u5931\u8d25"

    const/4 v9, 0x2

    if-eq v4, v2, :cond_a

    if-eq v4, v1, :cond_4

    .line 720
    iput-object v3, p0, Lcom/anland/appwrap/MainActivity;->conn:Ljava/io/FileDescriptor;

    .line 721
    const-string v0, "\u4ec5\u5bbf\u4e3b\u6a21\u5f0f\uff1a\u8fde\u63a5\u5df2\u6301\u6709\uff0c\u8bf7\u81ea\u884c\u5728\u5916\u90e8\u542f\u52a8\u76ee\u6807\u7a0b\u5e8f\uff08\u5fc5\u987b\u7528\u8fd9\u6761\u8fde\u63a5\uff09"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 677
    :cond_4
    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v4, v4, Lcom/anland/appwrap/AppCfg;->display:I

    if-ne v4, v1, :cond_5

    .line 678
    invoke-direct {p0, v3}, Lcom/anland/appwrap/MainActivity;->launchChrootRelay(Ljava/io/FileDescriptor;)V

    goto/16 :goto_2

    .line 681
    :cond_5
    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {v1}, Lcom/anland/appwrap/Launcher;->chrootArgv(Lcom/anland/appwrap/AppCfg;)[Ljava/lang/String;

    move-result-object v1

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chroot \u2192 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v5, v5, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/usr/bin/wps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 683
    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v4, v4, Lcom/anland/appwrap/AppCfg;->display:I

    if-nez v4, :cond_6

    const-string v4, "x11(Xwayland)"

    goto :goto_0

    .line 684
    :cond_6
    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v4, v4, Lcom/anland/appwrap/AppCfg;->display:I

    if-ne v4, v2, :cond_7

    const-string v4, "wayland(fd)"

    goto :goto_0

    .line 685
    :cond_7
    const-string v4, "wayland \u5957\u63a5\u5b57(root \u8eab\u4efd)"

    :goto_0
    const-string v5, "\u753b\u9762\u540e\u7aef: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 683
    invoke-direct {p0, v4}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u53c2\u6570: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v5, v5, Lcom/anland/appwrap/AppCfg;->display:I

    .line 687
    iget-object v10, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    if-nez v5, :cond_8

    iget-object v5, v10, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    invoke-static {v5}, Lcom/anland/appwrap/Launcher;->x11Args(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_8
    iget-object v5, v10, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 686
    invoke-direct {p0, v4}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 688
    aget-object v4, v1, v0

    new-array v5, v9, [Ljava/lang/String;

    aget-object v10, v1, v2

    aput-object v10, v5, v0

    aget-object v0, v1, v9

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/anlandnext/awl/Awl;->spawnClient(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)Lcom/anlandnext/awl/Awl$ClientProcess;

    move-result-object v0

    if-nez v0, :cond_9

    .line 689
    invoke-direct {p0, v8}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void

    .line 690
    :cond_9
    iput-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WPS \u5df2\u542f\u52a8 pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 692
    iget-object v1, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stdout:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v7, v1}, Lcom/anland/appwrap/MainActivity;->pump(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 693
    iget-object v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stderr:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v6, v0}, Lcom/anland/appwrap/MainActivity;->pump(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_2

    .line 709
    :cond_a
    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->dsPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v4, v4, Lcom/anland/appwrap/AppCfg;->container:Ljava/lang/String;

    iget-object v10, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v10, v10, Lcom/anland/appwrap/AppCfg;->exe:Ljava/lang/String;

    iget-object v11, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v11, v11, Lcom/anland/appwrap/AppCfg;->user:Ljava/lang/String;

    invoke-static {v1, v4, v10, v11}, Lcom/anland/appwrap/Launcher;->containerArgv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "su -c "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v1, v9

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 711
    aget-object v4, v1, v0

    new-array v10, v9, [Ljava/lang/String;

    aget-object v11, v1, v2

    aput-object v11, v10, v0

    aget-object v0, v1, v9

    aput-object v0, v10, v2

    invoke-static {v3, v4, v10}, Lcom/anlandnext/awl/Awl;->spawnClient(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)Lcom/anlandnext/awl/Awl$ClientProcess;

    move-result-object v0

    if-nez v0, :cond_b

    .line 712
    invoke-direct {p0, v8}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void

    .line 713
    :cond_b
    iput-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 715
    iget-object v1, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stdout:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v7, v1}, Lcom/anland/appwrap/MainActivity;->pump(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 716
    iget-object v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stderr:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v6, v0}, Lcom/anland/appwrap/MainActivity;->pump(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2

    .line 697
    :cond_c
    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->exe:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/anland/appwrap/Launcher;->resolveExe(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 698
    iget-object v2, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v2, v2, Lcom/anland/appwrap/AppCfg;->args:Ljava/lang/String;

    invoke-static {v2}, Lcom/anland/appwrap/Launcher;->splitArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "exec "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 700
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/anlandnext/awl/Awl;->spawnClient(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)Lcom/anlandnext/awl/Awl$ClientProcess;

    move-result-object v0

    if-nez v0, :cond_d

    .line 701
    const-string v0, "spawnClient \u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void

    .line 702
    :cond_d
    iput-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 704
    iget-object v1, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stdout:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v7, v1}, Lcom/anland/appwrap/MainActivity;->pump(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 705
    iget-object v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stderr:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v6, v0}, Lcom/anland/appwrap/MainActivity;->pump(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 725
    :goto_2
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 1

    .line 1002
    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda36;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/anland/appwrap/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pump(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 941
    :cond_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 942
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v0, p1}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "appwrap-"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 956
    invoke-virtual {p2, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 957
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private pumpProcess(Ljava/lang/String;Ljava/lang/Process;)V
    .locals 2

    .line 962
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 963
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p2, p1}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda25;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "appwrap-"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 977
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 978
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshWindows()V
    .locals 6

    .line 858
    invoke-static {}, Lcom/anlandnext/awl/Awl;->getWindows()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 859
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->statusView:Landroid/widget/TextView;

    const-string v0, "\u7a97\u53e3: \u5b88\u62a4\u8fdb\u7a0b\u4e0d\u53ef\u7528"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 860
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7a97\u53e3 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 861
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anlandnext/awl/Awl$WlWindow;

    .line 862
    const-string v3, "\n  \u00b7 id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/anlandnext/awl/Awl$WlWindow;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 863
    iget-boolean v4, v2, Lcom/anlandnext/awl/Awl$WlWindow;->attached:Z

    if-eqz v4, :cond_1

    const-string v4, " [\u5df2\u6302\u8f7d]"

    goto :goto_1

    :cond_1
    const-string v4, " [\u672a\u6302\u8f7d]"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " title="

    .line 864
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/anlandnext/awl/Awl$WlWindow;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 865
    :cond_2
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private remoteShell(Ljava/lang/String;)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8fdc\u7a0b\u547d\u4ee4: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, p1}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda47;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    const-string p0, "remote-sh"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private saveCfg()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-virtual {v0, p0}, Lcom/anland/appwrap/AppCfg;->save(Landroid/content/Context;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u4fdd\u5b58: mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v1, v1, Lcom/anland/appwrap/AppCfg;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v1, v1, Lcom/anland/appwrap/AppCfg;->display:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " perf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v1, v1, Lcom/anland/appwrap/AppCfg;->perfMode:I

    .line 480
    invoke-static {v1}, Lcom/anland/appwrap/AppCfg;->presetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kgsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-boolean v1, v1, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " env=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private selectedDisp()I
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->dispGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    add-int/lit16 p0, p0, -0x3e8

    return p0
.end method

.method private selectedMode()I
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->modeGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private selfTest()V
    .locals 3

    .line 888
    const-string v0, "---- \u81ea\u68c0 ----"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "binder anland.host: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anlandnext/awl/Awl;->available()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 890
    invoke-static {}, Lcom/anlandnext/awl/Awl;->getWaylandFd()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 891
    const-string v1, "OK"

    goto :goto_0

    :cond_0
    const-string v1, "\u5931\u8d25"

    :goto_0
    const-string v2, "getWaylandFd(): "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 892
    :try_start_0
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :catch_0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "assets/rootfs.tar.xz \u957f\u5ea6: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/anland/appwrap/Rootfs;->assetLength(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v0, v0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/anland/appwrap/Rootfs;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\necho \'--- root \u8eab\u4efd ---\'; id\necho \'--- rootfs \u5173\u952e\u6587\u4ef6 ---\'\nls -l \"$R/usr/bin/wps\" 2>&1\nls -l \"$R/lib/ld-linux-aarch64.so.1\" 2>&1\necho \'--- \u6302\u8f7d ---\'\nmkdir -p \"$R/proc\" \"$R/sys\" \"$R/dev/shm\" \"$R/tmp\" 2>/dev/null\ngrep -q \" $R/proc \" /proc/mounts || { mount -t proc proc \"$R/proc\" || mount --bind /proc \"$R/proc\"; } 2>&1\ngrep -q \" $R/sys \" /proc/mounts || { mount -t sysfs sysfs \"$R/sys\" || mount --bind /sys \"$R/sys\"; } 2>&1\ngrep -q \" $R/dev \" /proc/mounts || mount --bind /dev \"$R/dev\" 2>&1\ngrep -q \" $R/dev/shm \" /proc/mounts || mount -t tmpfs -o mode=1777,size=512m tmpfs \"$R/dev/shm\" 2>&1\necho \'--- chroot \u5185\u9a8c\u8bc1 ---\'\nchroot \"$R\" /bin/sh -c \'echo sh-ok; uname -m\' 2>&1\nchroot \"$R\" /usr/lib/aarch64-linux-gnu/ld-linux-aarch64.so.1 --version 2>&1 | head -1\nchroot \"$R\" /usr/bin/wps --no-sandbox --version 2>&1 | head -3\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 920
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda43;

    invoke-direct {v2, p0, v0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda43;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    const-string p0, "selftest"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 928
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showProgress(ZZI)V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->progress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 935
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    if-nez p2, :cond_1

    .line 936
    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method private startChromeViaRelay()V
    .locals 5

    .line 815
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-c"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    invoke-static {v2}, Lcom/anland/appwrap/Launcher;->chrootScript(Lcom/anland/appwrap/AppCfg;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 817
    iput-object v0, p0, Lcom/anland/appwrap/MainActivity;->shProc:Ljava/lang/Process;

    .line 818
    const-string v1, "WPS \u5df2\u542f\u52a8\uff08\u7ecf\u4e2d\u7ee7\uff0c\u65e0 fd\uff09"

    invoke-direct {p0, v1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 819
    const-string v1, "wps"

    invoke-direct {p0, v1, v0}, Lcom/anland/appwrap/MainActivity;->pumpProcess(Ljava/lang/String;Ljava/lang/Process;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u542f\u52a8 WPS \u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private stop()V
    .locals 3

    .line 828
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/anland/appwrap/AppCfg;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v0, v0, Lcom/anland/appwrap/AppCfg;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v0, v0, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/anland/appwrap/Launcher;->stopAllScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0, v0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda42;-><init>(Lcom/anland/appwrap/MainActivity;Ljava/lang/String;)V

    const-string v0, "stop-wps"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 833
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->shProc:Ljava/lang/Process;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 836
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 837
    iput-object v1, p0, Lcom/anland/appwrap/MainActivity;->shProc:Ljava/lang/Process;

    .line 839
    :cond_2
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    if-eqz v0, :cond_6

    .line 841
    :try_start_0
    iget-object v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stdin:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    iget-object v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stdin:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    iget-object v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stdout:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    iget-object v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stdout:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 843
    :cond_4
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    iget-object v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stderr:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    iget-object v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->stderr:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :catch_0
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    iget v0, v0, Lcom/anlandnext/awl/Awl$ClientProcess;->pid:I

    const/16 v2, 0xf

    invoke-static {v0, v2}, Landroid/system/Os;->kill(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 846
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u7ed3\u675f pid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    iget v2, v2, Lcom/anlandnext/awl/Awl$ClientProcess;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 847
    iput-object v1, p0, Lcom/anland/appwrap/MainActivity;->proc:Lcom/anlandnext/awl/Awl$ClientProcess;

    .line 849
    :cond_6
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->conn:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    .line 850
    :try_start_2
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 851
    :catch_2
    iput-object v1, p0, Lcom/anland/appwrap/MainActivity;->conn:Ljava/io/FileDescriptor;

    .line 852
    const-string v0, "\u5df2\u5173\u95ed\u6211\u4eec\u6301\u6709\u7684\u8fde\u63a5"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 854
    :cond_7
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->refreshWindows()V

    return-void
.end method

.method private syncUiFromCfg()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->rootEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->rootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->chromeArgsEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->chromeArgs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->urlEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->envEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->envExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->exeEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->exe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->ctrEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->container:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->userEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->dsEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->dsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->rtEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-object v1, v1, Lcom/anland/appwrap/AppCfg;->runtimeDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->autoAttachBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-boolean v1, v1, Lcom/anland/appwrap/AppCfg;->autoAttach:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->gpuBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-boolean v1, v1, Lcom/anland/appwrap/AppCfg;->kgsl:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->relayVerboseBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget-boolean v1, v1, Lcom/anland/appwrap/AppCfg;->relayVerbose:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->modeGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v1, v1, Lcom/anland/appwrap/AppCfg;->mode:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 208
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->dispGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget v1, v1, Lcom/anland/appwrap/AppCfg;->display:I

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 209
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->perfGroup:Landroid/widget/RadioGroup;

    iget-object p0, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    iget p0, p0, Lcom/anland/appwrap/AppCfg;->perfMode:I

    add-int/lit8 p0, p0, 0x64

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method private static text(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 485
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 486
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1009
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1010
    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method private wipeRootfs()V
    .locals 2

    .line 573
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->saveCfg()V

    .line 574
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda28;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string p0, "wipe-rootfs"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {p0}, Lcom/anland/appwrap/AppCfg;->load(Landroid/content/Context;)Lcom/anland/appwrap/AppCfg;

    move-result-object p1

    iput-object p1, p0, Lcom/anland/appwrap/MainActivity;->cfg:Lcom/anland/appwrap/AppCfg;

    .line 98
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->buildUi()V

    .line 99
    invoke-static {}, Lcom/anlandnext/awl/Awl;->available()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u53ef\u7528 (anland.host)"

    goto :goto_0

    :cond_0
    const-string p1, "\u4e0d\u53ef\u7528 \u2014\u2014 anland-awl \u6a21\u5757\u88c5\u4e86\u5417\uff1f"

    :goto_0
    const-string v0, "\u5b88\u62a4\u8fdb\u7a0b: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/anland/appwrap/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/anland/appwrap/MainActivity;->handleIntentExtras(Landroid/content/Intent;Z)V

    .line 101
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda30;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-string v1, "check-rootfs"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 109
    iget-object p1, p0, Lcom/anland/appwrap/MainActivity;->ui:Landroid/os/Handler;

    new-instance v0, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lcom/anland/appwrap/MainActivity$$ExternalSyntheticLambda31;-><init>(Lcom/anland/appwrap/MainActivity;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/anland/appwrap/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 116
    const-string v0, "onNewIntent\uff1a\u6536\u5230\u65b0\u7684 adb \u6307\u4ee4"

    invoke-direct {p0, v0}, Lcom/anland/appwrap/MainActivity;->logLine(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/anland/appwrap/MainActivity;->handleIntentExtras(Landroid/content/Intent;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    # 补丁(A)：不再注销窗口回调。
    # 原来 onPause 里 unregisterCallback(wcb) 会让 MainActivity 暂停期间
    # 新出现的 toplevel（例如 WPS 点「新建」后开的文档窗口）没人挂载 → 界面看着卡死。
    # 现在回调常驻，窗口创建即自动挂载。
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    iget-object v0, p0, Lcom/anland/appwrap/MainActivity;->wcb:Lcom/anlandnext/awl/Awl$Callback;

    invoke-static {v0}, Lcom/anlandnext/awl/Awl;->registerCallback(Lcom/anlandnext/awl/Awl$Callback;)V

    .line 228
    invoke-static {}, Lcom/anlandnext/awl/Awl;->ensureSubscribed()V

    .line 229
    invoke-direct {p0}, Lcom/anland/appwrap/MainActivity;->refreshWindows()V

    return-void
.end method
