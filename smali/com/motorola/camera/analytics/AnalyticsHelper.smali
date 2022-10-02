.class public Lcom/motorola/camera/analytics/AnalyticsHelper;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "AnalyticsHelper.java"

# interfaces
.implements Lcom/motorola/camera/CameraKpi$CameraKpiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListenerBase;,
        Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;
    }
.end annotation


# static fields
.field public static final KPI_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/CameraKpi$KPI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAlwaysAwareEvent:Lcom/motorola/camera/analytics/AlwaysAwareEvent;

.field public final mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

.field public final mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

.field public final mCameraSwitchEvent:Lcom/motorola/camera/analytics/CameraSwitchEvent;

.field public mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

.field public mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

.field public mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListenerBase;

.field public final mMotionPhotoDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;

.field public final mPhotoSolidDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;

.field public final mPostCaptureImageEvent:Lcom/motorola/camera/analytics/PostCaptureImageEvent;

.field public final mPostCaptureMultiShotEvent:Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

.field public final mPostCapturePanoramaEvent:Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

.field public final mPostCaptureVideoEvent:Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

.field public final mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

.field public final mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

.field public mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

.field public final mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/CameraReadyEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/CameraReadyEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/CameraSwitchEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraSwitchEvent:Lcom/motorola/camera/analytics/CameraSwitchEvent;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/UserExitAppEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/PostCaptureImageEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureImageEvent:Lcom/motorola/camera/analytics/PostCaptureImageEvent;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureMultiShotEvent:Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureVideoEvent:Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

    .line 9
    new-instance v0, Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCapturePanoramaEvent:Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

    .line 10
    new-instance v0, Lcom/motorola/camera/analytics/ShotToShotEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/ShotToShotEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    .line 11
    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AlwaysAwareEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAlwaysAwareEvent:Lcom/motorola/camera/analytics/AlwaysAwareEvent;

    .line 12
    new-instance v0, Lcom/motorola/camera/analytics/WidgetTapEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/WidgetTapEvent;-><init>()V

    .line 13
    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AnalyticsService;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    .line 14
    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMotionPhotoDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;

    .line 15
    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPhotoSolidDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$PhotoSolidDataManager;

    return-void
.end method


# virtual methods
.method public getSessionSeqId()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "SEQID"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 3
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPENED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final handleClose(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 7
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
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v1, "TIMED_OUT_EVENT"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "power"

    .line 6
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 9
    iget-object v2, v1, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->POWER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/FormatHolder;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 12
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 14
    iget-object v0, v1, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 17
    iget-object v1, v1, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/FormatHolder;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 24
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SORT:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 25
    iget-object v1, v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    .line 27
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 29
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 30
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 31
    iget-object v1, v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 33
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 34
    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 35
    iget-object v2, v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    .line 37
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object p1

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 41
    sget-object v6, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 44
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_ADD:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v3, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    .line 46
    iget-object v3, v3, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;->mName:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v3, v2}, Lcom/google/android/exoplayer2/FormatHolder;->putIntArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    :cond_4
    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 49
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_5

    .line 51
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_5

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_REMOVE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p1, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    .line 54
    iget-object p1, p1, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;->mName:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/FormatHolder;->putIntArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 56
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    .line 57
    :cond_8
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 58
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/CameraKpi;->unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    return-void
.end method

