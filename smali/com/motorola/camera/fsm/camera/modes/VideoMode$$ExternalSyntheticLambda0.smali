.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/VideoMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_THERMAL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RECORD:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 9
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 14
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    .line 17
    :cond_2
    :goto_0
    sget-object p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RESOLUTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 18
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->disableValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 19
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->disableValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    .line 21
    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 23
    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->enableValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 24
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->enableValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method
