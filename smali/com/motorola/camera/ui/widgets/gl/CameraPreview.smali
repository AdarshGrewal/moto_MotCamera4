.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "CameraPreview.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;
.implements Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;,
        Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;,
        Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;,
        Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;
    }
.end annotation


# static fields
.field public static final VIEW_MATRIX:[F


# instance fields
.field public mAlpha:F

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public mCaptureType:I

.field public mContinuousBlur:Z

.field public final mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

.field public final mDensity:F

.field public mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

.field public mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

.field public mEnableUiEvent:Z

.field public mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

.field public mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/utility/Flags<",
            "Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mFromMode:I

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mIsControlPanelOpened:Z

.field public mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

.field public mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

.field public mOffScreenPrj:[F

.field public mOrientation:I

.field public final mPreviewChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/ui/PreviewChange;",
            ">;"
        }
    .end annotation
.end field

.field public final mPreviewDiffList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/PreviewDiff;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

.field public mProcessUiEvent:Z

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public mSkipGestureDetector:Z

.field public mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

.field public mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

.field public mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

.field public mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

.field public mTeleMinZoom:I

.field public mToMode:I

.field public final mUiEventScale:F


# direct methods
.method public static $r8$lambda$w1ZRw41-r2fZt5KSjS4LdgcSXD8(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/motorola/camera/ui/PreviewChange;->mIdle:Z

    .line 3
    iput-boolean v1, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p1, 0x7

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    .line 5
    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    .line 9
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 13
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    .line 14
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/zzbg;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 16
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    .line 17
    new-instance p1, Landroid/view/GestureDetector;

    .line 18
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mGestureDetector:Landroid/view/GestureDetector;

    .line 20
    new-instance p1, Landroid/view/ScaleGestureDetector;

    .line 21
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 23
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    return-void
.end method

.method public static getViewMatrixOrigin()[F
    .locals 12

    .line 1
    sget-object v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-object v11
.end method

.method public static isSuperZoomMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized animateCapture()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    const-wide/16 v3, 0xc8

    const/4 v1, 0x3

    .line 7
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    if-ne v1, v5, :cond_2

    const/high16 v1, 0x3e800000    # 0.25f

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    :goto_1
    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 8
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 9
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$5;

    invoke-direct {v1, p0, p1, p5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;F)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 2
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 3
    iput-object p2, v8, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v8, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v8, p6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized animateFadeForGallery()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualShowSlave()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_0
    move-object v3, v0

    const-wide/16 v4, 0x12c

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final animateShowPreview()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    .line 4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    if-eqz v0, :cond_0

    const v1, 0x3ebd70a4    # 0.37f

    :cond_0
    move v7, v1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/4 v8, 0x6

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/4 v8, 0x6

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V

    :goto_0
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final animateViewfinderScale(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLjava/lang/Runnable;)V
    .locals 21

    move-object/from16 v12, p0

    move-object/from16 v9, p1

    .line 1
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 2
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mStencilSize:Landroid/util/SizeF;

    .line 3
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    cmpl-float v0, p3, p4

    if-lez v0, :cond_0

    .line 5
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    move v7, v0

    .line 6
    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FLandroid/util/SizeF;FLcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x64

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object v13, v15

    move-object v2, v15

    move-wide v15, v0

    move/from16 v17, p3

    move/from16 v18, p4

    invoke-direct/range {v13 .. v20}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 7
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 8
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animateViewfinderStencilCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x64

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v8, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p1, 0x6

    invoke-virtual {p0, v8, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 2
    iget v3, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 3
    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    const/4 v13, 0x0

    cmpl-float v5, v3, v13

    if-eqz v5, :cond_16

    cmpl-float v5, v2, v13

    if-nez v5, :cond_0

    goto/16 :goto_b

    .line 4
    :cond_0
    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    invoke-direct {v14}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>()V

    .line 5
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 6
    iget-object v6, v14, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    const/4 v6, 0x0

    neg-float v15, v3

    neg-float v12, v2

    const v11, 0x419feb85    # 19.99f

    const/high16 v16, 0x42100000    # 36.0f

    move v7, v15

    move v8, v3

    move v9, v12

    move v10, v2

    move/from16 v17, v12

    move/from16 v12, v16

    .line 7
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 8
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 9
    iget-object v6, v14, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    const/4 v6, 0x0

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v12, 0x42100000    # 36.0f

    move/from16 v9, v17

    .line 10
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 11
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 12
    iget-object v6, v14, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    const/4 v6, 0x0

    const v11, 0x419feb85    # 19.99f

    .line 13
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 14
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 15
    iget-object v6, v14, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    const/4 v6, 0x0

    const/high16 v11, 0x41200000    # 10.0f

    .line 16
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 17
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 18
    iput-object v14, v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    .line 19
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 20
    monitor-enter v5

    .line 21
    :try_start_0
    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v5

    .line 22
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale()F

    move-result v5

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v7

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v7, :cond_d

    .line 24
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 25
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v7

    .line 27
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v11, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 28
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v11, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 29
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 30
    invoke-direct {v3, v13, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 31
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 32
    invoke-direct {v7, v13, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 33
    iget v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview(I)Z

    move-result v11

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 35
    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v9}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v9

    int-to-float v9, v9

    iget-object v12, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v12}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v4

    sub-float/2addr v9, v12

    div-float/2addr v9, v4

    if-eqz v11, :cond_1

    move v12, v9

    goto :goto_0

    :cond_1
    neg-float v12, v9

    .line 36
    :goto_0
    invoke-virtual {v3, v13, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    if-eqz v11, :cond_2

    neg-float v9, v9

    .line 37
    :cond_2
    invoke-virtual {v7, v13, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 38
    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v9, :cond_3

    .line 39
    invoke-virtual {v9, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 40
    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v9, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_3
    move v8, v15

    move v12, v8

    const/4 v10, 0x4

    goto/16 :goto_6

    :cond_4
    if-eqz v11, :cond_5

    move v12, v9

    goto :goto_1

    :cond_5
    move v12, v15

    :goto_1
    if-eqz v11, :cond_6

    move/from16 v18, v15

    goto :goto_2

    :cond_6
    move/from16 v18, v9

    .line 41
    :goto_2
    iget-object v14, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v14

    int-to-float v14, v14

    const v19, 0x3cf5c28f    # 0.03f

    mul-float v14, v14, v19

    .line 42
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v8

    int-to-float v8, v8

    iget-object v13, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    sub-float/2addr v8, v13

    div-float/2addr v8, v4

    sub-float/2addr v8, v14

    .line 43
    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 44
    invoke-virtual {v13}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v13

    if-eqz v13, :cond_7

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v8, v13

    .line 45
    :cond_7
    iget-object v13, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v13

    int-to-float v13, v13

    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v10}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    sub-float/2addr v13, v10

    div-float/2addr v13, v4

    sub-float/2addr v13, v14

    .line 46
    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-nez v9, :cond_9

    if-eqz v11, :cond_8

    .line 47
    invoke-virtual {v3, v8, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_3

    .line 48
    :cond_8
    invoke-virtual {v7, v8, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_3

    :cond_9
    if-eqz v11, :cond_a

    move-object v3, v9

    goto :goto_3

    :cond_a
    move-object v7, v9

    .line 49
    :goto_3
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v8, :cond_c

    if-eqz v11, :cond_b

    move-object v8, v3

    goto :goto_4

    :cond_b
    move-object v8, v7

    .line 50
    :goto_4
    invoke-virtual {v2, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 51
    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v10, 0x4

    .line 52
    invoke-virtual {v9, v10, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 53
    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 54
    invoke-virtual {v9, v10, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 55
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource()V

    goto :goto_5

    :cond_c
    const/4 v10, 0x4

    :goto_5
    move/from16 v8, v18

    .line 56
    :goto_6
    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v9, v12, v12, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 57
    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v9, v8, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 58
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 59
    invoke-virtual {v8, v10, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 60
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 61
    invoke-virtual {v3, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 62
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 63
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    invoke-virtual {v2, v3, v7, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    const/4 v3, 0x1

    .line 64
    iput-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    .line 65
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v2, v5, v5, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 66
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const/4 v3, 0x2

    const/4 v7, 0x0

    .line 67
    invoke-virtual {v2, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 68
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 69
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 70
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 71
    invoke-virtual {v7, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 72
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 73
    invoke-virtual {v7, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 74
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v7, v4

    mul-float/2addr v7, v5

    iget v8, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v8, v4

    mul-float/2addr v8, v5

    invoke-virtual {v3, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 75
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 76
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    const/4 v8, 0x4

    .line 77
    invoke-virtual {v3, v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto/16 :goto_9

    .line 78
    :cond_d
    new-instance v7, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v7}, Lcom/motorola/camera/PreviewSize;-><init>()V

    .line 79
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 80
    invoke-virtual {v7, v8}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 81
    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v7, v8}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 82
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v8

    .line 83
    check-cast v8, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewCrop()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 84
    iget v10, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v10, v10

    .line 85
    iget-object v8, v8, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 86
    iget v8, v8, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    div-float/2addr v8, v4

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v8, v11

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, v7, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_8

    .line 87
    :cond_e
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 88
    sget-object v10, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v8, v10}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 89
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 90
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 91
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 92
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 93
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v8

    goto :goto_7

    .line 94
    :cond_f
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 95
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v8

    .line 96
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 97
    invoke-virtual {v10}, Lcom/motorola/camera/CameraApp;->getNavBarSize()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    const/4 v11, 0x2

    div-int/2addr v10, v11

    sub-int/2addr v8, v10

    .line 98
    :goto_7
    iget v10, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v10, v10

    .line 99
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 100
    invoke-virtual {v11}, Lcom/motorola/camera/CameraApp;->getInsetTop()I

    move-result v11

    sub-int/2addr v11, v8

    int-to-float v8, v11

    div-float/2addr v8, v4

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, v7, Lcom/motorola/camera/PreviewSize;->height:I

    .line 101
    :cond_10
    :goto_8
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 102
    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 103
    invoke-virtual {v8, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 104
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v8, v15, v15, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 105
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 106
    invoke-virtual {v8, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 107
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v6, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 108
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 109
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v11, 0x4

    .line 110
    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v10

    .line 111
    iget v10, v10, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v12, v10, v11

    if-eqz v12, :cond_11

    const/high16 v12, 0x43870000    # 270.0f

    cmpl-float v10, v10, v12

    if-nez v10, :cond_12

    .line 112
    :cond_11
    iget v10, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v12, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v13, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v8, v10, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 113
    :cond_12
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v12, 0x2

    .line 114
    invoke-virtual {v10, v12, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 115
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    .line 116
    invoke-virtual {v10, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 117
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v12, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v12, v4

    mul-float/2addr v12, v5

    iget v13, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v13, v4

    mul-float/2addr v13, v5

    invoke-virtual {v10, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 118
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 119
    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    const/4 v13, 0x4

    .line 120
    invoke-virtual {v10, v13, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 121
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 122
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v10, :cond_13

    const/4 v10, 0x0

    .line 123
    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v12

    .line 124
    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 125
    invoke-virtual {v12}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v11

    int-to-float v13, v10

    mul-float/2addr v11, v13

    float-to-int v11, v11

    const/high16 v14, 0x41800000    # 16.0f

    .line 126
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v9, v14

    float-to-int v9, v9

    .line 127
    new-instance v14, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v14, v10, v11}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 128
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v10, v14, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 129
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v7, v15, v15, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 130
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v10, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    div-float v14, v13, v4

    sub-float/2addr v10, v14

    int-to-float v9, v9

    sub-float/2addr v10, v9

    iget v14, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v14, v6

    int-to-float v11, v11

    div-float v20, v11, v4

    sub-float v14, v14, v20

    sub-float/2addr v14, v9

    const/4 v9, 0x0

    invoke-direct {v7, v10, v14, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 131
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v10, 0x4

    .line 132
    invoke-virtual {v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 133
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 134
    invoke-virtual {v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 135
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 136
    invoke-virtual {v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 137
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 138
    invoke-virtual {v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 139
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v7, v13, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 140
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v9, v15

    add-float v10, v9, v13

    add-float/2addr v9, v11

    invoke-virtual {v7, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 141
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 142
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 143
    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 144
    invoke-static {v7}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v9

    if-eqz v9, :cond_13

    mul-float/2addr v13, v7

    .line 145
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    int-to-float v7, v7

    mul-float/2addr v13, v7

    float-to-int v7, v13

    .line 146
    invoke-virtual {v12}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v9

    int-to-float v7, v7

    mul-float/2addr v9, v7

    float-to-int v9, v9

    .line 147
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float v9, v9

    invoke-virtual {v10, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 148
    :cond_13
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 149
    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 150
    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 151
    invoke-virtual {v7, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 152
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const v9, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v7, v9, v9, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 153
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 154
    invoke-virtual {v7, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 155
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 156
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v9

    div-float/2addr v9, v4

    sub-float/2addr v3, v9

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 157
    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v9

    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v9, v10

    sub-float/2addr v2, v9

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 158
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v9

    div-float/2addr v9, v4

    sub-float/2addr v2, v9

    const/4 v9, 0x0

    .line 159
    invoke-virtual {v7, v3, v2, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    move-object v2, v8

    .line 160
    :goto_9
    new-instance v3, Landroid/graphics/Rect;

    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v7, v4

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v2, v4

    mul-float/2addr v2, v5

    .line 161
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 162
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 163
    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 164
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 165
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 166
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 167
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 168
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iput-object v3, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 170
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 171
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 172
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v0}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-eqz v1, :cond_14

    goto :goto_a

    .line 174
    :cond_14
    iget-object v1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter v1

    .line 175
    :try_start_1
    iget-object v2, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->area(Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 176
    iget-object v2, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->area(Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit v1

    .line 178
    iput-object v3, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 179
    monitor-exit v1

    throw v0

    :cond_15
    :goto_a
    return-void

    :catchall_1
    move-exception v0

    .line 180
    monitor-exit v5

    throw v0

    :cond_16
    :goto_b
    return-void
.end method

.method public final clearMeisheEffects()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    .line 3
    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_clear_meishe_effect_thumbnails()V

    .line 5
    sget-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/List;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final copyFrame(Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;[F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 5
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDrawFbo([F[F)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized copyPreviewFrame(Lcom/motorola/camera/fsm/ChangeEvent;)V
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

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 5
    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x7

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v1, v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 9
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    move v4, v5

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 11
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 18
    iput-boolean v5, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final darkenPreview(Z)V
    .locals 10

    if-eqz p1, :cond_0

    const p1, 0x3ebd70a4    # 0.37f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 3
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    const-wide/16 v2, 0xc8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v9

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 12
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    return-void
.end method

.method public final deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    .line 6
    monitor-enter p0

    const/4 v4, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 8
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v5}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 9
    invoke-static {v5}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 10
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 14
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    monitor-exit p0

    goto :goto_1

    .line 16
    :cond_3
    :goto_0
    monitor-exit p0

    .line 17
    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    .line 18
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v6

    .line 19
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSlavePreviewImageReader()Landroid/media/ImageReader;

    move-result-object v7

    .line 20
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSubPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v5

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 22
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 23
    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    .line 24
    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCallbackCount:I

    .line 25
    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCount:I

    .line 26
    iput-boolean v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mUpdateAvailable:Z

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    goto :goto_2

    .line 30
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    .line 31
    :goto_2
    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 32
    iput-boolean v0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 33
    invoke-virtual {v8, v6, v9, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    .line 34
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 35
    iput-boolean v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 36
    invoke-virtual {v5, v7, v9, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto/16 :goto_7

    .line 37
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    .line 38
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCameraPreviewNeedReprocess()Z

    move-result v11

    .line 40
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 41
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v4

    goto :goto_3

    :cond_6
    move v10, v0

    .line 42
    :goto_3
    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 43
    iput-boolean v11, v12, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 45
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 46
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v12

    .line 47
    invoke-virtual {v10, v8, v12, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto :goto_4

    .line 48
    :cond_7
    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v12, v8, v9, v10, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    .line 49
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 50
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 51
    iput-boolean v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-virtual {v6, v8, v9, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto :goto_5

    .line 54
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 55
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 56
    iput-boolean v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-virtual {v6, v10, v9, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    .line 58
    :cond_9
    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 59
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v6, :cond_b

    .line 60
    iput-boolean v4, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 61
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 62
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 63
    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    .line 64
    :goto_6
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v7, v8, v6, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    .line 65
    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableFpsReporting()V

    .line 66
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 68
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_8

    .line 69
    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 70
    monitor-enter v0

    .line 71
    :try_start_1
    iput-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    monitor-exit v0

    .line 73
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 74
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_d

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    .line 76
    monitor-enter p1

    .line 77
    :try_start_2
    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    monitor-exit p1

    goto :goto_8

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_1
    move-exception p0

    .line 79
    monitor-exit v0

    throw p0

    .line 80
    :cond_d
    :goto_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateViewfinder()V

    .line 81
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V

    .line 82
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 83
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_e

    const-string p0, "CameraPreview"

    const-string p1, "deferInitSurface dur:"

    .line 85
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :catchall_2
    move-exception p1

    .line 86
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized enableFpsReporting()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_PREVIEW_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 7
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v3

    const/4 v4, 0x2

    .line 8
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 11
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 13
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameTimeEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 16
    :cond_3
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    :cond_4
    move v1, v2

    .line 17
    :cond_5
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    :try_start_3
    iput-boolean v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameTimeEnable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 21
    :try_start_5
    monitor-exit v5

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;[F[F)V
    .locals 8

    const/16 p0, 0xb90

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    const/16 p0, 0x1e00

    const/16 v0, 0x1e01

    .line 2
    invoke-static {p0, p0, v0}, Landroid/opengl/GLES20;->glStencilOp(III)V

    const-string v0, "glStencilOp"

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v1, 0x400

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const-string v2, "glColorMask"

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    const-string v3, "glDepthMask"

    .line 8
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v4, 0x207

    const/4 v5, 0x1

    const/16 v6, 0xff

    .line 9
    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const-string v4, "glStencilFunc"

    .line 10
    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 11
    invoke-static {v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    .line 12
    iget-boolean v7, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onDraw([F[F)V

    .line 13
    :cond_0
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 14
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 15
    invoke-static {v5}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 16
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p0, p0}, Landroid/opengl/GLES20;->glStencilOp(III)V

    .line 18
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 p0, 0x202

    .line 19
    invoke-static {p0, v5, v6}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    .line 20
    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 21
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    return-void
.end method

.method public declared-synchronized getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$4;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-direct {v0, p0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    :goto_0
    return-object p0

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/PreviewSize;->scale(F)Lcom/motorola/camera/PreviewSize;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    new-instance p0, Lcom/motorola/camera/PreviewSize;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast p1, Landroid/util/Size;

    invoke-direct {p0, p1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    return-object p0
.end method

.method public final getScissorRect(F)Landroid/graphics/Rect;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    if-eqz v0, :cond_0

    const/16 v4, 0xb4

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    invoke-static {v0, p1}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v0

    div-float v0, p1, v0

    .line 7
    :goto_3
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v4

    invoke-static {v4, p1}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_4
    move v1, v2

    goto :goto_5

    :cond_5
    if-nez v1, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v1

    div-float v1, p1, v1

    :goto_5
    cmpl-float v4, v1, v2

    if-lez v4, :cond_7

    div-float/2addr v0, v1

    goto :goto_6

    :cond_7
    move v2, v1

    .line 9
    :goto_6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    .line 10
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(I)F

    move-result v4

    .line 11
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v6

    mul-float/2addr v7, v2

    mul-float/2addr v7, v4

    float-to-int v2, v7

    .line 12
    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v5

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    float-to-int v0, v7

    sub-int/2addr v6, v2

    .line 13
    div-int/2addr v6, v3

    sub-int/2addr v5, v0

    .line 14
    div-int/2addr v5, v3

    .line 15
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr p0, v0

    div-int/2addr p0, v3

    goto :goto_9

    .line 17
    :cond_8
    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 18
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v3

    .line 19
    invoke-static {p1, v3}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 21
    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    :goto_7
    mul-float/2addr v1, p0

    :goto_8
    sub-float/2addr p1, v1

    float-to-int p0, p1

    goto :goto_9

    .line 22
    :cond_9
    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 23
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v3

    .line 24
    invoke-static {p1, v3}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 25
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 26
    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v3, v4

    sub-float/2addr p1, v3

    .line 27
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    .line 29
    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr p0, v0

    :goto_9
    add-int/2addr v2, v6

    add-int/2addr v0, p0

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v6, p0, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/Collection;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 7
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 9
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraPreview"

    return-object p0
.end method

.method public final handleHDR10ModeState(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_f

    .line 2
    iget-object v5, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v5

    .line 4
    iget-object v6, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 7
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v11, "BANNER_SWITCH"

    .line 8
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    new-array v7, v7, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v2, v7, v9

    aput-object v1, v7, v8

    .line 12
    invoke-static {v5, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v1

    if-ne v5, v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    const/4 v2, -0x1

    const-string v5, "FROM_FACING"

    .line 13
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v5

    :cond_1
    if-eqz v0, :cond_3

    if-ne v5, v8, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v8

    goto :goto_1

    :cond_3
    move v7, v5

    .line 15
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v10

    const-string v11, "MODE"

    .line 16
    invoke-virtual {p1, v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v2, :cond_4

    move v11, v10

    :cond_4
    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "SRC_MODE"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v10

    :goto_3
    if-ne p1, v2, :cond_7

    goto :goto_4

    :cond_7
    move v10, p1

    .line 18
    :goto_4
    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->ENTER_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    if-eq v6, p1, :cond_9

    if-nez v6, :cond_8

    .line 19
    invoke-static {v11, v7}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move p1, v9

    goto :goto_6

    :cond_9
    :goto_5
    move p1, v8

    .line 20
    :goto_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->EXIT_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    if-eq v6, v0, :cond_b

    if-nez v6, :cond_a

    .line 21
    invoke-static {v10, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    move v0, v9

    goto :goto_8

    :cond_b
    :goto_7
    move v0, v8

    .line 22
    :goto_8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v0, v3}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, p1, v4}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    if-nez v1, :cond_d

    .line 26
    :cond_c
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_d
    return v8

    :cond_e
    return v9

    .line 28
    :cond_f
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    return v8

    :cond_10
    return v9

    .line 31
    :cond_11
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 32
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_9

    .line 33
    :cond_12
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 34
    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    .line 35
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 36
    iget-object v6, v6, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 37
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 38
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v6, 0x7

    new-array v6, v6, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v10, v6, v9

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v10, v6, v8

    aput-object v0, v6, v7

    const/4 v0, 0x3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v6, v0

    const/4 v0, 0x4

    aput-object v2, v6, v0

    const/4 v0, 0x5

    aput-object v1, v6, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v1, v6, v0

    .line 39
    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 40
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 41
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateShowPreview()V

    :cond_13
    return v8

    .line 43
    :cond_14
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 44
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 45
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 46
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    return v9

    .line 47
    :cond_16
    :goto_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v2

    .line 49
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 50
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 51
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 52
    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    .line 53
    invoke-virtual {p0, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    return v8

    .line 54
    :cond_17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 55
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 56
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 57
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 58
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_19

    .line 59
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;)V

    goto :goto_a

    .line 60
    :cond_18
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 61
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 62
    invoke-virtual {p0, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    .line 63
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewClear()Z

    :cond_19
    :goto_a
    return v8

    :cond_1a
    return v9
.end method

.method public final isDualCaptureTextureEnabled()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 17

    move-object/from16 v8, p0

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 2
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    iget-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    .line 3
    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    .line 4
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x1

    sget-object v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v6, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v5, v10

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 5
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x0

    iget-object v6, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v5, v10

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v4, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v1, v2, v3, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 8
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$3;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x0

    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v6, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 10
    :cond_1
    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v1, v8}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    .line 11
    new-instance v1, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    .line 12
    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v1, v8}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    .line 13
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_PREVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 14
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 16
    :cond_2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_75_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;Z)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 18
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v4, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v1, v3, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 20
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 21
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {v1, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 23
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/high16 v4, 0x41400000    # 12.0f

    iget v5, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v5, v4

    .line 24
    iput v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    .line 25
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_3

    .line 26
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 27
    invoke-virtual {v1, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 28
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    const/high16 v9, 0x41000000    # 8.0f

    mul-float/2addr v7, v9

    .line 29
    iput v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    .line 30
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 31
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f0603ab

    .line 32
    invoke-virtual {v10, v11}, Landroid/app/Application;->getColor(I)I

    move-result v10

    invoke-direct {v1, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 33
    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v7, v3

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 34
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v7, v4

    .line 35
    iput v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 36
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 37
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 38
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 39
    invoke-virtual {v10, v11}, Landroid/app/Application;->getColor(I)I

    move-result v10

    invoke-direct {v1, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 40
    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v7, v3

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 41
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v7, v9

    .line 42
    iput v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 43
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 44
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 45
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 46
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 47
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 48
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    .line 49
    :cond_3
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 50
    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 51
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    array-length v9, v1

    invoke-static {v1, v0, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 53
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 54
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 55
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 56
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 57
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 58
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_4

    .line 59
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 60
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 61
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 62
    :cond_4
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 63
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxSurfaceSize:Landroid/graphics/Point;

    .line 64
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    .line 65
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v5, v5

    div-float v12, v5, v4

    int-to-float v1, v1

    div-float v14, v1, v4

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 66
    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOffScreenPrj:[F

    .line 67
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 68
    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOffScreenPrj:[F

    const/4 v10, 0x0

    neg-float v11, v12

    neg-float v13, v14

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x41a00000    # 20.0f

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 69
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    .line 70
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    .line 71
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->loadTexture()V

    .line 72
    :cond_5
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->loadTexture()V

    .line 73
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    iget-object v5, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    .line 74
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->loadTexture()V

    .line 75
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 76
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 77
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    .line 79
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 80
    invoke-virtual {v6}, Lcom/motorola/camera/CameraApp;->getCliNavBarHeight()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    .line 81
    invoke-virtual {v1, v2, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 82
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {v1, v7, v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    :cond_6
    const/4 v1, 0x7

    .line 83
    iput v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    .line 84
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 85
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 86
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 87
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 88
    invoke-virtual {v8, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerListener(Z)V

    .line 89
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v5, v1, v2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 90
    new-instance v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-direct {v1}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;-><init>()V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    .line 91
    invoke-virtual {v8, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    .line 92
    iget-object v0, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 93
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    .line 94
    invoke-static {v0, v1, v2, v3}, Lcom/motorola/camera/PreviewUtils;->initPreviewRatio(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;Lcom/motorola/camera/PreviewSize;FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return v5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    .line 2
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {p0, p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;[F[F)V

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const v0, 0x3cf5c28f    # 0.03f

    cmpg-float p3, p3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    const/16 v2, 0x303

    if-eqz p3, :cond_2

    .line 5
    invoke-static {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 7
    :goto_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 8
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 10
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 11
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onDraw([F[F)V

    .line 12
    :cond_4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 13
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->onDraw([F[F)V

    .line 14
    :cond_5
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 15
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDraw([F[F)V

    :cond_6
    const/4 p3, -0x1

    .line 16
    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    const/16 v0, 0xb90

    .line 17
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->disable(I)V

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 19
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v3, :cond_9

    .line 20
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {p0, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;[F[F)V

    .line 21
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 22
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_7

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    .line 23
    :cond_7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 24
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_8

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 25
    :cond_8
    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    .line 26
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->disable(I)V

    .line 27
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 28
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 29
    :cond_9
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 30
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    .line 31
    :cond_a
    invoke-static {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 32
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    .line 33
    invoke-virtual {p1}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-boolean p2, p1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-eqz p2, :cond_b

    goto :goto_2

    .line 34
    :cond_b
    iget-object p2, p1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->savePreviewPixelsIntoBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    :cond_c
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDrawFbo([F[F[F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 2
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDrawFbo([F[F)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p3, :cond_1

    .line 5
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDrawFbo([F[F)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 8
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->onDrawFbo([F[F)V

    .line 9
    :cond_2
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 10
    iget-boolean p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    .line 11
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 12
    iget-object p3, p3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 13
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p0, p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->copyFrame(Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;[F[F)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 15
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 16
    :goto_0
    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    .line 17
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz p3, :cond_6

    .line 18
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p3

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p3, p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-gez p3, :cond_5

    .line 19
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 20
    :cond_5
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 21
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 22
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 23
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDrawFbo([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPreDraw([F[F[F)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 2
    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p3, :cond_0

    .line 5
    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onPreDraw([F[F)V

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->onPreDraw()Z

    .line 9
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, p3

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    :cond_3
    move p2, p3

    .line 16
    :cond_4
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRotate(I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale()F

    move-result v0

    .line 8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v5, v4

    mul-float/2addr v5, v0

    invoke-virtual {v2, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v3, 0x2

    .line 15
    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 16
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, v4

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    .line 18
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 19
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 20
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object v2, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setDisplayOrientation(I)V

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    .line 27
    iput p1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->orientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->FIRST_FRAME_RECEIVED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v2, :cond_10

    iget v2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_f

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 4
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 7
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 9
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_a

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 11
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 13
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 15
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 16
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 18
    iput v3, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 22
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "<set-?>"

    .line 25
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p2, p1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->viewSize:Lcom/motorola/camera/PreviewSize;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    .line 29
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 30
    invoke-virtual {v2, p1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 31
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    .line 32
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 33
    invoke-virtual {p1, p2}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    .line 35
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_9

    .line 36
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 37
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 39
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVisibility(Z)V

    goto :goto_0

    .line 40
    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_1

    .line 42
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 43
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 45
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 46
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 47
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 48
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 49
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 51
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_9

    .line 52
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 53
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 54
    :cond_9
    :goto_1
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V

    .line 55
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 56
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 58
    :cond_a
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 59
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_e

    .line 60
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 61
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 62
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 63
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVisibility(Z)V

    .line 64
    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_3

    .line 65
    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 66
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 67
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 68
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 69
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 70
    :cond_d
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 71
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 72
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 74
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_e

    .line 75
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 76
    :cond_e
    :goto_3
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 78
    :cond_f
    :goto_4
    monitor-exit p0

    return-void

    .line 79
    :cond_10
    :goto_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 3
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v3, :cond_0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 5
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_3

    .line 7
    monitor-exit p0

    return v2

    .line 8
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_5

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v4, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->shouldProcessUiEventStream(FF)Z

    move-result v0

    goto :goto_3

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 13
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 14
    :try_start_4
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v0

    move v0, v2

    .line 15
    :goto_3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z

    .line 16
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 17
    monitor-exit v0

    throw p1

    .line 18
    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_6

    monitor-exit p0

    return v2

    .line 19
    :cond_6
    :try_start_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 20
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v1, :cond_7

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    .line 24
    :cond_7
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    :cond_8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 27
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onScrollEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 29
    :cond_9
    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v5, 0x34

    if-eq p1, v5, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 12
    invoke-virtual {p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p1

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 16
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 18
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewFinderType:I

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 20
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewFinderType:I

    .line 21
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 23
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVerticesData()V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v1, 0x3

    .line 27
    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 28
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 29
    invoke-virtual {p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 30
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_1
    const-string p1, "MODE"

    .line 32
    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "MODE_DIRECTION"

    .line 33
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "USE_CASE"

    .line 35
    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "SWITCH_CASE"

    .line 36
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_LAYOUT:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "DUAL_CAPTURE_LAYOUT_TYPE"

    .line 37
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_3

    .line 40
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :pswitch_2
    const-string p1, "MODE"

    .line 41
    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "MODE_DIRECTION"

    .line 42
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 43
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "USE_CASE"

    .line 44
    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "SWITCH_CASE"

    .line 45
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_CAMERA_GROUP:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "DUAL_CAPTURE_CAMERA_GROUP_TYPE"

    .line 46
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 48
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_3

    .line 49
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateCapture()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onZoomCompleted()V
    .locals 0

    return-void
.end method

.method public onZoomStateChange(Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;FFLcom/motorola/camera/settings/CameraType;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p3}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object p1

    const/high16 p2, 0x42b40000    # 90.0f

    .line 8
    iget p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr p4, p2

    mul-float/2addr p4, p3

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    int-to-float p2, p2

    mul-float/2addr p4, p2

    float-to-int p2, p4

    .line 9
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final previewClear()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/PreviewDiff;

    .line 2
    iget-boolean v1, v1, Lcom/motorola/camera/PreviewDiff;->mFinish:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return v0
.end method

.method public final declared-synchronized previewModeChange(IIIZZZ)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    .line 2
    iput p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    .line 3
    iput p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    .line 4
    iput p3, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    .line 5
    iput-boolean p4, v0, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    .line 6
    iput-boolean p5, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    .line 7
    iput-boolean p6, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 27

    move-object/from16 v9, p0

    move-object/from16 v3, p1

    .line 1
    sget-object v0, Lcom/motorola/camera/PreviewDiff$Action;->FADE:Lcom/motorola/camera/PreviewDiff$Action;

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_16

    .line 2
    :goto_0
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 3
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/PreviewChange;

    .line 4
    iget-boolean v5, v1, Lcom/motorola/camera/ui/PreviewChange;->mIdle:Z

    if-eqz v5, :cond_3

    .line 5
    iget-boolean v1, v1, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 6
    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/motorola/camera/PreviewDiff;

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 8
    iget-object v5, v7, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    if-ne v5, v0, :cond_1

    move v5, v10

    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    if-eqz v5, :cond_2

    .line 9
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 10
    iput-boolean v10, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_3

    .line 11
    :cond_2
    new-instance v5, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v5}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    .line 12
    iput-object v0, v5, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 13
    iput-boolean v1, v5, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    .line 14
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 16
    iput-boolean v10, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_3

    .line 17
    :cond_3
    iget-boolean v5, v1, Lcom/motorola/camera/ui/PreviewChange;->mZoom:Z

    if-eqz v5, :cond_4

    .line 18
    iget v5, v1, Lcom/motorola/camera/ui/PreviewChange;->mOrgZoom:F

    iget v7, v1, Lcom/motorola/camera/ui/PreviewChange;->mTargetZoom:F

    iget-boolean v1, v1, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 19
    new-instance v8, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v8}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    .line 20
    sget-object v11, Lcom/motorola/camera/PreviewDiff$Action;->ZOOM:Lcom/motorola/camera/PreviewDiff$Action;

    iput-object v11, v8, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 21
    iput-boolean v1, v8, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    .line 22
    iput v5, v8, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    .line 23
    iput v7, v8, Lcom/motorola/camera/PreviewDiff;->mScale:F

    .line 24
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 26
    iput-boolean v10, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :goto_3
    move v2, v10

    goto/16 :goto_b

    .line 27
    :cond_4
    iget v5, v1, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iget v8, v1, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget v11, v1, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    iget-boolean v12, v1, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    iget-boolean v13, v1, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    iget-boolean v1, v1, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 28
    sget-object v14, Lcom/motorola/camera/PreviewDiff$Action;->SCALE:Lcom/motorola/camera/PreviewDiff$Action;

    sget-object v15, Lcom/motorola/camera/PreviewDiff$Action;->CROP:Lcom/motorola/camera/PreviewDiff$Action;

    sget-object v7, Lcom/motorola/camera/PreviewDiff$Action;->FREE_FORM_DUAL_CAPTURE:Lcom/motorola/camera/PreviewDiff$Action;

    sget-object v6, Lcom/motorola/camera/PreviewDiff$Action;->NONE:Lcom/motorola/camera/PreviewDiff$Action;

    if-eqz v12, :cond_5

    .line 29
    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v11

    .line 30
    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v11

    goto :goto_4

    .line 31
    :cond_5
    iget-object v12, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 32
    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 33
    iget-object v12, v12, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 34
    invoke-virtual {v12}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->getAspectRatio()F

    move-result v12

    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 35
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    .line 36
    invoke-static {v8, v11, v12, v13, v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getPreviewRatio(IIFZZ)F

    move-result v11

    .line 37
    :goto_4
    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 38
    iget-object v12, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    .line 39
    :cond_6
    iget-object v12, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    sub-int/2addr v4, v10

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/PreviewDiff;

    .line 40
    :goto_5
    iget-object v12, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v12

    const/16 v13, 0x3e8

    if-eqz v4, :cond_c

    .line 41
    iget-object v10, v4, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    if-ne v10, v0, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    if-nez v10, :cond_c

    .line 42
    iget v7, v4, Lcom/motorola/camera/PreviewDiff;->mSourceRatio:F

    .line 43
    iget v10, v4, Lcom/motorola/camera/PreviewDiff;->mTargetRatio:F

    .line 44
    invoke-static {v12, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result v18

    if-eqz v18, :cond_8

    if-eq v8, v13, :cond_8

    .line 45
    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v7

    .line 46
    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v10

    goto :goto_7

    .line 47
    :cond_8
    invoke-static {v12, v8}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eq v5, v13, :cond_9

    .line 48
    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v7

    .line 49
    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v5

    .line 50
    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v8

    goto :goto_8

    :cond_9
    :goto_7
    move v5, v10

    move v8, v11

    .line 51
    :goto_8
    invoke-static {v12, v7, v5, v8}, Lcom/motorola/camera/PreviewUtils;->getPreviewRatio(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;FFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v5

    .line 52
    new-instance v7, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v7, v4}, Lcom/motorola/camera/PreviewDiff;-><init>(Lcom/motorola/camera/PreviewDiff;)V

    if-nez v5, :cond_a

    .line 53
    iput-object v6, v7, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 54
    iput v11, v7, Lcom/motorola/camera/PreviewDiff;->mTargetRatio:F

    goto/16 :goto_a

    .line 55
    :cond_a
    iget v6, v5, Lcom/motorola/camera/PreviewRatio;->ratio:F

    cmpl-float v10, v6, v2

    if-lez v10, :cond_b

    .line 56
    iput-object v14, v7, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 57
    iget v4, v4, Lcom/motorola/camera/PreviewDiff;->mScale:F

    iput v4, v7, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    .line 58
    iput v6, v7, Lcom/motorola/camera/PreviewDiff;->mScale:F

    .line 59
    iget v4, v5, Lcom/motorola/camera/PreviewRatio;->translate:F

    iput v4, v7, Lcom/motorola/camera/PreviewDiff;->mScaleTranslate:F

    .line 60
    iput v8, v7, Lcom/motorola/camera/PreviewDiff;->mTargetRatio:F

    goto/16 :goto_a

    .line 61
    :cond_b
    iput-object v15, v7, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 62
    iget v4, v5, Lcom/motorola/camera/PreviewRatio;->cropEnd:F

    iput v4, v7, Lcom/motorola/camera/PreviewDiff;->mCropAspect:F

    .line 63
    iget v5, v5, Lcom/motorola/camera/PreviewRatio;->cropBegin:F

    iput v5, v7, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    .line 64
    iput v4, v7, Lcom/motorola/camera/PreviewDiff;->mTargetRatio:F

    goto/16 :goto_a

    :cond_c
    if-nez v4, :cond_d

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    .line 66
    :cond_d
    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    float-to-int v4, v4

    .line 67
    iget-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v10

    float-to-int v10, v10

    .line 68
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v2, v4, v10}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 69
    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v2

    .line 70
    invoke-static {v12, v2, v2, v11}, Lcom/motorola/camera/PreviewUtils;->getPreviewRatio(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;FFF)Lcom/motorola/camera/PreviewRatio;

    move-result-object v4

    .line 71
    new-instance v10, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v10}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    .line 72
    iput v5, v10, Lcom/motorola/camera/PreviewDiff;->mFromMode:I

    .line 73
    iput v8, v10, Lcom/motorola/camera/PreviewDiff;->mToMode:I

    .line 74
    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 75
    iget-boolean v13, v13, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v13, :cond_10

    .line 76
    sget-object v4, Lcom/motorola/camera/PreviewDiff$Action;->FREE_FORM:Lcom/motorola/camera/PreviewDiff$Action;

    iput-object v4, v10, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 77
    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 78
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 79
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v6, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 80
    :cond_e
    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    iget-object v7, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v7

    div-float/2addr v8, v11

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/motorola/camera/Util;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/motorola/camera/Util$PreviewFitTransform;

    move-result-object v5

    .line 81
    new-instance v6, Landroid/graphics/RectF;

    iget v7, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v8, v7

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v11, v4

    invoke-direct {v6, v8, v11, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    .line 82
    iget-object v4, v5, Lcom/motorola/camera/Util$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 83
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 84
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v6, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 85
    :cond_f
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v7, v6

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v8, v4

    invoke-direct {v5, v7, v8, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    goto/16 :goto_9

    .line 86
    :cond_10
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 87
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 88
    move-object v13, v12

    check-cast v13, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewUnder()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 89
    iput-object v6, v10, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 90
    iput v2, v10, Lcom/motorola/camera/PreviewDiff;->mTargetRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 91
    iput v4, v10, Lcom/motorola/camera/PreviewDiff;->mScale:F

    goto/16 :goto_9

    .line 92
    :cond_11
    invoke-static {v12, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x3e8

    if-eq v8, v13, :cond_12

    .line 93
    iput-object v7, v10, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 94
    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    iget-object v7, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v7

    sget-object v13, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 95
    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v13

    div-float/2addr v8, v13

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const/4 v7, 0x0

    .line 96
    invoke-static {v4, v6, v7}, Lcom/motorola/camera/Util;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/motorola/camera/Util$PreviewFitTransform;

    move-result-object v4

    .line 97
    check-cast v12, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v12, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(I)F

    move-result v5

    .line 98
    new-instance v6, Landroid/graphics/RectF;

    iget-object v4, v4, Lcom/motorola/camera/Util$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v8, v7

    mul-float/2addr v8, v5

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v12, v4

    mul-float/2addr v12, v5

    mul-float/2addr v7, v5

    mul-float/2addr v4, v5

    invoke-direct {v6, v8, v12, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    .line 99
    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v5, Lcom/motorola/camera/PreviewSize;

    iget-object v6, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v6

    div-float/2addr v7, v11

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/motorola/camera/Util;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/motorola/camera/Util$PreviewFitTransform;

    move-result-object v4

    .line 100
    new-instance v5, Landroid/graphics/RectF;

    iget-object v4, v4, Lcom/motorola/camera/Util$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v7, v6

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v8, v4

    invoke-direct {v5, v7, v8, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    goto/16 :goto_9

    .line 101
    :cond_12
    invoke-static {v12, v8}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 102
    iput-object v7, v10, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 103
    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v5, Lcom/motorola/camera/PreviewSize;

    iget-object v6, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v6

    div-float/2addr v7, v2

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/motorola/camera/Util;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/motorola/camera/Util$PreviewFitTransform;

    move-result-object v4

    .line 104
    new-instance v5, Landroid/graphics/RectF;

    iget-object v4, v4, Lcom/motorola/camera/Util$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v7, v6

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v11, v4

    invoke-direct {v5, v7, v11, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    .line 105
    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v5, Lcom/motorola/camera/PreviewSize;

    iget-object v6, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v6

    sget-object v11, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 106
    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v11

    div-float/2addr v7, v11

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    const/4 v6, 0x0

    .line 107
    invoke-static {v4, v5, v6}, Lcom/motorola/camera/Util;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/motorola/camera/Util$PreviewFitTransform;

    move-result-object v4

    .line 108
    check-cast v12, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v12, v8}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(I)F

    move-result v5

    .line 109
    new-instance v6, Landroid/graphics/RectF;

    iget-object v4, v4, Lcom/motorola/camera/Util$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v8, v7

    mul-float/2addr v8, v5

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v11, v4

    mul-float/2addr v11, v5

    mul-float/2addr v7, v5

    mul-float/2addr v4, v5

    invoke-direct {v6, v8, v11, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    goto :goto_9

    :cond_13
    if-nez v4, :cond_14

    .line 110
    iput-object v6, v10, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 111
    iput v2, v10, Lcom/motorola/camera/PreviewDiff;->mTargetRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 112
    iput v4, v10, Lcom/motorola/camera/PreviewDiff;->mScale:F

    goto :goto_9

    .line 113
    :cond_14
    iget v5, v4, Lcom/motorola/camera/PreviewRatio;->ratio:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_15

    .line 114
    iput-object v14, v10, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 115
    iput v5, v10, Lcom/motorola/camera/PreviewDiff;->mScale:F

    .line 116
    iget v4, v4, Lcom/motorola/camera/PreviewRatio;->translate:F

    iput v4, v10, Lcom/motorola/camera/PreviewDiff;->mScaleTranslate:F

    mul-float/2addr v5, v2

    .line 117
    iput v5, v10, Lcom/motorola/camera/PreviewDiff;->mTargetRatio:F

    goto :goto_9

    .line 118
    :cond_15
    iput-object v15, v10, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 119
    iget v5, v4, Lcom/motorola/camera/PreviewRatio;->cropEnd:F

    iput v5, v10, Lcom/motorola/camera/PreviewDiff;->mCropAspect:F

    .line 120
    iget v4, v4, Lcom/motorola/camera/PreviewRatio;->cropBegin:F

    iput v4, v10, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    .line 121
    iput v5, v10, Lcom/motorola/camera/PreviewDiff;->mTargetRatio:F

    .line 122
    :goto_9
    iput v2, v10, Lcom/motorola/camera/PreviewDiff;->mSourceRatio:F

    move-object v7, v10

    .line 123
    :goto_a
    iput-boolean v1, v7, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    .line 124
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v2, 0x1

    .line 126
    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 127
    :goto_b
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v10, v2

    move v6, v4

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_16
    move v2, v10

    .line 128
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 129
    :cond_17
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 130
    :cond_18
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 131
    :cond_19
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 132
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/motorola/camera/PreviewDiff;

    .line 133
    iget-boolean v1, v10, Lcom/motorola/camera/PreviewDiff;->mFinish:Z

    if-eqz v1, :cond_1a

    goto :goto_c

    .line 134
    :cond_1a
    iget-object v0, v10, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/high16 v11, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    .line 135
    :pswitch_0
    iget v6, v10, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    .line 136
    iget v7, v10, Lcom/motorola/camera/PreviewDiff;->mScale:F

    .line 137
    new-instance v5, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v5, v9, v10}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;)V

    .line 138
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v20, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move v2, v7

    move v3, v6

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FFLcom/motorola/camera/ui/widgets/gl/iGlComponent;Ljava/lang/Runnable;)V

    const-wide/16 v21, 0x64

    const/16 v26, 0x0

    const/16 v25, 0x2

    move-object/from16 v19, v8

    move/from16 v23, v6

    move/from16 v24, v7

    invoke-direct/range {v19 .. v26}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 139
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 140
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto/16 :goto_e

    .line 141
    :pswitch_1
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v18, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FLcom/motorola/camera/ui/widgets/gl/textures/Texture;FLcom/motorola/camera/PreviewDiff;)V

    const-wide/16 v19, 0xc6

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x2

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 142
    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v7, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 143
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 144
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 145
    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 146
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 147
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 149
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 151
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 152
    :pswitch_2
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget v1, v10, Lcom/motorola/camera/PreviewDiff;->mFromMode:I

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    iget-object v3, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    .line 153
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    .line 154
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 155
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result v0

    .line 156
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget v2, v10, Lcom/motorola/camera/PreviewDiff;->mToMode:I

    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget-object v4, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    .line 157
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    .line 158
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 159
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result v1

    .line 160
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 161
    iget-object v2, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v11

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v11

    sub-float/2addr v4, v0

    invoke-virtual {v2, v5, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 162
    iget-object v2, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 163
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 164
    iget-object v4, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v11

    sub-float/2addr v5, v1

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 165
    iget-object v4, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 166
    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    sub-float v5, v1, v0

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {v6, v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/PreviewDiff;)V

    .line 167
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v17, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLjava/lang/Runnable;)V

    const/16 v22, 0x1

    const-wide/16 v18, 0x64

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v23}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 168
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 169
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v8, v7}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto/16 :goto_e

    .line 170
    :pswitch_3
    iget-object v0, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    .line 171
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_1b

    const/high16 v5, 0x3f800000    # 1.0f

    .line 173
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    .line 174
    invoke-direct {v6, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 175
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 176
    invoke-direct {v7, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v12

    .line 177
    invoke-virtual/range {v0 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateViewfinderScale(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLjava/lang/Runnable;)V

    .line 178
    :cond_1b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 179
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 180
    iget-object v2, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    iget-object v3, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v11

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v11

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 181
    iget-object v2, v10, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 182
    iget-object v2, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    iget-object v3, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v11

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v11

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 183
    iget-object v2, v10, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 184
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    invoke-direct {v2, v10}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/PreviewDiff;)V

    invoke-virtual {v9, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateViewfinderStencilCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto/16 :goto_e

    .line 185
    :pswitch_4
    iget v4, v10, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    .line 186
    iget v7, v10, Lcom/motorola/camera/PreviewDiff;->mScaleTranslate:F

    .line 187
    iget v5, v10, Lcom/motorola/camera/PreviewDiff;->mScale:F

    .line 188
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    .line 189
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v1, v7

    const/4 v2, 0x0

    invoke-direct {v8, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 190
    new-instance v11, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v11, v9, v10}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateViewfinderScale(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLjava/lang/Runnable;)V

    goto :goto_e

    .line 191
    :pswitch_5
    iget v0, v10, Lcom/motorola/camera/PreviewDiff;->mBeginScale:F

    invoke-virtual {v9, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getScissorRect(F)Landroid/graphics/Rect;

    move-result-object v0

    .line 192
    iget v1, v10, Lcom/motorola/camera/PreviewDiff;->mCropAspect:F

    invoke-virtual {v9, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getScissorRect(F)Landroid/graphics/Rect;

    move-result-object v1

    .line 193
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v2, v9, v10}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;)V

    invoke-virtual {v9, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateViewfinderStencilCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto :goto_e

    .line 194
    :pswitch_6
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 195
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 196
    iget-boolean v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 197
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v0, 0x0

    .line 198
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    .line 199
    :goto_d
    iput-boolean v1, v10, Lcom/motorola/camera/PreviewDiff;->mFinish:Z

    .line 200
    iget-boolean v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, v10, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    if-eqz v1, :cond_1d

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewClear()Z

    .line 202
    iput-boolean v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 203
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 204
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 205
    :cond_1d
    :goto_e
    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    .line 206
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 207
    :cond_1e
    iget-boolean v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    invoke-virtual {v9, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized registerListener(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 3
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 5
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 7
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 11
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 13
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 14
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 15
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 16
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerZoomChangeListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final resetBlurTex()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 9
    :goto_1
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setBlurRect(Landroid/graphics/RectF;)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    .line 17
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    return-void
.end method

.method public final declared-synchronized setCameraClosing(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_0

    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :try_start_1
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_1

    .line 10
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 11
    :try_start_3
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    .line 13
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_2

    .line 14
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 15
    :try_start_5
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 16
    :try_start_6
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1

    .line 17
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setClosing(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 18
    :cond_3
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCameraView(Z)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 5
    :goto_2
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 7
    :goto_3
    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 8
    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setCameraView(ZZ)V
    .locals 5

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualShowSlave()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v1, :cond_6

    if-nez p1, :cond_4

    .line 16
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p2, :cond_5

    if-nez v0, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    move p1, v2

    goto :goto_5

    :cond_7
    move p1, v3

    .line 19
    :goto_5
    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVisibility(Z)V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p2, :cond_8

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v2, v3

    .line 21
    :goto_6
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 22
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setCaptureType$enumunboxing$(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setSubPreviewVisibility(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->RESTORE_ALPHA_FOR_GALLERY_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v12, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v13, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v14, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->handleHDR10ModeState(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    sget-object v15, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v15}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v17, v4

    const/4 v4, 0x1

    if-eqz v16, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v15, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 6
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->init()Z

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v15}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 9
    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v15}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateToggleResource()V

    .line 10
    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v15, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->registerListener(Z)V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0, v15}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 13
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerZoomChangeListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 14
    :cond_3
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 15
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 16
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getZoomBlendingSegments()[F

    move-result-object v4

    const/4 v15, 0x2

    .line 17
    aget v4, v4, v15

    float-to-int v4, v4

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    goto/16 :goto_0

    .line 18
    :cond_4
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_3

    .line 21
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppClosing(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 22
    invoke-virtual {v1, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->removeSmileCaptureCallback()V

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->removeGestureCaptureCallback()V

    .line 25
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v4, v9}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 26
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v4, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 27
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v4, :cond_6

    .line 28
    invoke-virtual {v4, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 29
    :cond_6
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v4, :cond_7

    .line 30
    invoke-virtual {v4, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    :cond_7
    const/4 v4, 0x0

    .line 31
    iput-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    .line 32
    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v15, :cond_f

    invoke-virtual {v15, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->registerListener(Z)V

    goto/16 :goto_0

    .line 33
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 35
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 36
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 37
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_2

    .line 38
    :cond_9
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 39
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_1

    .line 40
    :cond_a
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    .line 41
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto :goto_0

    .line 42
    :cond_b
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 43
    invoke-virtual {v1, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    goto :goto_0

    .line 44
    :cond_c
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 45
    iget-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez v4, :cond_d

    const/4 v4, 0x1

    .line 46
    iput-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 47
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {v15, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, v15}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 48
    :cond_d
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    .line 49
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto :goto_0

    .line 50
    :cond_e
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 51
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v15, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v15, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, v15}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 52
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    .line 53
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_f
    :goto_0
    move-object/from16 v16, v9

    goto/16 :goto_4

    .line 54
    :cond_10
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v4

    .line 55
    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v15, v10}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    move-object/from16 v16, v9

    const/4 v15, 0x2

    new-array v9, v15, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v15, 0x0

    aput-object v14, v9, v15

    const/4 v15, 0x1

    aput-object v11, v9, v15

    .line 56
    invoke-static {v4, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 57
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v4, :cond_11

    .line 58
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 59
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableFpsReporting()V

    goto :goto_4

    :cond_12
    :goto_2
    move-object/from16 v16, v9

    const/4 v4, 0x0

    .line 60
    iput-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    goto :goto_4

    :cond_13
    :goto_3
    move-object/from16 v16, v9

    const/4 v4, 0x7

    .line 61
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCaptureType$enumunboxing$(I)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    .line 63
    invoke-virtual {v1, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    .line 64
    :cond_14
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->onCaptureFinished()V

    .line 65
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    .line 66
    :cond_15
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 67
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    .line 68
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    .line 69
    :cond_16
    :goto_4
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 71
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    .line 73
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    goto/16 :goto_7

    .line 74
    :cond_17
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 75
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->storePreviewSize()V

    const/4 v2, 0x1

    .line 78
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    goto/16 :goto_7

    .line 79
    :cond_18
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    .line 80
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    goto/16 :goto_7

    .line 81
    :cond_19
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 82
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto/16 :goto_a

    .line 83
    :cond_1a
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 84
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    goto :goto_5

    :cond_1b
    move-object/from16 v18, v4

    goto :goto_6

    .line 85
    :cond_1c
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object/from16 v18, v4

    const/4 v15, 0x4

    new-array v4, v15, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v15, 0x0

    aput-object v13, v4, v15

    const/4 v15, 0x1

    aput-object v12, v4, v15

    const/4 v15, 0x2

    aput-object v8, v4, v15

    const/4 v15, 0x3

    aput-object v7, v4, v15

    invoke-static {v9, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 86
    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 88
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    .line 89
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto/16 :goto_7

    .line 90
    :cond_1d
    :goto_6
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v5, 0x2

    new-array v6, v5, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v5, 0x0

    aput-object v14, v6, v5

    const/4 v5, 0x1

    aput-object v11, v6, v5

    invoke-static {v4, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v4

    if-eq v4, v14, :cond_1e

    if-ne v4, v11, :cond_1f

    .line 93
    :cond_1e
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 94
    :cond_1f
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    .line 95
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 96
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    goto/16 :goto_7

    .line 97
    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v3

    if-nez v3, :cond_40

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 98
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 99
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 100
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 101
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto/16 :goto_9

    .line 102
    :cond_21
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ON_UP"

    .line 104
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 105
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v5, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->getVisibleTimestampAt(J)J

    move-result-wide v3

    const-string v5, "CAPTURE_TIMESTAMP"

    .line 106
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v3, 0x1

    .line 107
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCaptureType$enumunboxing$(I)V

    const-string v3, "CAPTURE_TRIGGER"

    .line 108
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 109
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v2, v3, :cond_2c

    .line 110
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 111
    :cond_22
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x3

    .line 112
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCaptureType$enumunboxing$(I)V

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_7

    .line 114
    :cond_23
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x4

    .line 115
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCaptureType$enumunboxing$(I)V

    goto/16 :goto_7

    .line 116
    :cond_24
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 117
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    const/4 v2, 0x1

    .line 118
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto/16 :goto_7

    .line 119
    :cond_25
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto :goto_7

    .line 121
    :cond_26
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFadeForGallery()V

    goto :goto_7

    .line 123
    :cond_27
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 124
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_7

    :cond_28
    move-object/from16 v3, v16

    .line 125
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x5

    if-eqz v2, :cond_2b

    .line 126
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 127
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 128
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_29

    .line 129
    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 130
    :cond_29
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v2, :cond_2a

    .line 131
    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 132
    :cond_2a
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    .line 133
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualShowSlave()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 134
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 135
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    goto :goto_7

    .line 136
    :cond_2b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateCapture()V

    :cond_2c
    :goto_7
    move-object/from16 v3, v17

    goto/16 :goto_b

    .line 138
    :cond_2d
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 139
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto/16 :goto_b

    :cond_2e
    move-object/from16 v3, v17

    .line 140
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 141
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_2f

    .line 142
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    .line 143
    :cond_2f
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_30

    .line 144
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    .line 145
    :cond_30
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v2, :cond_45

    .line 146
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto/16 :goto_b

    .line 147
    :cond_31
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringAppClosing(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 148
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 149
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v4, v1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    const/4 v2, 0x1

    .line 150
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->clearMeisheEffects()V

    .line 152
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->deinit()V

    goto/16 :goto_b

    .line 153
    :cond_32
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 154
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x1

    aput-object v8, v4, v5

    const/4 v5, 0x2

    aput-object v11, v4, v5

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 156
    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_33

    .line 157
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_33
    const/4 v2, 0x0

    .line 158
    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 159
    :cond_34
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->copyPreviewFrame(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 161
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    .line 162
    :cond_35
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "SRC_MODE"

    .line 163
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    const-string v5, "MODE"

    const/4 v6, -0x1

    .line 164
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    if-ne v2, v6, :cond_36

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "SRC_MODE"

    .line 166
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    .line 167
    :cond_36
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v2

    if-eq v2, v14, :cond_37

    if-ne v2, v7, :cond_39

    .line 168
    :cond_37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    if-ne v2, v14, :cond_39

    const/16 v2, 0x12

    const/4 v5, 0x6

    if-ne v4, v5, :cond_38

    .line 169
    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    goto :goto_8

    :cond_38
    if-ne v4, v2, :cond_39

    .line 170
    iput v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    .line 171
    :cond_39
    :goto_8
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_3a

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    .line 173
    :cond_3a
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v2, :cond_45

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 174
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->registerListener(Z)V

    goto/16 :goto_b

    .line 175
    :cond_3b
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v13, :cond_3c

    .line 177
    monitor-exit p0

    return-void

    .line 178
    :cond_3c
    :try_start_2
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v2, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/ChangeEvent;)V

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_3d
    move-object/from16 v2, v18

    .line 179
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 180
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v2, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 181
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;)V

    goto/16 :goto_b

    :cond_3e
    const-string v2, "CameraPreview"

    const-string v4, "applyPreviewChange error!"

    .line 182
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 183
    :cond_3f
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 184
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 185
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 186
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_b

    :cond_40
    :goto_9
    move-object/from16 v3, v17

    const/4 v4, 0x1

    .line 187
    iput-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v4

    if-eq v4, v14, :cond_41

    if-eq v4, v11, :cond_41

    if-eq v4, v8, :cond_41

    if-eq v4, v12, :cond_41

    if-eq v4, v7, :cond_41

    .line 189
    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-eq v4, v5, :cond_41

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-eq v4, v5, :cond_41

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v4, v5, :cond_42

    .line 190
    :cond_41
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 191
    :cond_42
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    .line 192
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v4, :cond_45

    .line 193
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    goto :goto_b

    :cond_43
    :goto_a
    move-object/from16 v3, v17

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->clearMeisheEffects()V

    .line 197
    :cond_44
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateDualCapturePosition(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 198
    :cond_45
    :goto_b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 199
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 200
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 201
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 202
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 203
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 204
    :cond_46
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CAPTURE_TRIGGER"

    .line 206
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 207
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v0, v2, :cond_47

    .line 208
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 209
    :cond_47
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :cond_48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized storePreviewSize()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unloadTextures()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerListener(Z)V

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    .line 7
    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_CLICKED:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v5, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->shutterClickListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 10
    aput-object v3, v1, v2

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->unloadTexture()V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->unloadTexture()V

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->unloadTexture()V

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    .line 23
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 25
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 26
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 27
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateDualCapturePosition(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->switchCameraInPIPLayout(Landroid/os/Bundle;)Z

    move-result p1

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateViewfinder()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 5
    :goto_1
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    .line 8
    :goto_2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVerticesData()V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    goto :goto_3

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setDefaultVerticesData()V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 20
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setDefaultVerticesData()V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    :cond_5
    :goto_3
    return-void
.end method
