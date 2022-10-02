.class public final Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsSetupRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "MultiShotStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/MultiShotStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MsSetupRunnable"
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->clearSaveQueueFull()V

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {p2, p1}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->access$500(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 8
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->CS_KEY_AVAILABLE_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p3

    .line 11
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 12
    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->P2_KEY_SUPPORT_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 15
    invoke-virtual {p2, p3, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    .line 16
    array-length p3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    aget v2, p0, v1

    if-ne v2, p1, :cond_1

    .line 17
    sput-boolean p1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkCshotSupport:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_2
    :goto_1
    array-length p0, p2

    :goto_2
    if-ge v0, p0, :cond_4

    aget p3, p2, v0

    if-ne p3, p1, :cond_3

    .line 19
    sput-boolean p1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkSpeedUpSupported:Z

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsSetupRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
