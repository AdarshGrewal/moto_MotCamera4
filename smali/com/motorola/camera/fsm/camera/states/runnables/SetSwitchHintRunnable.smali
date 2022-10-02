.class public Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SetSwitchHintRunnable.java"


# instance fields
.field public mSet:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;->mSet:Z

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->POPUP_EARLY_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    invoke-static {p3, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 6
    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;->mSet:Z

    if-nez p0, :cond_1

    const-string p0, "0"

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object p0

    .line 8
    sget-object p2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-eq p0, p2, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "1"

    goto :goto_0

    :cond_3
    const-string p0, "2"

    .line 10
    :goto_0
    sget-object p2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 11
    sget-object p3, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 12
    new-instance v0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;

    invoke-direct {v0, p2, p0}, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;-><init>(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;Ljava/lang/String;)V

    .line 13
    iget-object p0, p3, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetSwitchHintRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
