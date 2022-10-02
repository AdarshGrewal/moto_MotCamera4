.class public Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;
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
    name = "CaptureTypeGuardRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public mCaptureType:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;->mCaptureType:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p2

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p2, v1

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->access$2400(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v2

    .line 6
    invoke-static {p1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v3

    :goto_0
    const/4 v4, 0x1

    if-nez p1, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v4

    :goto_2
    if-nez p1, :cond_5

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAppBasedFrameStacking()Z

    move-result p1

    if-nez p1, :cond_5

    move v5, v1

    .line 12
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isIgnoringFocus()Z

    move-result p1

    if-eqz p1, :cond_6

    move v5, v1

    .line 13
    :cond_6
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 15
    check-cast p1, Ljava/lang/Long;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-eqz p1, :cond_7

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result p1

    if-eqz p1, :cond_7

    move v2, v1

    .line 18
    :cond_7
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-nez v0, :cond_9

    if-eqz p2, :cond_8

    if-nez v5, :cond_8

    .line 19
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    if-nez v5, :cond_9

    .line 20
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    .line 21
    :cond_9
    :goto_3
    sget-object p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture Type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SingleShotStates"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;->mCaptureType:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne p0, p1, :cond_a

    move v1, v4

    :cond_a
    return v1
.end method
