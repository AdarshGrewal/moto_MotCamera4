.class public Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "CameraModeSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeCreateCaptureRequests"
.end annotation


# instance fields
.field public mMasterListener:Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

.field public mSlaveListener:Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;


# direct methods
.method public constructor <init>()V
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
    new-instance p3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;-><init>(ZLcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mMasterListener:Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    .line 5
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p3

    .line 6
    invoke-virtual {p3, p2, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->createCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mMasterListener:Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    .line 10
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 11
    invoke-static {p3, p1, v1, v2}, Lcom/motorola/camera/device/CameraService;->createCaptureRequests(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    :cond_1
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;-><init>(ZLcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$1;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mSlaveListener:Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    .line 14
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->createCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraId()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraId()Ljava/lang/String;

    move-result-object p3

    .line 21
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mSlaveListener:Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    .line 22
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 23
    invoke-static {p3, p1, p0, v0}, Lcom/motorola/camera/device/CameraService;->createCaptureRequests(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 24
    :cond_4
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_PREVIEW_REQUESTS:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setStreamingRequests(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
