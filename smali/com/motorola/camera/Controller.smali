.class public Lcom/motorola/camera/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/motorola/camera/EventListener;
.implements Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/Controller$ActivityCallbackInterface;,
        Lcom/motorola/camera/Controller$McfOrientationListener;
    }
.end annotation


# instance fields
.field public mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

.field public mActivityChanging:Z

.field public final mActivityContext:Landroid/app/Activity;

.field public mCalibrationDataDebugUiListener:Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;

.field public final mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

.field public mCanShowDialogs:Z

.field public mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

.field public mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

.field public mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

.field public mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

.field public mHandler:Landroid/os/Handler;

.field public mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

.field public mInitOnResumeState:I

.field public volatile mIsIdle:Z

.field public mIsUiResumed:Z

.field public final mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

.field public mLocation:Lcom/motorola/camera/LocationManager;

.field public mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

.field public mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

.field public mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

.field public mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

.field public volatile mPendingIntent:Landroid/content/Intent;

.field public mRegistered:Z

.field public final mRootView:Landroid/view/ViewGroup;

.field public mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

.field public mShouldHideWhenLocked:Z

.field public mStateChangeListener:Lcom/motorola/camera/fsm/camera/StateChangeListener;

.field public mStorageChangedEventDetector:Lcom/motorola/camera/StorageChangedEventDetector;

.field public mUI:Lcom/motorola/camera/ui/UI;

.field public mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

