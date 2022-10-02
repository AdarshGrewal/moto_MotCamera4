.class public Lcom/motorola/camera/Camera;
.super Lcom/motorola/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/camera/Controller$ActivityCallbackInterface;
.implements Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;


# static fields
.field public static final mCameraButtonIntentFilter:Landroid/content/IntentFilter;

.field public static mExtraFreeMemSizeKb:I

.field public static mLowMemKillSize:J


# instance fields
.field public final launchManager:Lcom/motorola/camera/launch/LaunchManager;

.field public final mActivityForegroundReceiver:Landroid/content/BroadcastReceiver;

.field public mCTAOpenInCreate:Z

.field public mCTAPermissionAllowed:Z

.field public mCTAPermissionDialog:Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;

.field public mCTARecreate:Z

.field public mController:Lcom/motorola/camera/Controller;

.field public mDebugControlReceiver:Lcom/motorola/camera/DebugControlReceiver;

.field public mDoLaunch:Z

.field public final mFeatureLimiterListener:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCliDisplay:Ljava/lang/Boolean;

.field public mIsColdStart:Z

.field public mKeepSessionSettingOnExit:Z

.field public final mMoveTaskToBackListener:Lcom/motorola/camera/Notifier$Listener;

.field public mOrientation:I

.field public final mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "motorola.camera.intent.action.START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ActivityBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    .line 9
    new-instance v0, Lcom/motorola/camera/launch/LaunchManager;

    invoke-direct {v0}, Lcom/motorola/camera/launch/LaunchManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    .line 10
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mMoveTaskToBackListener:Lcom/motorola/camera/Notifier$Listener;

    .line 11
    new-instance v0, Lcom/motorola/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$1;-><init>(Lcom/motorola/camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    new-instance v0, Lcom/motorola/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$2;-><init>(Lcom/motorola/camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;

    return-void
.end method


# virtual methods
.method public final adjustLayoutToRealScreenSize()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/play/core/assetpacks/zzbg;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v0

    const v1, 0x7f0a0236

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public final adjustScreenBrightness()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SCREEN_BRIGHTNESS_BUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 3
    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 4
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ScreenBrightnessHelper;->setupBrightnessBump(Landroid/view/Window;Z)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x2

    .line 5
    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public final checkMultiWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iput-boolean v0, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f1100ff

    .line 10
    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->showToast(I)V

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final clearMediaIdsForSecureLaunch()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "com.android.systemui.camera_launch_source"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "flip_changed"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/SecureMediaIdsManager;->clearMediaIds()V

    :cond_1
    return-void
.end method

.method public final getActivityAnimationBundle(I)Landroid/os/Bundle;
    .locals 2

    const v0, 0x7f010020

    const v1, 0x7f010021

    .line 1
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final hideSystemUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public isCliDisplay()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 4
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId()I

    move-result v0

    sget v3, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    if-ne v0, v3, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 9
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOYAGER_CLI_DISPLAY_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    .line 14
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public isSecureLaunch()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p0

    iget-boolean p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    return p0
.end method

.method public killApps()V
    .locals 11

    .line 1
    sget-boolean p0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->IS_INITIALIZED:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->sMethodGetDefault:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    new-instance v2, Lcom/motorola/camera/reflect/android/app/IActivityManager;

    invoke-direct {v2, p0}, Lcom/motorola/camera/reflect/android/app/IActivityManager;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    const-string p0, "ActivityManagerNative"

    const-string/jumbo v2, "unable to invoke getDefault"

    .line 4
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    const/16 p0, 0xa

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetSwappiness:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    const/16 v4, 0xdac

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 6
    :try_start_1
    iget-object v6, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7
    :catch_1
    :cond_1
    sget p0, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    const v2, 0xc350

    if-lt p0, v2, :cond_2

    .line 8
    iget-object v2, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetExtraFreeKbytes:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 9
    :try_start_2
    iget-object v6, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 10
    :catch_2
    :cond_2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "activity"

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 12
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 13
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 14
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sget-wide v6, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    sub-long/2addr v3, v6

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    cmp-long p0, v3, v6

    if-gez p0, :cond_3

    sub-long/2addr v6, v3

    const-wide/16 v3, 0x3e8

    .line 15
    div-long/2addr v6, v3

    long-to-int p0, v6

    move v3, v5

    goto :goto_1

    :cond_3
    move p0, v1

    move v3, p0

    .line 16
    :goto_1
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 17
    iget-object v4, v4, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 18
    iget-object v6, v4, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v7, "COLD"

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "RAMPSREXP"

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    .line 19
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/FormatHolder;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    iget-object v6, v4, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v6, v7, v3}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    iget-object v6, v4, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    iget-wide v7, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v9, 0x100000

    div-long/2addr v7, v9

    long-to-int v7, v7

    const-string v8, "RAMAVL"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-object v4, v4, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v6, v9

    long-to-int v2, v6

    const-string v6, "RAMTHRS"

    invoke-virtual {v4, v6, v2}, Lcom/google/android/exoplayer2/FormatHolder;->putInt(Ljava/lang/String;I)V

    .line 23
    :goto_2
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 24
    iput-boolean v3, v2, Lcom/motorola/camera/CameraApp;->mIsMemPressureExpected:Z

    if-lez p0, :cond_6

    .line 25
    iget-object v2, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetReserveFreeKbytes:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    .line 26
    :try_start_3
    iget-object v3, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    move p0, v1

    goto :goto_3

    :catch_3
    :cond_5
    const/4 p0, -0x1

    :goto_3
    if-gez p0, :cond_6

    .line 27
    iget-object p0, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mKillAllBackgroundProcesses:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_6

    .line 28
    :try_start_4
    iget-object v0, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_6
    return-void
.end method

.method public final launchGoogleLens()V
    .locals 15

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/LensApiHelper;->lensApi:Lcom/google/lens/sdk/LensApi;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3
    :catch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v5, 0x7f11018c

    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x4

    .line 5
    invoke-static {v9}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v3

    const/16 v6, 0x7d0

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v3, :cond_4

    const/4 v7, 0x3

    if-eq v3, v7, :cond_3

    const/4 v7, 0x4

    if-eq v3, v7, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Text Description is empty for Setting Confirmation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v1, 0x2

    :goto_0
    move v7, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v1

    move-object v2, v6

    :goto_2
    if-nez v2, :cond_5

    const/16 v1, 0xfa0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    :cond_5
    new-instance v14, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v13, 0x0

    move-object v1, v14

    move v2, v3

    move v3, v8

    invoke-direct/range {v1 .. v13}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 12
    sput-object v14, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v0, v14}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_3

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->GALLERY_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 3
    iget-object p3, p3, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "LOCATION"

    .line 4
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/motorola/camera/Camera;->updateLocationSetting(Z)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    if-ne p2, v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    goto :goto_0

    :cond_2
    const/16 p3, 0xc

    if-ne p1, p3, :cond_3

    .line 6
    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_3

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PHOTOS_STABILIZE_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 8
    iget-object p3, p3, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 9
    :cond_3
    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->values()[Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    move-result-object p3

    .line 10
    aget-object p1, p3, p1

    .line 11
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    iput-object p1, p3, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 13
    iput p2, p3, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->DOCUMENT:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-ne p1, p3, :cond_5

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 17
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    :cond_5
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/motorola/camera/arch/view/BaseFragment;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/motorola/camera/arch/view/BaseFragment;

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 3
    iput-object p0, p1, Lcom/motorola/camera/arch/view/BaseFragment;->eventListener:Lcom/motorola/camera/EventListener;

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->setInsets()V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 7
    invoke-interface {v0}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->attach()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    sget-boolean v0, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 3
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->showCTAPermissionsDialog()V

    .line 6
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v1, :cond_1

    .line 9
    iput v0, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged()V

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 17
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 18
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v3, :cond_3

    .line 20
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-double v3, v3

    .line 21
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-double v3, p1

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, p1

    cmpl-double p1, v3, v0

    if-eqz p1, :cond_3

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->adjustLayoutToRealScreenSize()V

    const/4 v2, 0x1

    .line 24
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SET_CONTENT_VIEW:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->checkMultiWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    sget-boolean v2, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 8
    iget-object v5, v2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 9
    invoke-virtual {v5, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 10
    iget-boolean v5, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-nez v5, :cond_0

    .line 11
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 12
    iget-object v2, v2, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    .line 13
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 15
    iput-boolean v4, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->showCTAPermissionsDialog()V

    return-void

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v2

    .line 19
    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/zzbg;->getMainDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/motorola/camera/utility/ColdStartHelper;->onActivityCreate(Landroid/graphics/Point;Z)V

    .line 20
    sget-object v7, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFilesCoroutine:Lkotlinx/coroutines/Job;

    check-cast v7, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v7}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 21
    sget-object v7, Lcom/motorola/camera/storage/StorageUtils;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils;

    invoke-virtual {v7}, Lcom/motorola/camera/storage/StorageUtils;->getTemporaryDirectory()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    sput-object v7, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    .line 22
    sget-object v7, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFilesCoroutine:Lkotlinx/coroutines/Job;

    check-cast v7, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v7}, Lkotlinx/coroutines/JobSupport;->start()Z

    .line 23
    :cond_1
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    move-result-object v7

    .line 24
    new-instance v8, Ljava/lang/Thread;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda1;

    invoke-direct {v9, v7}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShaderCache;)V

    const-string v7, "ShaderCache"

    invoke-direct {v8, v9, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    const/4 v7, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "setDisablePreviewScreenshots"

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    .line 26
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v10, v9, v7

    invoke-virtual {v8, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v9, "activity"

    .line 28
    invoke-virtual {v8, v9}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 29
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v9

    iput-boolean v9, v8, Lcom/motorola/camera/CameraApp;->mMonkeyUser:Z

    .line 30
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 31
    iget-object v8, v8, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 32
    iget-object v8, v8, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v9, "COLD"

    invoke-virtual {v8, v9, v4}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    iput-boolean v4, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    const-string v8, "com.motorola.camera3"

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 35
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v9, 0x7f1100e1

    .line 36
    invoke-virtual {v8, v9}, Lcom/motorola/camera/CameraApp;->showToast(I)V

    .line 37
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 38
    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    .line 40
    :cond_2
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 41
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v8, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 43
    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->POP_UP_FRONT_CAMERA:Lcom/motorola/camera/AppFeatures$Feature;

    .line 44
    iget-object v8, v8, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p1, :cond_3

    .line 45
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 46
    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    .line 48
    :cond_3
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 49
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v11, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v11, v10, v7

    sget-object v11, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v11, v10, v4

    invoke-virtual {v8, v5, v6, v10}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(J[Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 50
    sget-boolean v8, Lcom/motorola/camera/Util;->KPI:Z

    const/4 v10, 0x3

    if-eqz v8, :cond_4

    .line 51
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 52
    invoke-virtual {v11}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v11

    const/4 v12, 0x5

    new-array v12, v12, [Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v1, v12, v7

    sget-object v13, Lcom/motorola/camera/CameraKpi$KPI;->START_TO_HAL_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v13, v12, v4

    sget-object v13, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v13, v12, v9

    sget-object v9, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v9, v12, v10

    const/4 v9, 0x4

    sget-object v13, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v13, v12, v9

    invoke-virtual {v11, v5, v6, v12}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(J[Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 53
    :cond_4
    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x8

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 p1, 0x9

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    const/high16 v3, 0x8000000

    .line 58
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    const/16 v3, 0x400

    .line 59
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    const/16 v3, 0x200

    .line 60
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    const/high16 v3, 0x200000

    .line 61
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    const/16 v3, 0x80

    .line 62
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v3

    .line 64
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 65
    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 66
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 67
    invoke-virtual {v3, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 68
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 69
    invoke-static {p0, v2}, Lcom/google/android/play/core/assetpacks/zzbg;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v9

    .line 70
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 71
    invoke-virtual {v6, v9, v5, v3}, Lcom/motorola/camera/CameraApp;->setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 72
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 73
    iget-object v5, v3, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 74
    :try_start_1
    iput-boolean v7, v3, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    .line 75
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_5

    .line 76
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 77
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    .line 78
    iget-object v3, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v3, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_5
    const v3, 0x7f0d0020

    .line 79
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    if-eqz v8, :cond_6

    .line 80
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 81
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 82
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->adjustLayoutToRealScreenSize()V

    .line 83
    new-instance v0, Lcom/motorola/camera/Controller;

    const v3, 0x7f0a0236

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v0, p0, v3, p0}, Lcom/motorola/camera/Controller;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/motorola/camera/Controller$ActivityCallbackInterface;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 84
    invoke-static {v7}, Lcom/motorola/camera/QuickLaunchShortcutHelper;->editQuickLaunchShortcuts(Z)V

    .line 85
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 86
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->clearMediaIdsForSecureLaunch()V

    .line 89
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->shouldShowOnLockScreen()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 90
    invoke-static {p0, v4}, Lcom/motorola/camera/utility/ActivityUtilKt;->showOnLockScreen(Landroid/app/Activity;Z)V

    .line 91
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p1, :cond_8

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.IS_CLI_DISPLAY"

    .line 93
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p1, v4}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;Z)V

    .line 95
    :cond_8
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 96
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    iput-boolean v0, p1, Lcom/motorola/camera/CameraApp;->mIsSystemUser:Z

    .line 98
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 99
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.motorola.internal.CAMERA_START"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.motorola.faceunlock.FACE_UNLOCK"

    .line 101
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 102
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    if-eqz v8, :cond_9

    .line 103
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 104
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    :cond_9
    return-void

    :catchall_0
    move-exception p0

    .line 105
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onDestroy()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/Controller;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isReportEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->unregisterActionReceiver()V

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/motorola/camera/instrumentreport/MeasureKpi;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v3

    const-string/jumbo v4, "statesToListenFor"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, v1, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    .line 11
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 13
    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 14
    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v6, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4, v1, v3}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/StateChangeListener;Ljava/util/Collection;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_1
    iget-object v3, v1, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->unregisterActionReceiver()V

    .line 17
    :goto_0
    iget-object v1, v1, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_3

    .line 18
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :cond_3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    iget-object v3, v0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    sget-object v4, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/CameraKpi;->unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    .line 21
    invoke-static {}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->getInstance()Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    move-result-object v1

    .line 22
    monitor-enter v1

    .line 23
    :try_start_1
    iput-boolean v2, v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    .line 24
    iget-object v2, v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    iget-object v2, v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 26
    :cond_4
    iget-object v2, v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    .line 28
    :cond_5
    :goto_1
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ON_DESTROY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_6
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 30
    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 31
    :catch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.CAMERA_STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.motorola.faceunlock.FACE_UNLOCK"

    .line 32
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    .line 34
    iput-object v0, v1, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

    .line 35
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onDestroy()V

    return-void
.end method

.method public onDisplaySwitch(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/ComponentName;

    const-class v2, Lcom/motorola/camera/Camera;

    invoke-direct {p1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 3
    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "display"

    .line 4
    invoke-virtual {p1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 5
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v3, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    const-string v3, "displayManager.displays"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    move v4, v0

    :cond_2
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 8
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    .line 10
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 11
    new-instance p1, Landroid/content/ComponentName;

    const-class v2, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    :goto_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 14
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 15
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x18000000

    .line 16
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 18
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_5
    :goto_2
    const-string p0, "MotoCamera"

    const-string p1, "No external display connected"

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x2766

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2767

    const/4 v5, 0x0

    if-eq v2, v3, :cond_4

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_3

    const/16 v2, 0x55

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    move v0, v5

    goto :goto_1

    .line 7
    :cond_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 9
    :cond_2
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/UIManager;->processKeyEvent(Landroid/view/KeyEvent;)V

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    if-eqz v0, :cond_6

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_4
    const-string v2, "SWITCH_TYPE"

    .line 10
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_2

    .line 13
    :cond_5
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v3, "CAPTURE_TRIGGER"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 14
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    return v4

    .line 16
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x42

    if-eq v3, v4, :cond_1

    const/16 v4, 0x55

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    move v0, v1

    goto :goto_1

    .line 5
    :cond_1
    :pswitch_0
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/UIManager;->processKeyEvent(Landroid/view/KeyEvent;)V

    :goto_0
    move v0, v2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    return v2

    .line 9
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLaunchStarted()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    const-string v2, "MotoCamera"

    if-ne v0, v1, :cond_0

    const-string p1, "Received new intent on main display activity while LID is closed"

    .line 3
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0, v1}, Lcom/motorola/camera/launch/LaunchManager;->launch(Landroid/app/Activity;ZII)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.motorola.action.STILL_IMAGE_CAMERA_CLI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.motorola.action.STILL_IMAGE_CAMERA_SECURE_CLI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "Received new intent on main display activity to open CLI -> ignore"

    .line 7
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 8
    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ActivityUtilKt;->showOnLockScreen(Landroid/app/Activity;Z)V

    .line 9
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_7

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v1

    const-string v2, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v2, 0x2

    .line 14
    iget-boolean v3, v1, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-eqz v3, :cond_5

    .line 15
    iget-boolean v0, v1, Lcom/motorola/camera/Controller;->mIsIdle:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v1, p1}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 17
    :cond_3
    iget v0, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v0, v2, :cond_4

    .line 18
    invoke-virtual {v1, p1}, Lcom/motorola/camera/Controller;->saveNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 19
    :cond_4
    iput-object p1, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    goto :goto_0

    .line 20
    :cond_5
    iget v3, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v3, v2, :cond_6

    .line 21
    invoke-virtual {v1, p1}, Lcom/motorola/camera/Controller;->saveNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 22
    :cond_6
    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;Z)V

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v0

    .line 25
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "NEW_INTENT_REQUEST_MODE"

    .line 26
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "NEW_INTENT_REQUEST_FACING"

    .line 27
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    iget-object p1, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NEW_INTENT_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 29
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->clearMediaIdsForSecureLaunch()V

    return-void
.end method

.method public onPauseTasks()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/Controller;->activeRender(Z)V

    .line 7
    :cond_2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iput-boolean v2, v1, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    .line 9
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 11
    iput-boolean v2, v1, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    .line 12
    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget v4, v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    if-nez v4, :cond_3

    monitor-exit v1

    goto :goto_2

    .line 15
    :catch_0
    :cond_3
    :goto_0
    sget-object v4, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 16
    iget v5, v4, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    :try_start_1
    const-string v5, "SettingSoundPlayer"

    const-string/jumbo v6, "waiting for load to complete before unloading"

    .line 17
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x1f4

    .line 18
    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    move-result-object v4

    array-length v5, v4

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_5

    aget-object v8, v4, v7

    .line 20
    sget-object v9, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 21
    iget-object v10, v9, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    .line 22
    iget v11, v8, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->mPool:I

    .line 23
    aget-object v10, v10, v11

    .line 24
    iget-object v9, v9, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    invoke-virtual {v9, v8}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/media/SoundPool;->unload(I)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 25
    :cond_5
    sget-object v4, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 26
    iget-object v5, v4, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/media/SoundPool;->release()V

    .line 27
    iget-object v5, v4, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aput-object v3, v5, v2

    .line 28
    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/SoundPool;->release()V

    .line 29
    iget-object v5, v4, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aput-object v3, v5, v6

    .line 30
    iget-object v5, v4, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    invoke-virtual {v5}, Ljava/util/EnumMap;->clear()V

    .line 31
    iput v2, v4, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    .line 32
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 34
    sput-object v3, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 35
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 36
    :cond_6
    :goto_2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 37
    iput-boolean v2, v1, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    .line 38
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.motorola.camera3.ACTION_ENABLE_SELFIE_TILE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 40
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mDebugControlReceiver:Lcom/motorola/camera/DebugControlReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    :cond_7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 43
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->clearScreenBoundElementsSizes()V

    .line 44
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 47
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_d

    .line 48
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 49
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 50
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 51
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 52
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 53
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 55
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    .line 56
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 57
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 58
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 59
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_9
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 61
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 62
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 63
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 64
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 65
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_a
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 67
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    .line 68
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 69
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 70
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 71
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_b
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 73
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    .line 74
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 75
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 76
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 77
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_c
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 79
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 80
    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->checkMultiWindow()V

    const-wide/16 v0, 0x10

    .line 81
    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p2

    const/4 p3, 0x1

    .line 2
    invoke-virtual {p2, p0, p3}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;Z)V

    .line 3
    invoke-virtual {p2, p1, p0}, Lcom/motorola/camera/PermissionsManager;->permissionRequestResult(ILandroid/app/Activity;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Camera;->updateLocationSetting(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    return-void
.end method

.method public onResumeTasks()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-nez v1, :cond_f

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/Controller;->activeRender(Z)V

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-object v3, v1, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    .line 5
    :try_start_0
    iput-boolean v4, v1, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    .line 6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 13
    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 17
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    const-string v1, "MotoCamera"

    const-string v3, "App version: 90001267"

    .line 19
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_5

    .line 21
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 23
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 25
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 26
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 27
    :cond_3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 28
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    .line 29
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 30
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 31
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 32
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 33
    :cond_4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 34
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 35
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 36
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_6

    .line 37
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 38
    iput-boolean v2, v3, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    .line 39
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 40
    iget-object v1, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 41
    :cond_6
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;)V

    .line 42
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 43
    iput-boolean v2, v1, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    .line 44
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.motorola.camera3.ACTION_DISABLE_SELFIE_TILE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const v1, 0x7f0a00eb

    .line 46
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 47
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VOYAGER_CLI_DISPLAY_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 48
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 49
    iget-object v5, v3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 50
    invoke-virtual {v5, v3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    if-eqz v1, :cond_7

    const/16 v3, 0x8

    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_7
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v1

    .line 53
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 54
    iput-boolean v1, v3, Lcom/motorola/camera/CameraApp;->mSecure:Z

    .line 55
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_b

    .line 56
    iput-boolean v2, v1, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    .line 57
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    if-eqz v3, :cond_a

    .line 58
    iget-boolean v5, v1, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-nez v5, :cond_8

    .line 59
    iput-boolean v2, v1, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    .line 60
    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    .line 61
    iget-object v2, v3, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 62
    invoke-interface {v3}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->resume()V

    goto :goto_0

    .line 63
    :cond_8
    iget v2, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 64
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 65
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 v2, 0x3

    .line 66
    iput v2, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    goto :goto_1

    .line 67
    :cond_9
    iget-object v2, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz v2, :cond_a

    iget-boolean v2, v1, Lcom/motorola/camera/Controller;->mIsIdle:Z

    if-eqz v2, :cond_a

    .line 68
    iget-object v2, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    const/4 v2, 0x0

    .line 69
    iput-object v2, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    .line 71
    :cond_a
    :goto_1
    iget-object v1, v1, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;->INSTANCE:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    .line 73
    iput-boolean v4, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    .line 74
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 75
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;

    invoke-static {v1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    .line 76
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 77
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mDebugControlReceiver:Lcom/motorola/camera/DebugControlReceiver;

    if-nez v1, :cond_c

    .line 78
    new-instance v1, Lcom/motorola/camera/DebugControlReceiver;

    invoke-direct {v1}, Lcom/motorola/camera/DebugControlReceiver;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mDebugControlReceiver:Lcom/motorola/camera/DebugControlReceiver;

    .line 79
    :cond_c
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mDebugControlReceiver:Lcom/motorola/camera/DebugControlReceiver;

    sget v2, Lcom/motorola/camera/DebugControlReceiver;->$r8$clinit:I

    .line 80
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "motorola.camera.intent.action.SHOW_CAPTURE_RESULT_PLOTS"

    .line 81
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "motorola.camera.intent.action.HIDE_CAPTURE_RESULT_PLOTS"

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "motorola.camera.intent.action.ADD_CAPTURE_RESULT_PLOT_KEYS"

    .line 83
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "motorola.camera.intent.action.REMOVE_CAPTURE_RESULT_PLOT_KEYS"

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "motorola.camera.intent.action.SET_CAPTURE_RESULT_PLOT_KEYS"

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "motorola.camera.intent.action.SET_LIMITER"

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 89
    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    .line 90
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_e

    .line 91
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 92
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 93
    :cond_e
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 94
    iget-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_f

    .line 95
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/Camera;)V

    .line 96
    iget-object p0, v0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 97
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_f
    :goto_2
    return-void
.end method

.method public onStart()V
    .locals 10

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_START:Lcom/motorola/camera/CameraKpi$KPI;

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->checkMultiWindow()V

    .line 6
    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->shouldShowOnLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p0, v2}, Lcom/motorola/camera/utility/ActivityUtilKt;->showOnLockScreen(Landroid/app/Activity;Z)V

    .line 9
    :cond_1
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->showCTAPermissionsDialog()V

    return-void

    .line 11
    :cond_2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 14
    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iput-object p0, v1, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

    .line 19
    invoke-interface {p0}, Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;->onLaunchStarted()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 20
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v6

    iput v6, v1, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    .line 21
    sget-object v6, Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;->LID_STATE:Ljava/lang/String;

    const-string v7, "settingName"

    .line 22
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    :try_start_0
    sget-object v7, Lcom/motorola/camera/reflect/MotorolaSettingsGlobal;->methodGetUriFor:Ljava/lang/reflect/Method;

    if-nez v7, :cond_3

    move-object v6, v3

    goto :goto_0

    :cond_3
    new-array v8, v2, [Ljava/lang/Object;

    aput-object v6, v8, v4

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_0
    instance-of v7, v6, Landroid/net/Uri;

    if-eqz v7, :cond_4

    check-cast v6, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "Failed to invoke method "

    const-string v8, "getUriFor"

    .line 24
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MotorolaSettingsGlobal"

    invoke-static {v8, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object v6, v3

    :goto_1
    if-nez v6, :cond_5

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v1, v1, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-virtual {v7, v6, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_6
    :goto_2
    if-nez v5, :cond_7

    const-string v0, "MotoCamera"

    const-string v1, "Starting mismatching activity and display. Launching proper one."

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v2

    .line 31
    invoke-virtual {v0, p0, v4, v1, v2}, Lcom/motorola/camera/launch/LaunchManager;->launch(Landroid/app/Activity;ZII)V

    return-void

    .line 32
    :cond_7
    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    if-nez v1, :cond_8

    .line 33
    invoke-virtual {p0, v4}, Lcom/motorola/camera/Camera;->updateSplashPreview(Z)V

    .line 34
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 35
    :cond_8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v5, "activity"

    .line 36
    invoke-virtual {v1, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 37
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v5

    iput-boolean v5, v1, Lcom/motorola/camera/CameraApp;->mMonkeyUser:Z

    .line 38
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 40
    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    if-eqz v5, :cond_9

    .line 41
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_9
    const-string v5, "INITIALIZED"

    :goto_3
    const-string v6, "LAUNCHEDBY"

    .line 42
    invoke-virtual {v1, v6, v5}, Lcom/google/android/exoplayer2/FormatHolder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_a

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v5

    const-string v6, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    iget-object v5, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v5, v1, v4}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;Z)V

    .line 47
    :cond_a
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;)V

    .line 48
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v1

    .line 49
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 50
    iput-boolean v1, v5, Lcom/motorola/camera/CameraApp;->mSecure:Z

    .line 51
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_1a

    iget-boolean v5, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    .line 52
    iput-object p0, v1, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    .line 53
    new-instance v6, Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v7

    invoke-direct {v6, v7}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;-><init>(Z)V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    .line 54
    new-instance v6, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v7

    invoke-direct {v6, v7}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;-><init>(Z)V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    .line 55
    new-instance v6, Lcom/motorola/camera/Controller$McfOrientationListener;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v7

    invoke-direct {v6, v7}, Lcom/motorola/camera/Controller$McfOrientationListener;-><init>(Z)V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    .line 56
    new-instance v6, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-direct {v6}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;-><init>()V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    .line 57
    invoke-virtual {v1, v4}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sput-wide v6, Lcom/motorola/camera/SensorTime;->sTimebaseDelta:J

    .line 59
    iget-object v6, v1, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    if-nez v6, :cond_b

    new-instance v6, Lcom/motorola/camera/LocationManager;

    invoke-direct {v6}, Lcom/motorola/camera/LocationManager;-><init>()V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    .line 60
    :cond_b
    iget-object v6, v1, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    if-nez v6, :cond_c

    .line 61
    new-instance v6, Lcom/motorola/camera/shared/OrientationEvent;

    iget-object v7, v1, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcom/motorola/camera/shared/OrientationEvent;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    .line 62
    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 63
    new-instance v6, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v7, v1, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/cli/content/CliContentManager;-><init>(Landroid/content/Context;Z)V

    iput-object v6, v1, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    .line 64
    iget-object v7, v6, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    .line 65
    iget-boolean v8, v7, Lcom/motorola/camera/arch/view/BasePresentationHolder;->isInitialized:Z

    if-eqz v8, :cond_d

    goto :goto_5

    .line 66
    :cond_d
    iget-object v8, v7, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    if-nez v8, :cond_e

    .line 67
    new-instance v8, Lcom/motorola/camera/cli/content/CliContentViewModel;

    invoke-direct {v8}, Lcom/motorola/camera/cli/content/CliContentViewModel;-><init>()V

    .line 68
    iput-object v8, v7, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    .line 69
    :cond_e
    iput-boolean v2, v7, Lcom/motorola/camera/arch/view/BasePresentationHolder;->isInitialized:Z

    .line 70
    iget-object v8, v7, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    if-nez v8, :cond_f

    goto :goto_4

    :cond_f
    iget-object v9, v7, Lcom/motorola/camera/arch/view/BasePresentationHolder;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {v8, v9, v3}, Lcom/motorola/camera/arch/view/BaseViewModel;->onCreate(Landroid/content/Context;Landroid/content/Intent;)V

    .line 72
    :goto_4
    iget-object v3, v7, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    .line 73
    check-cast v3, Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-nez v3, :cond_10

    goto :goto_5

    :cond_10
    new-instance v8, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;

    invoke-direct {v8, v7}, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;-><init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;)V

    .line 74
    iput-object v8, v3, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    .line 75
    :goto_5
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 76
    iget-object v6, v6, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 77
    invoke-static {v3, v6}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 78
    :cond_11
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/StorageChangedEventDetector;

    if-nez v3, :cond_12

    .line 79
    new-instance v3, Lcom/motorola/camera/StorageChangedEventDetector;

    invoke-direct {v3, v1}, Lcom/motorola/camera/StorageChangedEventDetector;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object v3, v1, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/StorageChangedEventDetector;

    .line 80
    :cond_12
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-nez v3, :cond_13

    .line 81
    new-instance v3, Lcom/motorola/camera/ControllerSaveListener;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ControllerSaveListener;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object v3, v1, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    .line 82
    :cond_13
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    if-nez v3, :cond_14

    .line 83
    new-instance v3, Lcom/motorola/camera/ui/UIManager;

    iget-object v6, v1, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {v3, v1, v6}, Lcom/motorola/camera/ui/UIManager;-><init>(Lcom/motorola/camera/Controller;Landroid/view/ViewGroup;)V

    iput-object v3, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    .line 84
    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 85
    :cond_14
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    .line 86
    iget-object v3, v3, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 87
    invoke-interface {v6}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->start()V

    goto :goto_6

    .line 88
    :cond_15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v3

    if-nez v3, :cond_16

    .line 89
    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 90
    :cond_16
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 91
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 92
    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 93
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 94
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 95
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 96
    iget-object v3, v1, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v3, :cond_17

    .line 97
    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_17
    if-eqz v5, :cond_18

    .line 98
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 99
    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mIsSystemUser:Z

    if-eqz v3, :cond_18

    .line 100
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/Controller;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :cond_18
    iget v3, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_19

    .line 102
    iput v2, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    .line 103
    iget-object v2, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 104
    :cond_19
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    if-nez v5, :cond_1a

    .line 105
    sget-object v2, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getClientKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    sget-object v2, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 107
    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    .line 108
    new-instance v2, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$1;

    invoke-direct {v2}, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_1a
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->adjustScreenBrightness()V

    .line 110
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 111
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->MOVE_CAMERA_TO_BACK:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v3, p0, Lcom/motorola/camera/Camera;->mMoveTaskToBackListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 112
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    .line 113
    iput-boolean v4, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    .line 114
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->checkMultiWindow()V

    .line 115
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_1b

    .line 116
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 117
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    :cond_1b
    return-void
.end method

.method public onStop()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, v2}, Lcom/motorola/camera/utility/ActivityUtilKt;->showOnLockScreen(Landroid/app/Activity;Z)V

    .line 6
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5, v1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 10
    iget-object v4, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-nez v4, :cond_2

    .line 11
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    iget-boolean v5, v4, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->isCameraActivityStarted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    :cond_2
    iput-boolean v2, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 17
    iget-object v5, v0, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Ljava/lang/Runnable;

    .line 18
    iget-object v4, v4, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, v0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    .line 20
    invoke-interface {v4}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->pause()V

    goto :goto_0

    .line 21
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-nez v0, :cond_4

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_4

    .line 24
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 25
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 26
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-nez v0, :cond_6

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v0

    invoke-static {v3, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    .line 29
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/motorola/camera/utility/ScreenBrightnessHelper;->setupBrightnessBump(Landroid/view/Window;Z)V

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 31
    iget-boolean v0, v0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    if-eqz v0, :cond_7

    .line 32
    invoke-static {p0, v2}, Lcom/motorola/camera/utility/ActivityUtilKt;->showOnLockScreen(Landroid/app/Activity;Z)V

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    .line 34
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 35
    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->MOVE_CAMERA_TO_BACK:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v5, p0, Lcom/motorola/camera/Camera;->mMoveTaskToBackListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_f

    .line 37
    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 38
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 39
    iget-object v4, v4, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 40
    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 41
    iget-object v4, v0, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    if-eqz v4, :cond_8

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 42
    :cond_8
    iget-object v4, v0, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 43
    :cond_9
    iget-object v4, v0, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    if-eqz v4, :cond_a

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 44
    :cond_a
    invoke-static {}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->stop()V

    .line 45
    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v4

    .line 46
    monitor-enter v4

    .line 47
    :try_start_0
    iput-boolean v2, v4, Lcom/motorola/camera/utility/LensApiHelper;->isInitialized:Z

    .line 48
    iput-object v1, v4, Lcom/motorola/camera/utility/LensApiHelper;->lensApi:Lcom/google/lens/sdk/LensApi;

    .line 49
    iput-boolean v2, v4, Lcom/motorola/camera/utility/LensApiHelper;->googleLensStatusChecked:Z

    .line 50
    iput-boolean v2, v4, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable:Z

    .line 51
    iget-object v1, v4, Lcom/motorola/camera/utility/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 52
    iput-boolean v2, v4, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersReady:Z

    .line 53
    iget-object v1, v4, Lcom/motorola/camera/utility/LensApiHelper;->arStickersCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v4

    .line 55
    iget-object v1, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v1, :cond_e

    .line 56
    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 57
    iget-object v1, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 59
    iget-object v5, v1, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 60
    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 61
    iget-object v1, v1, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    .line 62
    iget-boolean v4, v1, Lcom/motorola/camera/arch/view/BasePresentationHolder;->isInitialized:Z

    if-nez v4, :cond_b

    goto :goto_2

    .line 63
    :cond_b
    invoke-virtual {v1}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {v4}, Landroid/app/Presentation;->dismiss()V

    .line 64
    :goto_1
    iget-object v4, v1, Lcom/motorola/camera/arch/view/BasePresentationHolder;->presentationDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 65
    iput-boolean v2, v1, Lcom/motorola/camera/arch/view/BasePresentationHolder;->isInitialized:Z

    .line 66
    iget-object v4, v1, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    if-nez v4, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, v1, Lcom/motorola/camera/arch/view/BasePresentationHolder;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/arch/view/BaseViewModel;->onDestroy(Landroid/content/Context;)V

    .line 67
    :cond_e
    :goto_2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 68
    iput-boolean v2, v0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v4

    throw p0

    .line 70
    :cond_f
    :goto_3
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    .line 71
    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :catch_0
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-eqz v0, :cond_10

    .line 74
    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    .line 75
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v4

    .line 76
    invoke-virtual {v0, p0, v3, v1, v4}, Lcom/motorola/camera/launch/LaunchManager;->launch(Landroid/app/Activity;ZII)V

    .line 77
    iput-boolean v2, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    .line 78
    :cond_10
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 79
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 17

    .line 1
    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onTopResumedActivityChanged(Z)V

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.IS_UNSUPPORTED_DESKTOP_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const v8, 0x7f110495

    const/4 v11, 0x1

    const/4 v15, 0x0

    const/4 v12, 0x4

    .line 7
    invoke-static {v12}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v5

    const/16 v6, 0x7d0

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v5, :cond_3

    const/4 v9, 0x3

    if-eq v5, v9, :cond_2

    const/4 v9, 0x4

    if-eq v5, v9, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    move v10, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v10, v2

    move-object v4, v6

    :goto_2
    if-nez v4, :cond_4

    const/16 v2, 0xfa0

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 12
    :cond_4
    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v16, 0x0

    move-object v4, v2

    move v6, v11

    invoke-direct/range {v4 .. v16}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 14
    sput-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v3, v2}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iput p1, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->checkMultiWindow()V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v0

    const-string v1, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->hideSystemUi()V

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public restartStateMachineAndInitOnResume()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    :cond_0
    return-void
.end method

.method public final shouldShowOnLockScreen()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v1, "com.android.systemui.camera_launch_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v0, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p0

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mCallingPackage:Ljava/lang/String;

    const-string v0, "com.motorola.stylus"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isGoogleAssistantLaunch()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final showCTAPermissionsDialog()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;

    .line 5
    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;

    .line 6
    new-instance v1, Lcom/motorola/camera/Camera$3;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$3;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "listener"

    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;->listener:Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog$OnCTAClickListener;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionDialog:Lcom/motorola/camera/ui/uicomponents/widgets/CTADialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    :cond_1
    return-void
.end method

.method public startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->SUPER_SLOW_MOTION:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-object v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->PHOTOS_STABILIZE:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-object v4, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->SETTINGS:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-object v5, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->DOCUMENT:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eqz v1, :cond_2a

    .line 2
    iget-object v6, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 3
    iget-object v6, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->className:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/motorola/camera/Camera;->getActivityAnimationBundle(I)Landroid/os/Bundle;

    move-result-object v6

    .line 5
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    iget-object v7, v7, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 7
    iget-object v8, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 9
    :pswitch_0
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 10
    :pswitch_1
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 11
    :pswitch_2
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 12
    :pswitch_3
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->AR_STICKERS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 13
    :pswitch_4
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 14
    :pswitch_5
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 15
    :pswitch_6
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->CINEMAGRAPH:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 16
    :pswitch_7
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 17
    :pswitch_8
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 18
    :pswitch_9
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->LIVESTREAM:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 19
    :pswitch_a
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 20
    :pswitch_b
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 21
    :pswitch_c
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_ACTIONS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    .line 22
    :pswitch_d
    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 23
    :goto_0
    iget-object v7, v7, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/exoplayer2/FormatHolder;

    sget-object v9, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast v9, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 24
    iget-object v9, v9, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 25
    invoke-virtual {v7, v9, v8}, Lcom/google/android/exoplayer2/FormatHolder;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 26
    iget-object v7, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const v12, 0x7f1100d1

    const/16 v8, 0xfa0

    const/16 v9, 0x7d0

    const/4 v11, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v10, 0x3

    const/16 v17, 0x4

    if-eqz v7, :cond_21

    if-eq v7, v13, :cond_13

    if-eq v7, v11, :cond_13

    const/16 v13, 0x13

    if-eq v7, v13, :cond_13

    packed-switch v7, :pswitch_data_1

    .line 27
    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_5

    .line 28
    :pswitch_e
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 29
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mMonkeyUser:Z

    if-eqz v1, :cond_1

    goto/16 :goto_f

    .line 30
    :cond_1
    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v1

    .line 31
    monitor-enter v1

    .line 32
    :try_start_1
    invoke-virtual {v1}, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersV1Available()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersV2Available()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v15

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v14

    :goto_2
    monitor-exit v1

    if-eqz v2, :cond_7

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->restartStateMachineAndInitOnResume()V

    .line 34
    invoke-virtual {v1}, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersV2Available()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.ar.lens"

    const-string v4, "com.google.vr.apps.ornament.app.MainActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v3, v1, Lcom/motorola/camera/utility/LensApiHelper;->stickerParameters$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "<get-stickerParameters>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    const-string/jumbo v5, "stickerParameters.keys()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 40
    iget-object v6, v1, Lcom/motorola/camera/utility/LensApiHelper;->stickerParameters$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 42
    :cond_4
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_f

    .line 43
    :cond_5
    invoke-virtual {v1}, Lcom/motorola/camera/utility/LensApiHelper;->isARStickersV1Available()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 44
    iget-object v1, v1, Lcom/motorola/camera/utility/LensApiHelper;->lensApi:Lcom/google/lens/sdk/LensApi;

    if-nez v1, :cond_6

    goto/16 :goto_f

    :cond_6
    invoke-virtual {v1, v0, v14}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;I)V

    goto/16 :goto_f

    :cond_7
    const-string v1, "com.google.ar.lens"

    .line 45
    invoke-static {v1}, Lcom/motorola/camera/Util;->createGooglePlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 46
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_f

    .line 47
    :catch_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 48
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v19, 0x0

    .line 49
    invoke-static/range {v17 .. v17}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v6

    .line 50
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v6, :cond_b

    if-eq v6, v10, :cond_a

    if-eq v6, v11, :cond_8

    move v14, v15

    const/4 v10, 0x0

    goto :goto_4

    .line 51
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    move-object v10, v7

    goto :goto_4

    .line 52
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v10, 0x0

    const/4 v14, 0x2

    goto :goto_4

    :cond_b
    move-object v10, v7

    move v14, v15

    :goto_4
    if-nez v10, :cond_c

    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 54
    :cond_c
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v9, 0x1

    .line 55
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v20, 0x0

    move-object v8, v6

    move v10, v5

    move-object v11, v4

    move v15, v5

    move/from16 v16, v17

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-direct/range {v8 .. v20}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 56
    sput-object v6, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v1, v6}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    .line 59
    monitor-exit v1

    throw v0

    .line 60
    :pswitch_f
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 61
    new-instance v1, Lcom/motorola/camera/Camera$6;

    invoke-direct {v1, v0}, Lcom/motorola/camera/Camera$6;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-static {v0, v1}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;)V

    goto/16 :goto_f

    .line 62
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->launchGoogleLens()V

    goto/16 :goto_f

    .line 63
    :goto_5
    :try_start_3
    iget-object v1, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 65
    invoke-virtual {v0, v2, v1, v6}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_f

    .line 66
    :catch_1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 67
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v19, 0x0

    .line 68
    invoke-static/range {v17 .. v17}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v6

    .line 69
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v6, :cond_11

    if-eq v6, v10, :cond_10

    if-eq v6, v11, :cond_e

    move v14, v15

    const/4 v10, 0x0

    goto :goto_6

    .line 70
    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    move-object v10, v7

    goto :goto_6

    .line 71
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v10, 0x0

    const/4 v14, 0x2

    goto :goto_6

    :cond_11
    move-object v10, v7

    move v14, v15

    :goto_6
    if-nez v10, :cond_12

    .line 72
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 73
    :cond_12
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v9, 0x1

    .line 74
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v20, 0x0

    move-object v8, v6

    move v10, v5

    move-object v11, v4

    move v15, v5

    move/from16 v16, v17

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-direct/range {v8 .. v20}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 75
    sput-object v6, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 76
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v1, v6}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 78
    :cond_13
    :pswitch_10
    iget-object v7, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-object v13, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->CINEMAGRAPH:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v7, v13, :cond_14

    if-eq v7, v5, :cond_14

    if-eq v7, v4, :cond_14

    if-eq v7, v3, :cond_14

    sget-object v12, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v7, v12, :cond_14

    sget-object v12, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->YOUTUBE_LIVE:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v7, v12, :cond_14

    if-ne v7, v2, :cond_16

    :cond_14
    if-ne v7, v5, :cond_15

    .line 79
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 80
    iput-boolean v15, v0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    goto :goto_7

    .line 81
    :cond_15
    iput-boolean v14, v0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    .line 82
    :goto_7
    iget-object v7, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-static {v7, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setBrightnessForLaunch(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 83
    :cond_16
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v7, v4, :cond_17

    if-eq v7, v5, :cond_17

    if-eq v7, v13, :cond_17

    if-eq v7, v3, :cond_17

    if-eq v7, v2, :cond_17

    .line 84
    new-instance v2, Lcom/motorola/camera/Camera$4;

    invoke-direct {v2, v0, v1, v6}, Lcom/motorola/camera/Camera$4;-><init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/os/Bundle;)V

    invoke-static {v0, v2}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;)V

    goto/16 :goto_f

    .line 85
    :cond_17
    iget-object v2, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    if-eq v2, v3, :cond_19

    if-eq v2, v5, :cond_19

    if-ne v2, v4, :cond_18

    goto :goto_8

    .line 86
    :cond_18
    iget-object v1, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_f

    :cond_19
    :goto_8
    if-ne v2, v4, :cond_1b

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId()I

    move-result v2

    const v3, 0x7f0a0201

    .line 88
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v5, 0x2

    :try_start_5
    div-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 91
    invoke-static {v3, v4, v6, v7, v12}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_9

    :cond_1a
    const/4 v5, 0x2

    .line 93
    invoke-virtual {v0, v2}, Lcom/motorola/camera/Camera;->getActivityAnimationBundle(I)Landroid/os/Bundle;

    move-result-object v2

    :goto_9
    move-object v6, v2

    goto :goto_a

    :cond_1b
    const/4 v5, 0x2

    .line 94
    :goto_a
    iget-object v2, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 96
    invoke-virtual {v0, v2, v1, v6}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_f

    :catch_2
    const/4 v5, 0x2

    .line 97
    :catch_3
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 98
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v18, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 99
    invoke-static/range {v17 .. v17}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v7

    .line 100
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v7, :cond_1f

    if-eq v7, v10, :cond_1e

    if-eq v7, v11, :cond_1c

    move v14, v15

    goto :goto_b

    .line 101
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    move-object v10, v9

    goto :goto_c

    .line 102
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move v14, v5

    :goto_b
    const/4 v10, 0x0

    goto :goto_c

    :cond_1f
    move-object v10, v9

    move v14, v15

    :goto_c
    if-nez v10, :cond_20

    .line 103
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 104
    :cond_20
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v9, 0x1

    .line 105
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v20, 0x0

    move-object v8, v5

    move v10, v4

    move-object v11, v3

    const v3, 0x7f1100d1

    move v12, v3

    move v15, v4

    move/from16 v16, v17

    move-object/from16 v17, v2

    move/from16 v19, v6

    invoke-direct/range {v8 .. v20}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 106
    sput-object v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 107
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v1, v5}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_21
    move v5, v13

    .line 109
    iput-boolean v14, v0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    .line 110
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isGooglePhotosSupportedInCli(Z)Z

    move-result v2

    if-nez v2, :cond_22

    .line 111
    invoke-virtual {v0, v15}, Lcom/motorola/camera/Camera;->getActivityAnimationBundle(I)Landroid/os/Bundle;

    move-result-object v6

    .line 112
    :cond_22
    iget-object v2, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    .line 113
    invoke-static {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setBrightnessForLaunch(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 114
    iget v3, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    if-eqz v3, :cond_23

    .line 115
    iget-object v1, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.UID"

    const-string v4, "motcamera"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v1

    .line 117
    iget-object v1, v1, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 118
    new-instance v1, Lcom/motorola/camera/Camera$5;

    invoke-direct {v1, v0, v2, v6}, Lcom/motorola/camera/Camera$5;-><init>(Lcom/motorola/camera/Camera;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;)V

    goto/16 :goto_f

    .line 119
    :cond_24
    invoke-virtual {v0, v2, v15, v6}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_f

    .line 120
    :catch_4
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 121
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v18, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-static/range {v17 .. v17}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v7

    .line 123
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v7, :cond_28

    if-eq v7, v10, :cond_27

    if-eq v7, v11, :cond_25

    move v14, v15

    goto :goto_d

    .line 124
    :cond_25
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    move-object v10, v9

    goto :goto_e

    .line 125
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    move v14, v5

    :goto_d
    const/4 v10, 0x0

    goto :goto_e

    :cond_28
    move-object v10, v9

    move v14, v15

    :goto_e
    if-nez v10, :cond_29

    .line 126
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 127
    :cond_29
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v9, 0x1

    .line 128
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v20, 0x0

    move-object v8, v5

    move v10, v4

    move-object v11, v3

    const v3, 0x7f1100d1

    move v12, v3

    move v15, v4

    move/from16 v16, v17

    move-object/from16 v17, v2

    move/from16 v19, v6

    invoke-direct/range {v8 .. v20}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 129
    sput-object v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 130
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v1, v5}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_2a
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public final updateLocationSetting(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/LocationManager;->isPermissionGranted(Landroid/app/Activity;)Z

    move-result p0

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 6
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    .line 7
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 8
    invoke-static {v1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSplashPreview(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_DEF_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 8
    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 13
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 15
    invoke-virtual {v2, p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->getSplashPathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    const-string v1, "_"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_6

    const/4 v1, 0x1

    .line 19
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    if-eq v1, v2, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x2

    .line 21
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v1, 0x3

    .line 22
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x4

    .line 23
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz p1, :cond_5

    .line 24
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/Camera;Landroid/graphics/Bitmap;III)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    const p1, 0x7f0a0364

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 26
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v6, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, v7

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method
