.class public Lcom/motorola/camera/CameraApp;
.super Landroid/app/Application;
.source "CameraApp.java"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# static fields
.field public static final LOCALES_RTL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mColdTime:J

.field public static sInstance:Lcom/motorola/camera/CameraApp;


# instance fields
.field public mActivityRequestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

.field public mActivityResultCode:I

.field public mActivityWindows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field public mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

.field public mAppInitializedCond:Landroid/os/ConditionVariable;

.field private mCamcorderProfile:Landroid/media/CamcorderProfile;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public mCameraKpi:Lcom/motorola/camera/CameraKpi;

.field public mDesktopMode:Z

.field public mDisplayRotation:I

.field public mDisplaySize:Landroid/graphics/Point;

.field public mGestureNavEnable:Z

.field public mGestureNavInit:Z

.field public mHandler:Landroid/os/Handler;

.field public mInsetBottom:Ljava/lang/Integer;

.field public mInsetTop:Ljava/lang/Integer;

.field public mIsActivityOnResume:Z

.field public mIsActivityVisible:Z

.field public mIsColdStart:Z

.field public mIsMemPressureExpected:Z

.field public mIsSystemUser:Z

.field public mIsTopInsetInCenter:Z

.field public mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

.field public final mLock:Ljava/lang/Object;

.field public mMonkeyUser:Z

.field public mNavBarCliHeight:Ljava/lang/Integer;

.field public mNavBarSize:Landroid/graphics/Point;

.field public mNotchScreenUnuseHeight:I

.field public mOneNavBarEnable:Z

.field public mOneNavBarSize:Landroid/graphics/Point;

.field public mPreviewRect:Landroid/graphics/Rect;

.field public mRawSize:Landroid/graphics/Point;

.field public mResumeRefCount:I

.field public mSecure:Z

.field public mShouldUseMotorolaSettings:Z

.field public mStartRefCount:I

.field public mToast:Landroid/widget/Toast;

.field public mTrimMemoryLevel:I

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/motorola/camera/CameraApp;

    const-string v0, "ar"

    const-string v1, "fa"

    const-string v2, "iw"

    const-string/jumbo v3, "ur"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/motorola/camera/CameraApp;->mColdTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mIsTopInsetInCenter:Z

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 6
    sget-object v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->NONE:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    .line 8
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    .line 9
    iput v0, p0, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mOneNavBarEnable:Z

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mGestureNavEnable:Z

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    .line 13
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    .line 14
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mAppInitializedCond:Landroid/os/ConditionVariable;

    .line 15
    iput v1, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static access$000(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Camera"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SecureCamera"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CliCameraActivity"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static getInstance()Lcom/motorola/camera/CameraApp;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    return-object v0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.motorola.camera_preferences"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static waitForInstance(J)Z
    .locals 5

    const/4 v0, 0x5

    .line 1
    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v2, 0x0

    const-string v3, "CameraApp"

    if-nez v1, :cond_0

    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Camera app has not been initialized, waiting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x5

    .line 3
    div-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_0

    :catch_0
    return v2

    :cond_0
    if-nez v1, :cond_1

    const-string p0, "The Camera app has not been initialized yet!"

    .line 4
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_1
    iget-object v0, v1, Lcom/motorola/camera/CameraApp;->mAppInitializedCond:Landroid/os/ConditionVariable;

    invoke-virtual {v0, p0, p1}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearScreenBoundElementsSizes()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mNavBarSize:Landroid/graphics/Point;

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mNavBarCliHeight:Ljava/lang/Integer;

    .line 4
    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mInsetTop:Ljava/lang/Integer;

    .line 5
    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mInsetBottom:Ljava/lang/Integer;

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mOneNavBarSize:Landroid/graphics/Point;

    .line 7
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method

.method public defaultNavBarSize()Landroid/graphics/Point;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 3
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Point;->set(II)V

    :cond_0
    const-string v1, "navigation_bar_width"

    .line 5
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Point;->set(II)V

    :cond_1
    return-object v0
.end method

.method public getAppFeatures()Lcom/motorola/camera/AppFeatures;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    return-object p0
.end method

.method public getCameraActivityWindow()Landroid/view/Window;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    const-string v1, "Camera"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    const-string v1, "SecureCamera"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    const-string v0, "CliCameraActivity"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraKpi()Lcom/motorola/camera/CameraKpi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0}, Lcom/motorola/camera/CameraKpi;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    return-object p0
.end method

