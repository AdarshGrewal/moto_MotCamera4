.class public Lcom/motorola/camera/IqConfigManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "IqConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/IqConfigManager$CaliValidation;,
        Lcom/motorola/camera/IqConfigManager$TimeEstimates;,
        Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;,
        Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;,
        Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;,
        Lcom/motorola/camera/IqConfigManager$ZslSetting;,
        Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;,
        Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;,
        Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

.field public static sInstance:Lcom/motorola/camera/IqConfigManager;


# instance fields
.field public final mAutoSlowCapture:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCaliValidations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$CaliValidation;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

.field public final mEnvironmentInfoMutex:Ljava/lang/Object;

.field public mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

.field public mHasSceneOverrides:Z

.field public mLastExposureTime:F

.field public mLastLux:F

.field public mLastLuxIdx:F

.field public mMfnrShutterDelayEnable:Z

.field public final mMtkMfnrSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mQcMfnrSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSceneOverrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mStaticExpScheduleHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;",
            ">;"
        }
    .end annotation
.end field

.field public final mTimeEstimates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$TimeEstimates;",
            ">;"
        }
    .end annotation
.end field

.field public final mZslSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$ZslSetting;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/IqConfigManager$1;

    invoke-direct {v0}, Lcom/motorola/camera/IqConfigManager$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->CAMERA_FACING_MAPPING:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mCaliValidations:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/IqConfigManager;->mMfnrShutterDelayEnable:Z

    .line 13
    new-instance v0, Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-direct {v0}, Lcom/motorola/camera/LowLightExposureTableTracker;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    .line 14
    new-instance v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/IqConfigManager;)V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/IqConfigManager;
    .locals 2

    const-class v0, Lcom/motorola/camera/IqConfigManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/motorola/camera/IqConfigManager;

    invoke-direct {v1}, Lcom/motorola/camera/IqConfigManager;-><init>()V

    sput-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string v0, "flash"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x6

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string v0, "bokeh"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x12

    .line 6
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string v0, "single_bokeh"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x23

    .line 9
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string/jumbo v0, "ultra_resolution"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_0

    :cond_4
    const/16 p1, 0x10

    .line 12
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string v0, "cutout"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return-object p0

    .line 14
    :cond_5
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_0

    .line 15
    :cond_6
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, p1, :cond_8

    .line 16
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string/jumbo v0, "super_night"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return-object p0

    .line 17
    :cond_7
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    if-eqz p1, :cond_e

    .line 18
    iget-object v0, p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v0, v1, :cond_e

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvCapable()Z

    move-result v0

    if-nez v0, :cond_e

    return-object p0

    .line 20
    :cond_8
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, p1, :cond_a

    .line 21
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string/jumbo v0, "super_portrait"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-object p0

    .line 22
    :cond_9
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    if-eqz p1, :cond_e

    .line 23
    iget-object v0, p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v0, v1, :cond_e

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvCapable()Z

    move-result v0

    if-nez v0, :cond_e

    return-object p0

    .line 25
    :cond_a
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 27
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 29
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string v0, "hdr_auto_on"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 30
    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_0

    .line 31
    :cond_b
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string v0, "hdr_auto_off"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 32
    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_0

    .line 33
    :cond_c
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string v0, "hdr_on"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 34
    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_0

    .line 35
    :cond_d
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    const-string v0, "hdr_off"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 36
    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_e
    :goto_0
    if-nez p1, :cond_f

    return-object p0

    .line 37
    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 38
    iget-object p0, p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->frontCameraSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object p0

    .line 39
    :cond_10
    iget-object p0, p1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object p0
.end method

