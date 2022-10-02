.class public Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "ErrorState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/ErrorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorAlwaysCodeRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/ErrorState$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 11

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->isExternalCamera(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 8
    instance-of v1, p3, Landroid/os/Bundle;

    const-string v2, "OPEN_CAMERA_ERROR"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move-object v4, p3

    check-cast v4, Landroid/os/Bundle;

    .line 9
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "error_retry"

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const-string v4, "error_retry_count"

    .line 11
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 12
    sget-object v7, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v7, v7, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRetryCount:I

    if-ge v5, v7, :cond_3

    .line 13
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 14
    sget-object p3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p3, p3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRetryCount:I

    if-ge p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move p1, v3

    .line 15
    :goto_0
    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 17
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_7

    .line 20
    :cond_3
    instance-of v4, p3, Ljava/io/IOException;

    if-nez v4, :cond_4

    instance-of v4, p3, Landroid/database/sqlite/SQLiteException;

    if-eqz v4, :cond_6

    .line 21
    :cond_4
    sget-object v4, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {v4}, Lcom/motorola/camera/storage/StorageUtils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x9600000

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    move v4, p1

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    if-eqz v4, :cond_6

    .line 22
    new-instance p2, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;-><init>(Ljava/lang/Integer;)V

    const p1, 0x1040009

    .line 23
    new-instance p3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;)V

    .line 24
    iput-object p3, p2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 25
    iput p1, p2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 26
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 27
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_6
    if-eqz v1, :cond_7

    .line 28
    move-object v1, p3

    check-cast v1, Landroid/os/Bundle;

    const-string v4, "NO_CAMERAS_ERROR"

    .line 29
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_7

    .line 30
    :cond_7
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    const v0, 0x7f1100dc

    const v1, 0x7f1100d5

    .line 31
    sget-object v4, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_ERROR_UNKNOWN:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 32
    iget-object v5, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 33
    instance-of v6, v5, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_8

    .line 34
    check-cast v5, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    goto :goto_3

    .line 35
    :cond_8
    instance-of v6, v5, Lcom/motorola/camera/fsm/camera/StateKey;

    if-eqz v6, :cond_9

    .line 36
    new-instance v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    check-cast v5, Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-direct {v6, v5, v8, v8, v7}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;Ljava/lang/String;I)V

    :goto_2
    move-object v5, v6

    goto :goto_3

    .line 37
    :cond_9
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_a

    .line 38
    new-instance v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v6, v8, v8, v8, v5}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;Ljava/lang/String;I)V

    goto :goto_2

    .line 39
    :cond_a
    new-instance v5, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    invoke-direct {v5, v8, v8, v8, v7}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;Ljava/lang/String;I)V

    .line 40
    :goto_3
    iget-object v6, v5, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 41
    iget-object v9, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 42
    instance-of v10, v9, Landroid/os/Bundle;

    if-eqz v10, :cond_b

    .line 43
    check-cast v9, Landroid/os/Bundle;

    .line 44
    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    const v9, 0x7f1100d9

    if-eqz v6, :cond_e

    .line 45
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/StateKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 46
    iget-object v0, v5, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mException:Ljava/lang/Exception;

    .line 47
    instance-of v0, v0, Lcom/motorola/camera/device/exception/CameraDisabledException;

    if-eqz v0, :cond_c

    const v0, 0x7f1100d7

    const v1, 0x7f1100d6

    .line 48
    sget-object v4, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_DISABLED_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    goto :goto_5

    :cond_c
    const v0, 0x7f1100da

    .line 49
    sget-object v4, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_OPEN_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 50
    iget-object v1, v5, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mAppHoldingCameraResource:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v2, "NOT_FOUND"

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 52
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 53
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1100d8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v3

    .line 54
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_d
    if-eqz v8, :cond_f

    move v1, v7

    goto :goto_5

    :cond_e
    if-eqz v2, :cond_10

    .line 55
    sget-object p1, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_OPEN_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    move-object v4, p1

    :cond_f
    move v1, v9

    goto :goto_5

    .line 56
    :cond_10
    iget p1, v5, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mHalErrorCode:I

    const/16 v2, 0x64

    if-eq p1, v2, :cond_11

    goto :goto_5

    .line 57
    :cond_11
    sget-object v4, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_ERROR_SERVER_DIED:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    :cond_12
    :goto_5
    if-eqz p3, :cond_14

    .line 58
    instance-of p1, p3, Landroid/os/Bundle;

    if-eqz p1, :cond_14

    .line 59
    check-cast p3, Landroid/os/Bundle;

    const-string p1, "error_message"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Quota exceeded"

    .line 60
    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 61
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 62
    sget-object p3, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;

    .line 63
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 64
    :cond_13
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f1104c9

    .line 65
    invoke-virtual {p3, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 66
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    const v0, 0x7f11012b

    const v1, 0x7f11012a

    .line 67
    sget-object v4, Lcom/motorola/camera/device/exception/CameraErrorTypes;->VID_REC_START_ERR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 68
    :cond_14
    :goto_6
    new-instance p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    if-eq v0, v7, :cond_15

    .line 69
    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    :cond_15
    if-eq v1, v7, :cond_16

    .line 70
    iput v1, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    :cond_16
    if-eqz v8, :cond_17

    .line 71
    iput-object v8, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageText:Ljava/lang/CharSequence;

    .line 72
    :cond_17
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    .line 73
    new-instance p3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;)V

    .line 74
    iput-object p3, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f1100f2

    .line 75
    iput p0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 76
    iput-boolean p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    .line 77
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 78
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 80
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 81
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 82
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p1, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 83
    iget-object p1, p1, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 84
    iget-object p2, v4, Lcom/motorola/camera/device/exception/CameraErrorTypes;->mName:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/FormatHolder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