.method public getCliNavBarHeight()Ljava/lang/Integer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mNavBarCliHeight:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cli_navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mNavBarCliHeight:Ljava/lang/Integer;

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mNavBarCliHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public getDebugReportPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "com.motorola.camera_debug_report"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getInsetBottomSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mInsetBottom:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->setInsets()V

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mInsetBottom:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getInsetTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mInsetTop:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->setInsets()V

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mInsetTop:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNavBarSize()Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mNavBarSize:Landroid/graphics/Point;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/CameraApp;->mNavBarSize:Landroid/graphics/Point;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->defaultNavBarSize()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mNavBarSize:Landroid/graphics/Point;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mNavBarSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 0

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getWaterfallDisplayDimensionX()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraActivityWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    :goto_0
    const/4 v0, 0x0

    if-nez v1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 6
    iget v2, v1, Landroid/graphics/Insets;->left:I

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Insets;->top:I

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Insets;->right:I

    if-nez v2, :cond_5

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_6

    return v0

    .line 7
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraActivityWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_7

    return v0

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->left:I

    return p0
.end method

.method public getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 1

    .line 1
    new-instance p0, Landroidx/work/Configuration$Builder;

    invoke-direct {p0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/Configuration;

    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object v0
.end method

.method public hasSoftTSB()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->equals(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    const-string v0, "accessibility"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCameraActivityRunning()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCameraActivityStarted()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGestureNavigateEnabled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->updateOneNavBarState()V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mGestureNavEnable:Z

    return p0
.end method

.method public isOneNavBarEnabled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->updateOneNavBarState()V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mOneNavBarEnable:Z

    return p0
.end method

.method public isOneNavBarSupported()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_enableSoftOneNav"

    const-string v1, "bool"

    const-string v2, "android"

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRtlLayout()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-wide v2, Lcom/motorola/camera/CameraApp;->mColdTime:J

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sput-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    .line 7
    iput v0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mIsColdStart:Z

    .line 11
    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsHelper;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 12
    new-instance v1, Lcom/motorola/camera/service/JmsServiceInterface;

    invoke-direct {v1}, Lcom/motorola/camera/service/JmsServiceInterface;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    .line 14
    new-instance v1, Lcom/motorola/camera/CameraApp$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/CameraApp$1;-><init>(Lcom/motorola/camera/CameraApp;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    .line 16
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->INSTANCE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    const-string v1, "context"

    .line 17
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/CameraApp;->mAppInitializedCond:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 20
    sget-object v1, Lcom/google/android/material/color/DynamicColors;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 21
    new-instance v2, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;

    invoke-direct {v2, v0, v1}, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;-><init>(ILcom/google/android/material/color/DynamicColors$Precondition;)V

    invoke-virtual {p0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public setCamcorderProfile(Landroid/media/CamcorderProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    return-void
.end method

.method public setInsets()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    const-string v1, "Camera"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    const-string v1, "SecureCamera"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/Map;

    const-string v1, "CliCameraActivity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 7
    :cond_4
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v3

    .line 9
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 10
    iget-object v3, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 11
    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    if-ne v4, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v2

    .line 12
    :goto_1
    iput-boolean v3, p0, Lcom/motorola/camera/CameraApp;->mIsTopInsetInCenter:Z

    :cond_6
    if-nez v1, :cond_7

    move v1, v2

    goto :goto_2

    .line 13
    :cond_7
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 14
    :goto_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    if-lez v1, :cond_8

    .line 15
    iget v2, v0, Landroid/graphics/Insets;->top:I

    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mInsetTop:Ljava/lang/Integer;

    .line 16
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mInsetBottom:Ljava/lang/Integer;

    :cond_9
    :goto_3
    return-void
.end method

.method public setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 3
    iget p3, p1, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_0

    iget p3, p1, Landroid/graphics/Point;->y:I

    if-nez p3, :cond_1

    :cond_0
    move-object p1, p2

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    return-void
.end method

.method public showToast(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final updateOneNavBarState()V
    .locals 8

    const-string/jumbo v0, "systemui_softonenav_enabled"

    const/4 v1, -0x1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android"

    const-string v3, "integer"

    const-string v4, "config_navBarInteractionMode"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isOneNavBarSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mOneNavBarEnable:Z

    .line 6
    iput-boolean v5, p0, Lcom/motorola/camera/CameraApp;->mShouldUseMotorolaSettings:Z

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isOneNavBarSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, v6, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mOneNavBarEnable:Z

    .line 8
    iput-boolean v6, p0, Lcom/motorola/camera/CameraApp;->mShouldUseMotorolaSettings:Z

    .line 9
    :goto_2
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_3

    move v5, v6

    .line 12
    :cond_3
    iput-boolean v5, p0, Lcom/motorola/camera/CameraApp;->mGestureNavEnable:Z

    :cond_4
    return-void
.end method