.method public static getLuxStdForCaptureResult(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Float;
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MASTER_SENSOR_NAME:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isBackLogicalDepthCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 7
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    .line 10
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 11
    sget-object v2, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;->getLuxStdForIdx(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 13
    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static getMtkMfnrEstimate()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/List;

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;->estimate:I

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public static getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I
    .locals 1

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_NUMBER_OF_FRAMES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_NUMBER_OF_FRAMES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "flash"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "front_default"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    :goto_0
    return-object p0
.end method

.method public static getSettingFromList(Ljava/util/List;F)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;",
            ">(",
            "Ljava/util/List<",
            "TT;>;F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    div-float/2addr v3, v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->getManualUwMappingUIZoomX(F)F

    move-result v3

    .line 8
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    .line 9
    invoke-virtual {v1, v3, p1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->fitsParameters(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_4
    return-object v0
.end method

.method public static getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastLux:F

    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromList(Ljava/util/List;F)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    return-object p0
.end method

.method public static isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->scenes:Ljava/util/List;

    .line 7
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getMtkMfnrEstimate()I

    move-result p0

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 12
    iget-byte p1, p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    iget-boolean p0, p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->mfnrBurstModeEnable:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/IqConfigManager;->mfnrProcessTimeEstimates(IZ)I

    move-result p0

    goto :goto_0

    :cond_2
    const p0, 0x7fffffff

    .line 13
    :goto_0
    iget p1, v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->timeThreshold:I

    if-lt p0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isQcMfnrBurstEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_BURST_FPS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isQcMfnrEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mfnrLowLightExposureHint()F
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-virtual {v2}, Lcom/motorola/camera/LowLightExposureTableTracker;->supportsCharacteristicsExposureHints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/LowLightExposureTableTracker;->getExpectedExposureTime()F

    move-result v0

    monitor-exit v1

    return v0

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    invoke-static {v2, v3}, Lcom/motorola/camera/IqConfigManager;->getSettingFromList(Ljava/util/List;F)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;

    if-eqz v2, :cond_1

    .line 8
    iget-boolean v3, v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->codeOverride:Z

    if-nez v3, :cond_1

    .line 9
    iget v0, v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->exposureTime:F

    monitor-exit v1

    return v0

    .line 10
    :cond_1
    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastExposureTime:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static mfnrProcessTimeEstimates(IZ)I
    .locals 6

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->mfnrLowLightExposureHint()F

    move-result v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    iget v2, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->maxPreviewExp:I

    .line 4
    iget v3, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crSlope:F

    float-to-double v3, v3

    .line 5
    iget v5, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crIntercept:F

    .line 6
    iget v1, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->defaultCRTime:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x50

    const-wide v3, 0x3ff3851eb851eb85L    # 1.22

    const/high16 v5, 0x430d0000    # 141.0f

    const/16 v1, 0x12c

    :goto_0
    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    float-to-double v1, v0

    mul-double/2addr v1, v3

    float-to-double v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    :cond_1
    add-int/lit8 v2, p0, -0x1

    float-to-int v0, v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 7
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/List;

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    iget v1, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessStaticTime:I

    .line 9
    iget v0, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessPerFrameTime:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xfa

    const/16 v0, 0x6e

    :goto_1
    mul-int/2addr p0, v0

    add-int/2addr p0, v1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v2, p0

    :goto_2
    return v2
.end method

.method public static mfnrShutterThrottle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p0

    .line 2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "default"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    .line 5
    iget-byte v1, v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    if-ne p0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    const-wide/16 p0, 0x0

    goto :goto_3

    .line 6
    :cond_4
    iget p0, v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->shuttleThrottleTime:I

    int-to-long p0, p0

    :goto_3
    return-wide p0
.end method

.method public static slurpJson(Lorg/json/JSONObject;)V
    .locals 13

    const-string v0, "mfnr_shutter_delay_enable"

    const-string v1, "scene_selection_overrides"

    .line 1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "IqConfigManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    .line 10
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 11
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 12
    new-instance v12, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    invoke-direct {v12, v11}, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v2, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Error parsing array of scene overrides: "

    .line 15
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    const-string v1, "qc_mfnr_settings"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 20
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 21
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "exposure_schedule_lowlight"

    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 23
    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/List;

    .line 24
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 25
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    .line 26
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 27
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 28
    new-instance v11, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;

    invoke-direct {v11, v10}, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 29
    :cond_3
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 30
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 31
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/motorola/camera/IqConfigManager;->mMfnrShutterDelayEnable:Z

    goto :goto_3

    .line 32
    :cond_5
    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    .line 33
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 34
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    .line 35
    :goto_5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 36
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 37
    new-instance v12, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    invoke-direct {v12, v11}, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 38
    :cond_6
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Error parsing MFNR Setting array: "

    .line 39
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    const-string v0, "mtk_mfnr_settings"

    .line 40
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 42
    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/List;

    .line 43
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 45
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 46
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 47
    new-instance v7, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    invoke-direct {v7, v6}, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 48
    :cond_8
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v1, "Error parsing MTK MFNR Setting array: "

    .line 49
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_7
    const-string/jumbo v0, "zsl_settings"

    .line 50
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 51
    :try_start_3
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 52
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 54
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 56
    iget-object v6, v1, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    .line 57
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 58
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    .line 59
    :goto_9
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 60
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 61
    new-instance v11, Lcom/motorola/camera/IqConfigManager$ZslSetting;

    invoke-direct {v11, v10}, Lcom/motorola/camera/IqConfigManager$ZslSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 62
    :cond_a
    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    const-string v1, "Error parsing ZSL Setting array: "

    .line 63
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    const-string v0, "auto_slow_capture"

    .line 64
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 65
    :try_start_4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 66
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 68
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 70
    iget-object v6, v1, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    sget-object v7, Lcom/motorola/camera/IqConfigManager;->CAMERA_FACING_MAPPING:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 71
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 72
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    .line 73
    :goto_b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_c

    .line 74
    new-instance v10, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 75
    :cond_c
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    const-string v1, "Error parsing auto slow capture array: "

    .line 76
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    const-string/jumbo v0, "time_estimates"

    .line 77
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Error parsing Time Estimates Setting array: "

    if-eqz v1, :cond_f

    .line 78
    :try_start_5
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 79
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 80
    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/List;

    .line 81
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    .line 82
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_e

    .line 83
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 84
    new-instance v8, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    invoke-direct {v8, v7}, Lcom/motorola/camera/IqConfigManager$TimeEstimates;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 85
    :cond_e
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    .line 86
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_d
    const-string v0, "cali_validation"

    .line 87
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 88
    :try_start_6
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 89
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 90
    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mCaliValidations:Ljava/util/List;

    .line 91
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    .line 92
    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_10

    .line 93
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 94
    new-instance v8, Lcom/motorola/camera/IqConfigManager$CaliValidation;

    invoke-direct {v8, v7}, Lcom/motorola/camera/IqConfigManager$CaliValidation;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 95
    :cond_10
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    .line 96
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_11
    :goto_f
    new-instance v0, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v1, "lux-idx-to-std-params"

    .line 98
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 99
    :try_start_7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_13

    :goto_10
    add-int/lit8 v2, v4, 0x1

    .line 101
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "sensor-name"

    .line 102
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "aCoefficient"

    .line 103
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "bCoefficient"

    .line 104
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 105
    iget-object v3, v0, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;->mLuxIdxToStdCoefficients:Ljava/util/HashMap;

    const-string v9, "sensorName"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v9, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;

    double-to-float v5, v5

    double-to-float v6, v7

    invoke-direct {v9, v5, v6}, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;-><init>(FF)V

    .line 107
    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    if-lt v2, v1, :cond_12

    goto :goto_11

    :cond_12
    move v4, v2

    goto :goto_10

    :catch_7
    move-exception p0

    const-string v1, "Error parsing KEY_LUX_IDX_TO_STD_COEFFICIENTS array: "

    .line 108
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "IqTuningLuxStdStore"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_13
    :goto_11
    sput-object v0, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    return-void
.end method


# virtual methods
.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    .line 6
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    .line 12
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
