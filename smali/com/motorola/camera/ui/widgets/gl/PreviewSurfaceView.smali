.class public Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "PreviewSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;,
        Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;

.field public final mCarouselExcludeGestureRect:Landroid/graphics/Rect;

.field public mEGL10:Ljavax/microedition/khronos/egl/EGL10;

.field public mEGLHelper:Lcom/motorola/camera/utility/EGLHelper;

.field public mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field public mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public mExcludeGestureRect:Landroid/graphics/Rect;

.field public mFontScale:F

.field public mIsActive:Z

.field public mLargeScreenFlag:Z

.field public mMaxPresentationTimeNsec:J

.field public mMaxSurfaceSize:Landroid/graphics/Point;

.field public mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

.field public mShaderFactory:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

.field public mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public mSurfaceSize:Landroid/graphics/Point;

.field public mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

.field public mTranslucent:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 3
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 4
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mExcludeGestureRect:Landroid/graphics/Rect;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCarouselExcludeGestureRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mLargeScreenFlag:Z

    .line 8
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    .line 9
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 11
    instance-of v2, p2, Lcom/motorola/camera/Camera;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/motorola/camera/Camera;

    .line 12
    invoke-virtual {v2}, Lcom/motorola/camera/Camera;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, p1

    .line 13
    :goto_0
    invoke-static {p2, v2}, Lcom/google/android/play/core/assetpacks/zzbg;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v2

    .line 14
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v4

    .line 15
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxPresentationTimeNsec:J

    const-wide/16 v6, 0x2

    .line 16
    div-long v6, v4, v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxPresentationTimeNsec:J

    .line 17
    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    move p1, v3

    :cond_1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mLargeScreenFlag:Z

    .line 18
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    iget p1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->setupSurface(Landroid/graphics/Point;I)V

    .line 20
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    .line 21
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mShaderFactory:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    .line 22
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;-><init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$1;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 23
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;-><init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$1;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/16 v6, 0x8

    move-object v0, p0

    .line 24
    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    return-void
.end method


# virtual methods
.method public getEGLHelper()Lcom/motorola/camera/utility/EGLHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLHelper:Lcom/motorola/camera/utility/EGLHelper;

    return-object p0
.end method

.method public getPixelColor()V
    .locals 11

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/graphics/PointF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x64

    new-array v1, v1, [I

    .line 4
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v9, 0x0

    .line 5
    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    sub-int/2addr p0, v0

    add-int/lit8 v3, p0, -0x5

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->readPixels(IIIIIILjava/nio/Buffer;)V

    move p0, v9

    move v0, p0

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0xa

    if-ge p0, v5, :cond_2

    move v6, v9

    :goto_1
    if-ge v6, v5, :cond_1

    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v7, p0

    .line 7
    aget v7, v1, v7

    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v8

    add-int/2addr v3, v10

    add-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    div-int/2addr v2, v0

    .line 9
    div-int/2addr v3, v0

    .line 10
    div-int/2addr v4, v0

    const/high16 p0, -0x1000000

    and-int/lit16 v0, v2, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    and-int/lit16 v0, v3, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    and-int/lit16 v0, v4, 0xff

    or-int/2addr p0, v0

    .line 11
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SELECTIVE_COLOR_ROI_PIXEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mShaderFactory:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    return-object p0
.end method

.method public getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    return-object p0
.end method

.method public getUIScaleFactor()F
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    .line 5
    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result p1

    int-to-double v0, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    double-to-int p1, v2

    .line 7
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCarouselExcludeGestureRect:Landroid/graphics/Rect;

    sub-int p1, p5, p1

    .line 8
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v0

    sub-int/2addr p5, v0

    .line 10
    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 11
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mExcludeGestureRect:Landroid/graphics/Rect;

    aput-object p3, p1, p2

    const/4 p2, 0x1

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCarouselExcludeGestureRect:Landroid/graphics/Rect;

    aput-object p3, p1, p2

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mExcludeGestureRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mIsActive:Z

    .line 2
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Landroid/view/Choreographer$FrameCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mIsActive:Z

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/Choreographer$FrameCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCameraPreviewComponent(Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;

    return-void
.end method

.method public setExcludeGestureRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mExcludeGestureRect:Landroid/graphics/Rect;

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method

.method public setTranslucent(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTranslucent:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTranslucent:Z

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 4
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mTranslucent:Z

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceReCreated:Z

    .line 7
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, -0x3

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    return-void
.end method

.method public setupSurface(Landroid/graphics/Point;I)V
    .locals 11

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mLargeScreenFlag:Z

    if-eqz v1, :cond_0

    const v1, 0x298740

    goto :goto_0

    :cond_0
    const v1, 0x1fa400

    .line 3
    :goto_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_1

    .line 5
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    .line 6
    :cond_1
    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->getDpi(I)Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object p2

    .line 7
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    if-le v2, v1, :cond_6

    .line 8
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x0

    move-object v4, p2

    :goto_1
    move v5, v3

    :goto_2
    if-nez v5, :cond_5

    .line 9
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 10
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->values()[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v5

    if-lez v4, :cond_2

    add-int/lit8 v6, v4, -0x1

    goto :goto_3

    :cond_2
    move v6, v4

    :goto_3
    aget-object v5, v5, v6

    .line 11
    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    iget v7, p1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iget v9, p1, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    mul-float/2addr v9, v6

    float-to-int v6, v9

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Point;->set(II)V

    .line 12
    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    if-le v6, v1, :cond_4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    move-object v4, v5

    goto :goto_1

    :cond_4
    :goto_4
    const/4 v4, 0x1

    move-object v10, v5

    move v5, v4

    move-object v4, v10

    goto :goto_2

    :cond_5
    move-object p2, v4

    goto :goto_5

    .line 13
    :cond_6
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 14
    :goto_5
    invoke-virtual {v2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 15
    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 16
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Point;->set(II)V

    goto :goto_6

    .line 17
    :cond_7
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 18
    :goto_6
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {p1, v1, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 19
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    .line 20
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxSurfaceSize:Landroid/graphics/Point;

    .line 21
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 22
    sget-object p0, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/FastSettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
