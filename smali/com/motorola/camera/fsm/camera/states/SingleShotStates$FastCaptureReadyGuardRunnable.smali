.class public Lcom/motorola/camera/fsm/camera/states/SingleShotStates$FastCaptureReadyGuardRunnable;
.super Ljava/lang/Object;
.source "SingleShotStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/SingleShotStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastCaptureReadyGuardRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p2

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p2

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$FastCaptureReadyGuardRunnable;->isAfFocused(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$FastCaptureReadyGuardRunnable;->isAeConverged(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$FastCaptureReadyGuardRunnable;->isAfFocused(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$FastCaptureReadyGuardRunnable;->isAeConverged(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v0

    :cond_1
    and-int p0, v2, v1

    move v1, p0

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final isAeConverged(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    if-eqz p2, :cond_0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public final isAfFocused(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    if-eqz p2, :cond_0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->getAfState(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method