.field public mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/motorola/camera/Controller$ActivityCallbackInterface;)V
    .locals 7

    const-string v0, "MotoCameraController"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    .line 4
    iput-object v1, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    .line 6
    iput-boolean v2, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    .line 7
    iput-boolean v2, p0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    const/4 v3, 0x1

    .line 9
    iput v3, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    .line 10
    iput-boolean v2, p0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    .line 11
    iput-boolean v2, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    .line 12
    iput-object v1, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 13
    iput-object v1, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/StorageChangedEventDetector;

    .line 14
    iput-object v1, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    .line 15
    new-instance v1, Lcom/motorola/camera/Controller$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Controller$1;-><init>(Lcom/motorola/camera/Controller;)V

    iput-object v1, p0, Lcom/motorola/camera/Controller;->mStateChangeListener:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    .line 16
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    .line 17
    iput-object p2, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    .line 18
    iput-object p3, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    .line 19
    iput-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/view/Display;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 22
    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;

    invoke-direct {p2}, Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;-><init>()V

    goto :goto_1

    .line 23
    :cond_1
    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;

    invoke-direct {p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;-><init>()V

    .line 24
    :goto_1
    iput-object p2, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    .line 25
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 26
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->parseJson(Landroid/content/Context;)V

    .line 27
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_2

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseJson dur:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string p3, "Error: JSON parsing exception "

    .line 29
    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    :cond_2
    :goto_2
    :try_start_1
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutsCoordinates:Lorg/json/JSONArray;

    if-eqz p1, :cond_4

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p3, v2

    .line 33
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p3, v1, :cond_3

    .line 34
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "x"

    .line 35
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string/jumbo v5, "y"

    .line 36
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 37
    new-instance v1, Landroid/graphics/PointF;

    double-to-float v3, v3

    double-to-float v4, v5

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 38
    :cond_3
    new-instance p1, Lcom/motorola/camera/provider/concrete/PointDisplayCutoutProvider;

    invoke-direct {p1, p2}, Lcom/motorola/camera/provider/concrete/PointDisplayCutoutProvider;-><init>(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    const-string p2, "Improperly formatted cutout display values array"

    .line 39
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_4
    new-instance p1, Lcom/motorola/camera/provider/concrete/NoDisplayCutoutProvider;

    invoke-direct {p1}, Lcom/motorola/camera/provider/concrete/NoDisplayCutoutProvider;-><init>()V

    .line 41
    :goto_4
    iput-object p1, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    .line 42
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 43
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    .line 44
    new-instance p2, Lcom/motorola/camera/fsm/camera/CameraFsm$1;

    invoke-direct {p2, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm$1;-><init>(Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V

    .line 45
    new-instance p3, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-direct {p3, p2, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V

    .line 46
    iput-object p3, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    .line 47
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mStateChangeListener:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    .line 49
    new-instance p1, Lcom/motorola/camera/HeadsetReceiver;

    invoke-direct {p1, p0}, Lcom/motorola/camera/HeadsetReceiver;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

    .line 50
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 51
    new-instance p1, Lcom/motorola/camera/CommandLineReceiver;

    invoke-direct {p1, p0}, Lcom/motorola/camera/CommandLineReceiver;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

    .line 52
    :cond_5
    sget-object p1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 53
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_6

    .line 54
    new-instance p1, Lcom/motorola/camera/UXDumpReceiver;

    invoke-direct {p1}, Lcom/motorola/camera/UXDumpReceiver;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

    .line 55
    :cond_6
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 56
    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 57
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 58
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 59
    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 60
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 61
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 62
    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 63
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 64
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 65
    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 66
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 67
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/Controller;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static access$100(Lcom/motorola/camera/Controller;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    const v2, 0x1030239

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1100e6

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100e5

    .line 5
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1100f2

    .line 6
    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public static access$1400(Lcom/motorola/camera/Controller;)V
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.google.android.apps.nbu.files"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x68ac

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_LAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0x6ddd00

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 12
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 14
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 15
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-ltz v8, :cond_2

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    add-int/2addr v2, v1

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v1, 0x3

    if-le v2, v1, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    new-instance v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const v2, 0x7f1100d2

    .line 20
    iput v2, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v2, 0x7f1100f8

    .line 21
    iput v2, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    const v2, 0x7f110128

    .line 22
    new-instance v5, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;)V

    .line 23
    iput-object v5, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 24
    iput v2, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    const p0, 0x7f110109

    .line 25
    sget-object v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda5;

    .line 26
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 27
    iput p0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 28
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 29
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v2, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static access$600(Lcom/motorola/camera/Controller;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/Controller;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const-string v1, "perm_request_code"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    iget-boolean v1, v0, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    if-nez v1, :cond_e

    .line 8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mSecure:Z

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    if-ne p1, v2, :cond_e

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    const-string v3, "android.permission.RECORD_AUDIO"

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    .line 11
    :cond_2
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v6, "android.permission.CAMERA"

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 12
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    :goto_0
    const/4 v7, 0x0

    if-nez v6, :cond_4

    move v10, v7

    goto :goto_2

    .line 13
    :cond_4
    array-length v8, v6

    move v9, v7

    move v10, v9

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v11, v6, v9

    .line 14
    invoke-virtual {v1, v11}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v10, :cond_6

    goto/16 :goto_5

    .line 15
    :cond_6
    iget-boolean v0, v0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    if-nez v0, :cond_f

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    check-cast p0, Lcom/motorola/camera/Camera;

    .line 17
    iput-boolean v5, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-ne p1, v2, :cond_7

    .line 18
    new-instance p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    .line 19
    iput v7, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->backgroundColor:I

    const v0, 0x7f110116

    .line 20
    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    .line 21
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f11011d

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    .line 23
    iput-boolean v7, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    const v0, 0x7f1100e4

    .line 24
    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Camera;)V

    .line 25
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 26
    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    const v0, 0x7f1100e2

    .line 27
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/Camera;)V

    .line 28
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 29
    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 30
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 31
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_6

    .line 33
    :cond_7
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    .line 34
    iput-boolean v7, v0, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    .line 35
    iput-boolean v7, v0, Lcom/motorola/camera/PermissionsManager;->mOptionalPermissionsDenied:Z

    if-eq p1, v5, :cond_a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    if-eq p1, v4, :cond_8

    goto :goto_6

    .line 36
    :cond_8
    iput-boolean v5, v0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    .line 37
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_6

    .line 38
    :cond_9
    iput-boolean v5, v0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    .line 39
    sget-object v0, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_6

    .line 40
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    sget-object v2, Lcom/motorola/camera/PermissionsManager;->PERMISSIONS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 42
    invoke-static {v3}, Lcom/motorola/camera/PermissionsManager;->isCriticalPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 43
    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    move v4, v5

    goto :goto_4

    :cond_c
    move v4, v7

    :goto_4
    if-nez v4, :cond_b

    .line 44
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 45
    :cond_d
    invoke-virtual {v0, p0, v1, p1}, Lcom/motorola/camera/PermissionsManager;->callRequestPermission(Landroid/app/Activity;Ljava/util/ArrayList;I)Z

    goto :goto_6

    .line 46
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/Controller;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public activeRender(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mActiveRender:Z

    :cond_0
    return-void
.end method

.method public checkIntent(Landroid/content/Intent;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/CaptureIntent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/settings/CaptureIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 5
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->getOnLaunchAction()Lcom/motorola/camera/launch/OnLaunchAction;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingMode()I

    move-result p0

    const/16 p2, 0x18

    if-eq p0, p2, :cond_1

    const/16 p2, 0x12

    if-eq p0, p2, :cond_1

    const/4 p2, 0x6

    if-eq p0, p2, :cond_1

    const/16 p2, 0x13

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_1

    const/16 p2, 0x29

    if-eq p0, p2, :cond_1

    const/16 p2, 0x27

    if-ne p0, p2, :cond_2

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result p2

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_3

    if-eq p2, p0, :cond_3

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->resetSliderMenuMode()V

    .line 12
    :cond_3
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 13
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.IS_CLI_DISPLAY"

    .line 14
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 15
    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(IZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 16
    invoke-static {p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0, p0}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingCameraFacing(I)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_4

    .line 18
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 19
    :cond_4
    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isQuickDrawLaunch()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 22
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p0, v0, :cond_5

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_5
    const-string p0, "motorola.intent.category.QUICK_LAUNCH"

    .line 24
    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string p0, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    .line 25
    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public final createErrorDialog(ILjava/lang/String;ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    const v2, 0x1030239

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-static {}, Lcom/motorola/camera/Util;->isProductWhiteLabel()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const p2, 0x55d4f73

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "https://help.motorola.com/hc/apps/camera/index.php?m=&v=%s&t=help_hardware_error"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1100f1

    .line 8
    new-instance p4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110109

    new-instance p4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Controller;Z)V

    .line 9
    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f1100f2

    .line 10
    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Controller;Z)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0
.end method

.method public final displayCameraErrorDialog1(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/motorola/camera/utility/Error;->mSensor:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    int-to-long v4, v1

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x2

    .line 4
    rem-long/2addr v4, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-le v3, v1, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    const/high16 v4, 0x1000000

    const/high16 v5, 0x2000000

    const/high16 v6, 0x4000000

    if-eqz v3, :cond_4

    const p1, 0x7f110102

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v3

    goto :goto_6

    .line 6
    :cond_4
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    .line 7
    array-length v7, v3

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v3, v8

    .line 8
    sget-object v10, Lcom/motorola/camera/settings/CameraType;->BACK_SLAVE:Lcom/motorola/camera/settings/CameraType;

    if-ne v9, v10, :cond_5

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackSlaveCamera()Z

    move-result v3

    xor-int/2addr v3, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_3
    if-nez v3, :cond_7

    .line 10
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    .line 11
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 12
    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager;->mCameraTypeErrorSet:Ljava/util/Set;

    invoke-static {v3, v7}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_8

    :cond_7
    if-nez p1, :cond_8

    const p1, 0x7f110119

    move v3, v6

    goto :goto_6

    .line 13
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result p1

    if-nez p1, :cond_c

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontWideCamera()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 15
    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result p1

    if-nez p1, :cond_b

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result p1

    if-nez p1, :cond_b

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    return-void

    :cond_b
    :goto_4
    const p1, 0x7f1100ec

    move v3, v5

    goto :goto_6

    :cond_c
    :goto_5
    const p1, 0x7f11011c

    move v3, v4

    .line 18
    :goto_6
    invoke-static {}, Lcom/motorola/camera/Util;->isProductWhiteLabel()Z

    move-result v7

    if-eqz v7, :cond_10

    if-eq v3, v4, :cond_f

    if-eq v3, v5, :cond_e

    if-eq v3, v6, :cond_d

    const v3, 0x7f110101

    goto :goto_7

    :cond_d
    const v3, 0x7f110118

    goto :goto_7

    :cond_e
    const v3, 0x7f1100eb

    goto :goto_7

    :cond_f
    const v3, 0x7f11011b

    .line 19
    :goto_7
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 20
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 21
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_10
    if-eq v3, v4, :cond_13

    if-eq v3, v5, :cond_12

    if-eq v3, v6, :cond_11

    const v3, 0x7f110100

    goto :goto_8

    :cond_11
    const v3, 0x7f110117

    goto :goto_8

    :cond_12
    const v3, 0x7f1100ea

    goto :goto_8

    :cond_13
    const v3, 0x7f11011a

    .line 22
    :goto_8
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 23
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 24
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_9
    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/motorola/camera/Controller;->createErrorDialog(ILjava/lang/String;ZZ)V

    return-void
.end method

.method public getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    return-object p0
.end method

.method public getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    return-object p0
.end method

.method public getYOffsetIfNotWideScreen()F
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/Controller;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F
    .locals 12

    .line 8
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 9
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v1

    .line 10
    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v2

    const v3, 0x3cf5c28f    # 0.03f

    sub-float v4, v1, v3

    cmpg-float v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v4, :cond_0

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v5

    .line 11
    :goto_0
    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 13
    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    .line 14
    new-instance v4, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v4}, Lcom/motorola/camera/PreviewSize;-><init>()V

    .line 15
    invoke-virtual {v4, p2}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 16
    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p2, v6}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_6

    .line 17
    iget-object v7, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    check-cast v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewCrop()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 18
    iget v1, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    check-cast v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 19
    iget-object v7, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 20
    iget v7, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v7, v1

    float-to-int v1, v7

    iput v1, v4, Lcom/motorola/camera/PreviewSize;->height:I

    .line 21
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 22
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 23
    new-instance v7, Lcom/motorola/camera/PreviewSize;

    const/16 v9, 0x10e

    const/16 v10, 0x5a

    if-eq v1, v10, :cond_2

    if-ne v1, v9, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    iget v11, v4, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_2

    :cond_2
    :goto_1
    iget v11, v4, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_2
    if-eq v1, v10, :cond_4

    if-ne v1, v9, :cond_3

    goto :goto_3

    .line 25
    :cond_3
    iget v1, v4, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_4

    :cond_4
    :goto_3
    iget v1, v4, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_4
    invoke-direct {v7, v11, v1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 26
    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget v4, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float v4, v1, v4

    .line 27
    iget v9, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v9, v9

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    div-float/2addr v9, v7

    sub-float v3, v4, v3

    cmpg-float v3, v9, v3

    if-gez v3, :cond_5

    div-float v5, v9, v4

    :cond_5
    mul-float/2addr v1, v5

    .line 28
    :cond_6
    iget v3, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float/2addr v3, v8

    .line 29
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    .line 30
    invoke-interface {v5}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v5

    add-float/2addr v5, v4

    mul-float/2addr v5, v2

    sub-float/2addr v3, v5

    .line 31
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 32
    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    goto :goto_5

    .line 33
    :cond_7
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p2, v4}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_8

    .line 34
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 35
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 36
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    if-ne p0, v7, :cond_11

    .line 37
    iget p0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    goto/16 :goto_7

    .line 38
    :cond_8
    invoke-static {p2, v6}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_b

    .line 39
    iget-object p2, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-object v4, p2

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 40
    iget-object v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 41
    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    if-ne v4, v6, :cond_9

    .line 42
    invoke-interface {p2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result p0

    mul-float/2addr p0, v2

    add-float/2addr v3, p0

    goto/16 :goto_8

    :cond_9
    if-ne v4, v7, :cond_a

    .line 43
    iget p0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    goto/16 :goto_7

    :cond_a
    const/4 v0, 0x3

    if-ne v4, v0, :cond_11

    .line 44
    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 45
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result p0

    mul-float/2addr p0, v2

    div-float/2addr p0, v8

    sub-float/2addr v3, p0

    goto/16 :goto_8

    .line 46
    :cond_b
    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p2, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 47
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_c

    :goto_5
    move v3, v5

    goto/16 :goto_8

    .line 48
    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    iget p2, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result p0

    .line 49
    invoke-static {p1, v2, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;FFZ)F

    move-result p0

    div-float/2addr v1, v8

    add-float v3, v1, p0

    goto :goto_8

    .line 50
    :cond_d
    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p2, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 51
    invoke-static {v0, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 52
    iget p0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    sub-float/2addr p0, v1

    neg-float v3, p0

    goto :goto_8

    .line 53
    :cond_e
    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p2, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 54
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 55
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 56
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 57
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 58
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result p1

    goto :goto_6

    .line 59
    :cond_f
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 60
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result p1

    .line 61
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 62
    invoke-virtual {p2}, Lcom/motorola/camera/CameraApp;->getNavBarSize()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    div-int/2addr p2, v6

    sub-int/2addr p1, p2

    .line 63
    :goto_6
    iget-object p2, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    check-cast p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p2

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    .line 64
    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result p0

    add-float/2addr p0, p2

    mul-float/2addr p0, v2

    .line 65
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 66
    invoke-virtual {p2}, Lcom/motorola/camera/CameraApp;->getInsetTop()I

    move-result p2

    sub-int/2addr p2, p1

    int-to-float p2, p2

    div-float/2addr p2, v8

    add-float/2addr p2, p0

    int-to-float p0, p1

    div-float/2addr p0, v8

    sub-float/2addr p2, p0

    add-float/2addr v3, p2

    goto :goto_8

    .line 67
    :cond_10
    iget p0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_7
    int-to-float p0, p0

    sub-float/2addr p0, v1

    div-float v3, p0, v8

    :cond_11
    :goto_8
    return v3
.end method

.method public getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 1

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/Controller;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public final handleIntent(Landroid/content/Intent;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    new-instance v2, Lcom/motorola/camera/settings/CaptureIntent;

    .line 2
    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-direct {v2, p1, v3}, Lcom/motorola/camera/settings/CaptureIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingMode()I

    move-result v3

    .line 5
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingCameraFacing(I)I

    move-result v4

    .line 6
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 7
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    const-string v7, "motorola.intent.category.QUICK_LAUNCH"

    .line 10
    invoke-virtual {p1, v7}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 11
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 12
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x1

    if-ne v4, v5, :cond_0

    if-ne v3, v6, :cond_0

    .line 13
    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v0, "motorola.camera.intent.extra.TRIGGERED_LAUNCH_ACTION"

    .line 14
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "CAPTURE_TRIGGER"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 17
    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->getTimerVoiceAssistant()I

    move-result v0

    const-string v1, "TIMER"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_1

    :cond_0
    const-string v2, "USE_CASE"

    const-string v9, "FACING"

    const-string v10, "SWITCH_CASE"

    const-string v11, "MODE"

    const-string v12, "MODE_DIRECTION"

    if-eq v4, v5, :cond_1

    if-eq v3, v6, :cond_1

    .line 20
    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    invoke-virtual {v7, v12, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 23
    invoke-virtual {v7, v10, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 24
    invoke-virtual {v7, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "INTENT_LAUNCH"

    .line 25
    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 27
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    :cond_1
    if-eq v3, v6, :cond_4

    .line 29
    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "motorola.camera.intent.action.CINEMAGRAPH_CAMERA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x13

    .line 31
    invoke-static {v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 32
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-virtual {v7, v12, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 34
    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 35
    invoke-virtual {v7, v12, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 36
    :cond_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 37
    invoke-virtual {v7, v12, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 38
    :goto_0
    invoke-virtual {v7, v10, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 39
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 40
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    .line 41
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_5

    if-eq v4, v5, :cond_5

    .line 42
    invoke-virtual {v7, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_5
    :goto_1
    const-string v0, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public isCliDisplay()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    check-cast p0, Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result p0

    return p0
.end method

.method public onRotationChanged(II)V
    .locals 0

    .line 1
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public playHaptic(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/Controller;Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0

    throw p0
.end method

.method public registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerStateChangeListener(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/motorola/camera/fsm/camera/StateChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    .line 8
    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final saveNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.extra.IS_CLI_DISPLAY"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;Z)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setScreenParameters(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/play/core/assetpacks/zzbg;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 5
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {v3, v1, v2, v0}, Lcom/motorola/camera/CameraApp;->setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    if-eqz p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 9
    invoke-interface {p1}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->windowSizeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldHaveSecureMediaIds()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".cli_continuity"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1}, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_0
    return-void
.end method

.method public unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/StateChangeListener;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 6
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 7
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 8
    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/StateChangeListener;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public unregisterStateChangeListener(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/motorola/camera/fsm/camera/StateChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    .line 10
    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