.method public final handleCreateCaptureRequest(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
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
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result p0

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v3, "SEQ_ID"

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    const-string p0, "ANALYTICS_SWFLASHFIREDONAUTO"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public final handleIdle(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
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
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v1, "STARTUP"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->initializeSessionValues()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v1, "SWITCHTIME"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraSwitchEvent:Lcom/motorola/camera/analytics/CameraSwitchEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "SHOTSEQID"

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->stopShotToShotLogging(J)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->remove(Ljava/lang/String;)V

    .line 13
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const/4 v0, 0x1

    const-string v1, "COUNT_SETTINGS_OPENED"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v1, "COUNT_SECURE_GALLERY_LAUNCHES"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p1, "COUNT_HELP_OPENED"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleMultiShot(Lcom/motorola/camera/fsm/ChangeEvent;)V
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
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "SEQ_ID"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 6
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v0, p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureMultiShotEvent:Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p1, v1, p0, v0}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public handleOnlineHelpOpened()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v1, "COUNT_HELP_OPENED"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 3
    iget-object v4, v4, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5
    iget-object v4, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    check-cast v3, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    add-int/2addr v0, v2

    .line 7
    invoke-virtual {v4, v3, v0}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0, v1, v5}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "COUNT_SETTINGS_OPENED"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleOpenCamera(Z)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v2, "COLD"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v2, "LAUNCHEDBY"

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v2, "RAMPSREXP"

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v2, "RAMAVL"

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v2, "RAMTHRS"

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 18
    iget-object v3, v2, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, v2, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 21
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 22
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 25
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/FormatHolder;->clear()V

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->putAll(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 28
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v3, "evttme"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    .line 29
    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v3, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 30
    iget-object v3, v3, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->mName:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v1, "IS_CLI_DISPLAY"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 34
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/CameraKpi;->setKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    return-void
.end method

.method public final handleSettingsOpened()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v1, "COUNT_SETTINGS_OPENED"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 3
    iget-object v4, v4, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5
    iget-object v4, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    check-cast v3, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    add-int/2addr v0, v2

    .line 7
    invoke-virtual {v4, v3, v0}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0, v1, v5}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "COUNT_HELP_OPENED"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleSingleShot()V
    .locals 4
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
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 2
    iget-object v2, v2, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    check-cast v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final handleVideoCaptured(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8
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
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/constraintlayout/core/Cache;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 5
    iget-object v3, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 7
    new-instance v5, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 8
    new-instance v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 9
    iget-object v7, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 10
    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    new-instance v7, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    invoke-direct {v7, v4}, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;-><init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    invoke-direct {v5, v6, v7, v2}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    .line 11
    iget-object v2, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 12
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 13
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 14
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 16
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "SNAPSHOT_COUNT"

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 18
    iget-object v3, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 19
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 20
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 23
    invoke-virtual {p0, v5}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    goto :goto_1

    .line 24
    :cond_1
    iput-object v5, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 25
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 26
    iget-object v2, v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v2, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 29
    iget-object v0, v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final handleVideoStopCapture(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
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
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/constraintlayout/core/Cache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 5
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocusEnabledAndSuccessful()Z

    move-result p1

    const-string v2, "FOCUS_SUCCESS"

    .line 9
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    const-string v2, "ANALYTICS_IS_CAF"

    .line 10
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListenerBase;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 12
    check-cast p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, p1

    float-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "ANALYTICS_ZOOM"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListenerBase;

    .line 16
    iget-object v2, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 17
    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListenerBase;

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 19
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "ANALYTICS_EXPOSURE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    .line 22
    iget-object v2, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 23
    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    .line 26
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "ANALYTICS_FLASHMODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    .line 28
    iget-object v0, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 29
    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    :cond_6
    return-void
.end method

.method public final handleZoom(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
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
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "TYPE"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 6
    iget-object v3, v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v3, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    add-int/2addr p1, v2

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-ne v2, p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 12
    iget-object v3, v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v3, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    add-int/2addr p1, v2

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized initializeSessionValues()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v1, "SEQID"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/CameraReadyEvent;->setupSessionValues(Lcom/google/android/exoplayer2/FormatHolder;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    .line 3
    instance-of v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    .line 5
    sget-object v1, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCapturePanoramaEvent:Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureImageEvent:Lcom/motorola/camera/analytics/PostCaptureImageEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureVideoEvent:Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onKpiUpdate(Lcom/motorola/camera/CameraKpi$KPI;JI)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 p4, 0x2c

    if-eq p1, p4, :cond_1

    const/16 p4, 0x3c

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->initializeSessionValues()V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p4, "STARTUP"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

    iget-object p2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string p4, "SHOTSEQID"

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 7
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 8
    iget-object p0, p1, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    if-nez p0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iput-wide p2, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mKpiTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method public setShotToShotMode(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    if-nez v1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p3, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMode:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/ShotToShotEvent;->areRequirementsMet(Lcom/motorola/camera/analytics/ShotToShotEvent$Record;)Z

    move-result p3

    :goto_0
    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, v0, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public startShotToShotLogging(Lcom/motorola/camera/ShotType;JI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v1, "SHOTSEQID"

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->getSessionSeqId()J

    move-result-wide v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;-><init>(Lcom/motorola/camera/analytics/ShotToShotEvent$1;)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mStartTime:J

    .line 5
    iput p4, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMcfQueue:I

    .line 6
    iput-wide v1, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mSessionSeqId:J

    .line 7
    sget-object p4, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-eq p4, p1, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(Lcom/motorola/camera/ShotType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMode:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object p1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleCreateCaptureRequest(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleSingleShot()V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListenerBase;

    .line 7
    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxExposureSettingListener;

    .line 8
    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxTorchSettingListener;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleVideoCaptured(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_0

    .line 11
    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleMultiShot(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 13
    :cond_4
    :goto_0
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    .line 15
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 17
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "SRC_CAM"

    .line 19
    invoke-static {v1}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Z)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SRC_MODE"

    .line 20
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 21
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 22
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 23
    :cond_5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 25
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "DEST_CAM"

    .line 27
    invoke-static {v1}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Z)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DEST_MODE"

    .line 28
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 29
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 31
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 33
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 35
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    invoke-virtual {p0, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleOpenCamera(Z)V

    goto/16 :goto_1

    .line 37
    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "SWITCHTIME"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    .line 39
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "SWITCHTRIGGER"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 40
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleIdle(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto/16 :goto_1

    .line 42
    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPENED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 43
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleOnlineHelpOpened()V

    goto/16 :goto_1

    .line 44
    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v0, "SHOTSEQID"

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 46
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->stopShotToShotLogging(J)V

    .line 47
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleSingleShot()V

    goto :goto_1

    .line 50
    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleClose(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_1

    .line 52
    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 53
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleSettingsOpened()V

    goto :goto_1

    .line 54
    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 56
    iget-object v0, v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 57
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->TIMEDOUT:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/FormatHolder;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    .line 58
    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 59
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleVideoStopCapture(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_1

    .line 60
    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleZoom(Lcom/motorola/camera/fsm/ChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_11
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopShotToShotLogging(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/ShotToShotEvent;->areRequirementsMet(Lcom/motorola/camera/analytics/ShotToShotEvent$Record;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/google/android/exoplayer2/FormatHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
