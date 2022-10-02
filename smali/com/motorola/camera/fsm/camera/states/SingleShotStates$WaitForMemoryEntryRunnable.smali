.class public Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SingleShotStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/SingleShotStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitForMemoryEntryRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object p3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleSessionRemosaicMode()Z

    move-result p0

    const-string v0, "QCFA_SHOT"

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    :cond_0
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 7
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaShotGuardRunnable;->isQcfaShotPossible(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_2

    goto :goto_4

    .line 10
    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    .line 11
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v2, p1

    :goto_1
    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBgService()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 13
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 14
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMultiframeBokeh(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move p0, v1

    goto :goto_3

    :cond_7
    :goto_2
    move p0, p1

    .line 15
    :goto_3
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "DETERMINATE_FG_PROCESSING_TIME"

    .line 16
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    :goto_4
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 18
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p2

    .line 19
    sget-object p3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p2, p3, :cond_9

    sget-object p3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p2, p3, :cond_8

    goto :goto_5

    :cond_8
    move p3, v1

    goto :goto_6

    :cond_9
    :goto_5
    move p3, p1

    .line 20
    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 21
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v2

    .line 22
    invoke-static {p2, v2}, Lcom/motorola/camera/IqConfigManager;->isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z

    move-result v2

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v3

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    move p1, v1

    :cond_b
    :goto_7
    if-nez p3, :cond_e

    if-nez v3, :cond_e

    if-eqz v0, :cond_c

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaEarlierReleaseShutter()Z

    move-result p3

    if-eqz p3, :cond_e

    :cond_c
    if-nez v2, :cond_e

    .line 26
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMultiframeBokeh(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result p2

    if-nez p2, :cond_e

    if-eqz p1, :cond_d

    goto :goto_8

    .line 27
    :cond_d
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;->FAST_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;

    goto :goto_9

    .line 28
    :cond_e
    :goto_8
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;->SLOW_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;

    :goto_9
    const-string p2, "CAPTURE_EXPERIENCE"

    .line 29
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
