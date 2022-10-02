.class public Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "PanoUIComponent.java"


# static fields
.field public static final TUTORIALS_BACKGROUND_COLOR:I


# instance fields
.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mCaptureColor:I

.field public mCapturing:Z

.field public mDirectionDeepTrans:F

.field public final mIdleColor:I

.field public mInitPanoCirlce:Z

.field public mMovingCircleHorTexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mPanoCircleExceed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mPanoGuideLineHorTexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoHasPlayAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

.field public mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mPlayTransAnim:Z

.field public mPlayTransForWrongDirection:Z

.field public mPreTrans:F

.field public mProgressPadding:F

.field public mReversing:Z

.field public mRotationChange:I

.field public mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mUpdateColor:Z

.field public final mWarningColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f06033d

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->TUTORIALS_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 9
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 10
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    .line 13
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    .line 14
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    .line 15
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    .line 16
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 17
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    .line 18
    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 19
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    .line 20
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f0602fa

    .line 21
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 22
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    .line 23
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0603b6

    .line 24
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 25
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    return-void
.end method


# virtual methods
.method public final animateArrowIcon(I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v12, :cond_2

    if-eq v1, v11, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    neg-float v1, v2

    .line 4
    invoke-virtual {v8, v3, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v8, v3, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v8, v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    :cond_3
    neg-float v1, v2

    .line 7
    invoke-virtual {v8, v1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 8
    :goto_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v14, 0x0

    const-wide/16 v15, 0x190

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v25, 0x2

    const/16 v20, 0x0

    const/16 v19, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 9
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 10
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    const/4 v4, 0x0

    const-wide/16 v5, 0xc8

    const/4 v10, 0x0

    const/4 v9, 0x2

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;II)V

    .line 12
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;

    invoke-direct {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;I)V

    .line 13
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 14
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 15
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    new-array v2, v12, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 16
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v4, v2, v5

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 17
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 18
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const-wide/16 v15, 0x64

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 19
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 20
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 21
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/16 v20, 0x0

    const-wide/16 v21, 0x64

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v26}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 22
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 23
    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$3;

    invoke-direct {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;I)V

    .line 25
    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 26
    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 27
    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 28
    iget-object v1, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 29
    iget-object v1, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    new-array v1, v12, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 30
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v2, v1, v5

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 31
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v4, v11}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final checkExceedBoundary(ILcom/google/android/play/core/appupdate/zzy;Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzy;->centerX()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->centerY()F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v2

    const v2, 0x3d4ccccd    # 0.05f

    :goto_0
    mul-float/2addr p3, v2

    const/16 v2, 0x10e

    const/4 v3, 0x1

    if-nez p1, :cond_3

    .line 5
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_2

    if-ne p0, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/zzy;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_c

    return v3

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/zzy;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_c

    return v3

    :cond_3
    if-ne p1, v3, :cond_6

    .line 8
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_5

    if-ne p0, v2, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/zzy;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_c

    return v3

    .line 10
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/zzy;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_c

    return v3

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 11
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_8

    if-ne p0, v2, :cond_7

    goto :goto_3

    .line 12
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/zzy;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_c

    return v3

    .line 13
    :cond_8
    :goto_3
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/zzy;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_c

    return v3

    :cond_9
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 14
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_b

    if-ne p0, v2, :cond_a

    goto :goto_4

    .line 15
    :cond_a
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/zzy;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_c

    return v3

    .line 16
    :cond_b
    :goto_4
    invoke-virtual {p2}, Lcom/google/android/play/core/appupdate/zzy;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_c

    return v3

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final getPaddingBottom()F
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x42700000    # 60.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42900000    # 72.0f

    :goto_0
    mul-float/2addr v1, v0

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    .line 5
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 7
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 10
    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine(Z)F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr p0, v3

    div-float/2addr v1, v4

    sub-float/2addr p0, v1

    const/4 v0, 0x0

    cmpl-float v1, v2, p0

    if-ltz v1, :cond_1

    sub-float v0, v2, p0

    :cond_1
    div-float/2addr v0, v4

    return v0
.end method

.method public final getProgessBarVerHeight()I
    .locals 8

    .line 1
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 4
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewCrop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 8
    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    .line 9
    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 10
    iget-object v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 11
    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    move-object v1, v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    .line 13
    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v1

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSensorOrientationSameAsScreen()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    div-float v0, v4, v0

    :cond_1
    const v3, 0x3cf5c28f    # 0.03f

    sub-float v3, v0, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    div-float v4, v1, v0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 17
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 19
    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 20
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    .line 21
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 22
    iget-object v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v4, v5, :cond_3

    const/high16 v4, 0x42700000    # 60.0f

    goto :goto_0

    :cond_3
    const/high16 v4, 0x42900000    # 72.0f

    :goto_0
    mul-float/2addr v4, v3

    .line 23
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 24
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 25
    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine(Z)F

    move-result v6

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr p0, v5

    div-float/2addr v4, v2

    sub-float/2addr p0, v4

    const/4 v2, 0x0

    cmpl-float v3, v1, p0

    if-ltz v3, :cond_4

    sub-float v2, v1, p0

    :cond_4
    sub-float/2addr v0, v2

    float-to-int p0, v0

    return p0
.end method

.method public final getProgressMessage(Landroid/os/Bundle;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "status"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "progressX"

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "maxWidth"

    .line 4
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "progressY"

    .line 5
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "maxHeight"

    .line 6
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v9, v4

    div-double/2addr v2, v9

    double-to-float v2, v2

    int-to-double v3, v7

    div-double/2addr v5, v3

    double-to-float v3, v5

    .line 7
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x5a

    const/16 v6, 0xb4

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v9, 0x10e

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne v4, v6, :cond_2

    sub-float v10, v7, v2

    goto :goto_1

    :cond_2
    if-ne v4, v9, :cond_3

    sub-float v10, v7, v3

    goto :goto_1

    :cond_3
    if-ne v4, v5, :cond_4

    move v10, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v10, v2

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    if-ne v4, v6, :cond_6

    sub-float v2, v7, v3

    goto :goto_3

    :cond_6
    if-ne v4, v9, :cond_7

    goto :goto_3

    :cond_7
    if-ne v4, v5, :cond_8

    sub-float v2, v7, v2

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v3

    :goto_3
    const-string v3, "direction"

    .line 8
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 9
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 10
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v11, 0x42300000    # 44.0f

    mul-float/2addr v4, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v13, v4, v12

    .line 11
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 12
    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 13
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v12, 0x1

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    if-ne v4, v9, :cond_d

    if-ne v3, v12, :cond_a

    goto :goto_6

    :cond_a
    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    if-ne v3, v15, :cond_c

    goto :goto_5

    :cond_c
    if-ne v3, v14, :cond_15

    goto :goto_4

    :cond_d
    if-ne v4, v5, :cond_11

    if-ne v3, v12, :cond_e

    goto :goto_7

    :cond_e
    if-nez v3, :cond_f

    goto :goto_6

    :cond_f
    if-ne v3, v15, :cond_10

    goto :goto_4

    :cond_10
    if-ne v3, v14, :cond_15

    goto :goto_5

    :cond_11
    if-ne v4, v6, :cond_15

    if-ne v3, v12, :cond_12

    :goto_4
    const/4 v5, 0x0

    goto :goto_9

    :cond_12
    if-nez v3, :cond_13

    :goto_5
    move v5, v12

    goto :goto_9

    :cond_13
    if-ne v3, v15, :cond_14

    :goto_6
    move v5, v14

    goto :goto_9

    :cond_14
    if-ne v3, v14, :cond_15

    :goto_7
    move v5, v15

    goto :goto_9

    :cond_15
    :goto_8
    move v5, v3

    .line 14
    :goto_9
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    if-nez v3, :cond_16

    .line 15
    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    .line 16
    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    .line 17
    iput-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    .line 18
    :cond_16
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v11, v3

    .line 19
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    const/high16 v18, 0x40000000    # 2.0f

    if-nez v3, :cond_2a

    .line 20
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v9

    const/high16 v20, 0x41a00000    # 20.0f

    mul-float v9, v9, v20

    .line 21
    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v15}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v15

    const/high16 v21, 0x41000000    # 8.0f

    mul-float v15, v15, v21

    .line 22
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    const/high16 v22, 0x40800000    # 4.0f

    mul-float v6, v6, v22

    .line 23
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v7

    mul-float v7, v7, v18

    .line 24
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 25
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 26
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    .line 27
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    if-eqz v5, :cond_18

    if-ne v5, v12, :cond_17

    goto :goto_a

    :cond_17
    const/4 v14, 0x0

    goto :goto_b

    :cond_18
    :goto_a
    move v14, v12

    :goto_b
    const/high16 v25, 0x42200000    # 40.0f

    .line 28
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v12

    mul-float v12, v12, v25

    const v25, 0x3d4ccccd    # 0.05f

    mul-float v12, v12, v25

    if-eqz v14, :cond_19

    .line 29
    sget v14, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    int-to-float v14, v14

    const/high16 v25, 0x41800000    # 16.0f

    .line 30
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 31
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    goto :goto_c

    .line 32
    :cond_19
    sget v4, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v14, v4

    const/high16 v25, 0x42000000    # 32.0f

    .line 33
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 34
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    :goto_c
    mul-float v4, v4, v25

    sub-float/2addr v14, v4

    add-float/2addr v14, v12

    const/4 v4, 0x0

    .line 35
    :goto_d
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 36
    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v12

    const/high16 v25, 0x42500000    # 52.0f

    mul-float v12, v12, v25

    div-float v12, v14, v12

    .line 37
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    if-ge v4, v12, :cond_1a

    .line 38
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    move/from16 v25, v14

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move/from16 v27, v8

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-direct {v12, v14, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    .line 39
    monitor-enter v12

    .line 40
    monitor-exit v12

    .line 41
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 42
    iput v8, v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    .line 43
    invoke-virtual {v12, v14, v14, v14, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    const/high16 v8, -0x40800000    # -1.0f

    .line 44
    invoke-virtual {v12, v14, v14, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    const/4 v14, 0x0

    .line 45
    invoke-virtual {v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 46
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v8, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 48
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 49
    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    .line 50
    invoke-virtual {v8, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 51
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v12

    mul-float v12, v12, v18

    invoke-virtual {v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v12, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 53
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v25

    move/from16 v8, v27

    goto :goto_d

    :cond_1a
    move/from16 v27, v8

    const/4 v4, 0x0

    .line 56
    :goto_e
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1c

    .line 57
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-nez v4, :cond_1b

    .line 58
    invoke-virtual {v8, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    div-float v12, v9, v18

    .line 59
    iput v12, v8, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 60
    invoke-virtual {v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    goto :goto_f

    .line 61
    :cond_1b
    invoke-virtual {v8, v15, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    div-float v12, v15, v18

    .line 62
    iput v12, v8, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 63
    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 64
    :goto_f
    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    .line 65
    invoke-virtual {v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 66
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/4 v12, 0x0

    .line 67
    invoke-virtual {v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 68
    :cond_1c
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 69
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float v6, v6, v18

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 71
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    const/4 v6, 0x0

    .line 72
    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_10

    .line 73
    :cond_1d
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v4

    add-float/2addr v4, v3

    .line 74
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    if-eqz v5, :cond_24

    const/4 v3, 0x1

    if-ne v5, v3, :cond_1e

    goto :goto_13

    .line 75
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v18

    .line 76
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    mul-float v7, v13, v18

    add-float/2addr v7, v3

    invoke-virtual {v6, v11, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/4 v3, 0x2

    if-ne v5, v3, :cond_21

    .line 77
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_20

    const/16 v6, 0x10e

    if-ne v3, v6, :cond_1f

    goto :goto_11

    .line 78
    :cond_1f
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    div-float v6, v6, v22

    add-float/2addr v6, v4

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_16

    :cond_20
    :goto_11
    const/4 v7, 0x0

    .line 80
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v22

    add-float/2addr v6, v4

    invoke-virtual {v3, v7, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_16

    :cond_21
    const/4 v7, 0x0

    .line 82
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_23

    const/16 v6, 0x10e

    if-ne v3, v6, :cond_22

    goto :goto_12

    .line 83
    :cond_22
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v22

    add-float/2addr v6, v4

    invoke-virtual {v3, v7, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_16

    .line 85
    :cond_23
    :goto_12
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    div-float v6, v6, v22

    add-float/2addr v6, v4

    invoke-virtual {v3, v7, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_16

    .line 87
    :cond_24
    :goto_13
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float v6, v6, v18

    mul-float v7, v13, v18

    add-float/2addr v7, v6

    invoke-virtual {v3, v7, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    if-nez v5, :cond_27

    .line 88
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_26

    const/16 v6, 0x10e

    if-ne v3, v6, :cond_25

    goto :goto_14

    .line 89
    :cond_25
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float v6, v6, v22

    const/4 v7, 0x0

    .line 90
    invoke-virtual {v3, v6, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_16

    :cond_26
    :goto_14
    const/4 v7, 0x0

    .line 91
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v6, v6

    int-to-float v6, v6

    div-float v6, v6, v22

    .line 92
    invoke-virtual {v3, v6, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_16

    .line 93
    :cond_27
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_29

    const/16 v6, 0x10e

    if-ne v3, v6, :cond_28

    goto :goto_15

    .line 94
    :cond_28
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v6, v6

    int-to-float v6, v6

    div-float v6, v6, v22

    const/4 v7, 0x0

    .line 95
    invoke-virtual {v3, v6, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_16

    :cond_29
    :goto_15
    const/4 v7, 0x0

    .line 96
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float v6, v6, v22

    .line 97
    invoke-virtual {v3, v6, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 98
    :goto_16
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 99
    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    goto :goto_17

    :cond_2a
    move/from16 v27, v8

    move v4, v12

    :goto_17
    const v3, 0x3d4cccd0    # 0.050000012f

    if-eqz v5, :cond_2d

    if-ne v5, v4, :cond_2b

    goto :goto_18

    .line 100
    :cond_2b
    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->updateProgress(F)F

    move-result v4

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v12, v16, v4

    .line 101
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2c

    move/from16 v4, v16

    :cond_2c
    move v14, v2

    move v12, v4

    goto :goto_19

    :cond_2d
    :goto_18
    const/high16 v16, 0x3f000000    # 0.5f

    .line 102
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->updateProgress(F)F

    move-result v2

    sub-float v12, v16, v2

    .line 103
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2e

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_2e
    move v14, v2

    move v12, v10

    :goto_19
    const-string v2, "preview"

    .line 104
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_33

    .line 105
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v2, 0xb4

    if-eqz v1, :cond_30

    if-ne v1, v2, :cond_2f

    goto :goto_1a

    .line 106
    :cond_2f
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1b

    .line 107
    :cond_30
    :goto_1a
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_1b
    int-to-float v1, v1

    .line 108
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_32

    if-ne v3, v2, :cond_31

    goto :goto_1c

    .line 109
    :cond_31
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_1d

    .line 110
    :cond_32
    :goto_1c
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_1d
    int-to-float v2, v2

    move v15, v1

    move v10, v2

    goto :goto_1e

    :cond_33
    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 111
    :goto_1e
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 112
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 113
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 114
    check-cast v2, Landroid/util/Size;

    invoke-direct {v1, v2}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    if-eqz v5, :cond_35

    const/4 v2, 0x1

    if-ne v5, v2, :cond_34

    goto :goto_1f

    .line 115
    :cond_34
    iput v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    .line 116
    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    move v4, v10

    move v1, v15

    move v3, v1

    goto :goto_20

    .line 117
    :cond_35
    :goto_1f
    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 118
    iget v2, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    move v1, v2

    move v2, v10

    move v3, v2

    move v4, v15

    .line 119
    :goto_20
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 120
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 121
    monitor-enter v6

    .line 122
    :try_start_0
    iput v3, v6, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameHeight:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    monitor-exit v6

    .line 124
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 125
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 126
    monitor-enter v3

    .line 127
    :try_start_1
    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit v3

    .line 129
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 130
    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    .line 131
    iput v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    neg-float v1, v15

    div-float v1, v1, v18

    mul-float v2, v15, v12

    add-float v9, v2, v1

    div-float v19, v15, v18

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v7, v1, v12

    mul-float/2addr v7, v15

    sub-float v7, v19, v7

    .line 132
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v2

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v3

    add-float v6, v3, v2

    sub-float/2addr v1, v14

    mul-float v2, v10, v1

    div-float v22, v10, v18

    sub-float v3, v2, v22

    add-float v23, v3, v6

    neg-float v3, v10

    mul-float/2addr v3, v1

    add-float v3, v3, v22

    add-float v4, v3, v6

    const/4 v1, 0x1

    if-eq v5, v1, :cond_37

    if-nez v5, :cond_36

    goto :goto_21

    :cond_36
    move v3, v6

    goto :goto_22

    :cond_37
    :goto_21
    const/high16 v1, 0x437a0000    # 250.0f

    .line 134
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 135
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v1

    sub-float v1, v6, v3

    move v3, v1

    .line 136
    :goto_22
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    move/from16 p1, v3

    int-to-float v3, v1

    sub-float v25, v3, v10

    div-float v25, v25, v18

    div-float v3, v3, v18

    sub-float v3, v3, v25

    mul-float v28, v10, v14

    sub-float v3, v3, v28

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v18

    add-float v1, v1, v25

    add-float/2addr v2, v1

    .line 137
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    move/from16 v25, v4

    if-eqz v5, :cond_41

    const/4 v4, 0x1

    if-eq v5, v4, :cond_3e

    const/4 v4, 0x2

    if-eq v5, v4, :cond_3b

    const/4 v4, 0x3

    if-eq v5, v4, :cond_38

    const/16 v16, 0x0

    goto/16 :goto_29

    :cond_38
    if-eqz v1, :cond_3a

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_39

    goto :goto_23

    :cond_39
    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v1, v14, v4

    if-gez v1, :cond_44

    goto :goto_27

    :cond_3a
    :goto_23
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v1, v14, v4

    if-ltz v1, :cond_44

    goto :goto_27

    :cond_3b
    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v1, :cond_3d

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_3c

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_24

    :cond_3c
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v1, v14, v4

    if-lez v1, :cond_44

    goto :goto_27

    :cond_3d
    :goto_24
    cmpg-float v1, v14, v4

    if-gtz v1, :cond_44

    goto :goto_27

    :cond_3e
    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v1, :cond_40

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_3f

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_25

    :cond_3f
    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v1, v12, v4

    if-gez v1, :cond_44

    goto :goto_27

    :cond_40
    :goto_25
    cmpl-float v1, v12, v4

    if-ltz v1, :cond_44

    goto :goto_27

    :cond_41
    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v1, :cond_43

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_42

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_26

    :cond_42
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v12, v1

    if-lez v1, :cond_44

    goto :goto_27

    :cond_43
    move v1, v4

    :goto_26
    cmpg-float v1, v12, v1

    if-gtz v1, :cond_44

    :goto_27
    const/4 v1, 0x1

    goto :goto_28

    :cond_44
    const/4 v1, 0x0

    :goto_28
    move/from16 v16, v1

    .line 138
    :goto_29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v4, :cond_45

    const/16 v28, 0x1

    goto :goto_2a

    :cond_45
    const/16 v28, 0x0

    .line 139
    :goto_2a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v4, 0x42500000    # 52.0f

    mul-float v26, v1, v4

    .line 140
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/zzy;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v4, v1, v13

    .line 141
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/zzy;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v13

    move/from16 v29, v10

    .line 142
    iget-boolean v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v5, :cond_69

    move/from16 v30, v1

    const/4 v1, 0x1

    if-eq v5, v1, :cond_5e

    const/4 v1, 0x2

    if-eq v5, v1, :cond_52

    const/4 v1, 0x3

    if-eq v5, v1, :cond_46

    move-object/from16 p1, v8

    move/from16 v30, v10

    move/from16 v32, v11

    move/from16 v21, v13

    move/from16 v31, v15

    move v11, v5

    move v13, v7

    goto/16 :goto_44

    .line 143
    :cond_46
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_47

    .line 144
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 145
    :cond_47
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_48

    .line 146
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 147
    :cond_48
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 148
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    move/from16 v31, v15

    move/from16 v15, v30

    move-object/from16 v1, p0

    move/from16 v19, v3

    move-object/from16 v34, v8

    move/from16 v8, p1

    move-object/from16 p1, v34

    move/from16 v30, v10

    move v10, v4

    move v4, v6

    move v6, v5

    move/from16 v32, v11

    move/from16 v21, v13

    const/high16 v13, -0x40800000    # -1.0f

    move v11, v6

    move v6, v12

    move/from16 v33, v7

    move/from16 v7, v27

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 149
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 150
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v3, v2, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_49

    .line 151
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 152
    :cond_49
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_4a

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_4b

    :cond_4a
    if-nez v28, :cond_4b

    goto/16 :goto_3e

    .line 153
    :cond_4b
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 154
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_4f

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_4c

    goto :goto_2e

    :cond_4c
    const/4 v2, 0x0

    .line 155
    :goto_2b
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_68

    if-eqz v1, :cond_4d

    .line 156
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_2c

    :cond_4d
    move v4, v3

    :goto_2c
    neg-float v4, v4

    add-float/2addr v4, v8

    sub-float v4, v4, v22

    add-int/lit8 v5, v2, 0x1

    int-to-float v6, v5

    mul-float v6, v6, v26

    add-float/2addr v6, v4

    .line 157
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v7, v6, v15

    if-lez v7, :cond_4e

    .line 158
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    .line 159
    invoke-virtual {v4, v2, v15, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_2d

    .line 160
    :cond_4e
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v2, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    .line 161
    invoke-virtual {v4, v2, v6, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_2d
    move v2, v5

    goto :goto_2b

    :cond_4f
    :goto_2e
    const/4 v2, 0x0

    .line 162
    :goto_2f
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_68

    .line 163
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_50

    .line 164
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_30

    :cond_50
    move v5, v3

    :goto_30
    neg-float v5, v5

    add-float/2addr v5, v8

    add-float v5, v5, v22

    rsub-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    mul-float v6, v6, v26

    add-float/2addr v6, v5

    cmpg-float v5, v6, v10

    if-gez v5, :cond_51

    .line 165
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v5, v9

    .line 166
    invoke-virtual {v4, v5, v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_31

    .line 167
    :cond_51
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v5, v9

    .line 168
    invoke-virtual {v4, v5, v6, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_52
    move/from16 v33, v7

    move/from16 v32, v11

    move/from16 v21, v13

    move/from16 v31, v15

    move/from16 v15, v30

    const/high16 v13, -0x40800000    # -1.0f

    move v11, v5

    move/from16 v30, v10

    move v10, v4

    move-object/from16 v34, v8

    move/from16 v8, p1

    move-object/from16 p1, v34

    .line 169
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_53

    .line 170
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 171
    :cond_53
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_54

    .line 172
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 173
    :cond_54
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 174
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    move-object/from16 v1, p0

    move v7, v2

    move v2, v3

    move v3, v7

    move v5, v11

    move v6, v12

    move v13, v7

    move/from16 v7, v27

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 175
    iput v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 176
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v13, v2, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_55

    .line 177
    iput v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 178
    :cond_55
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_56

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_57

    :cond_56
    if-nez v28, :cond_57

    goto/16 :goto_3e

    .line 179
    :cond_57
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 180
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_5b

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_58

    goto :goto_35

    :cond_58
    const/4 v2, 0x0

    .line 181
    :goto_32
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    if-eqz v1, :cond_59

    .line 182
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_33

    :cond_59
    move v3, v13

    :goto_33
    neg-float v3, v3

    add-float/2addr v3, v8

    add-float v3, v3, v22

    add-int/lit8 v4, v2, 0x1

    int-to-float v5, v4

    mul-float v5, v5, v26

    sub-float/2addr v3, v5

    .line 183
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpg-float v6, v3, v10

    if-gez v6, :cond_5a

    .line 184
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    const/high16 v6, -0x40800000    # -1.0f

    .line 185
    invoke-virtual {v5, v2, v10, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_34

    :cond_5a
    const/high16 v6, -0x40800000    # -1.0f

    .line 186
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v2, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    .line 187
    invoke-virtual {v5, v2, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_34
    move v2, v4

    goto :goto_32

    :cond_5b
    :goto_35
    const/4 v2, 0x0

    .line 188
    :goto_36
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    if-eqz v1, :cond_5c

    .line 189
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_37

    :cond_5c
    move v3, v13

    :goto_37
    neg-float v3, v3

    add-float/2addr v3, v8

    sub-float v3, v3, v22

    add-int/lit8 v4, v2, 0x1

    int-to-float v5, v4

    mul-float v5, v5, v26

    add-float/2addr v5, v3

    .line 190
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v6, v5, v15

    if-lez v6, :cond_5d

    .line 191
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    const/high16 v6, -0x40800000    # -1.0f

    .line 192
    invoke-virtual {v3, v2, v15, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_38

    :cond_5d
    const/high16 v6, -0x40800000    # -1.0f

    .line 193
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v2, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    .line 194
    invoke-virtual {v3, v2, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_38
    move v2, v4

    goto :goto_36

    :cond_5e
    move/from16 v33, v7

    move-object/from16 p1, v8

    move/from16 v30, v10

    move/from16 v32, v11

    move/from16 v21, v13

    move/from16 v31, v15

    move v11, v5

    .line 195
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5f

    .line 196
    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 197
    :cond_5f
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_60

    .line 198
    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 199
    :cond_60
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v9, v2, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 200
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    move-object/from16 v1, p0

    move v3, v9

    move/from16 v8, v25

    move v5, v11

    move v10, v6

    move v6, v14

    move/from16 v7, v27

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 201
    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 202
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v9, v2, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_61

    .line 203
    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 204
    :cond_61
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_62

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_63

    :cond_62
    if-nez v28, :cond_63

    goto :goto_3e

    .line 205
    :cond_63
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v10, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 206
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_66

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_64

    goto :goto_3b

    :cond_64
    const/4 v2, 0x0

    .line 207
    :goto_39
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    .line 208
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_65

    .line 209
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3a

    :cond_65
    move v4, v9

    :goto_3a
    neg-float v4, v4

    add-float v4, v4, v19

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    mul-float v5, v5, v26

    sub-float/2addr v4, v5

    const/high16 v5, -0x40800000    # -1.0f

    .line 210
    invoke-virtual {v3, v4, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_39

    :cond_66
    :goto_3b
    const/4 v2, 0x0

    .line 211
    :goto_3c
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    .line 212
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_67

    .line 213
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3d

    :cond_67
    move v4, v9

    :goto_3d
    neg-float v4, v4

    sub-float v4, v4, v19

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    mul-float v5, v5, v26

    add-float/2addr v5, v4

    const/high16 v4, -0x40800000    # -1.0f

    .line 214
    invoke-virtual {v3, v5, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_3c

    :cond_68
    :goto_3e
    move/from16 v13, v33

    goto/16 :goto_44

    :cond_69
    move/from16 v33, v7

    move-object/from16 p1, v8

    move/from16 v30, v10

    move/from16 v32, v11

    move/from16 v21, v13

    move/from16 v31, v15

    move/from16 v8, v25

    move v11, v5

    move v10, v6

    .line 215
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    move/from16 v13, v33

    if-nez v1, :cond_6a

    .line 216
    iput v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 217
    :cond_6a
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6b

    .line 218
    iput v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 219
    :cond_6b
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v13, v2, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 220
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    move-object/from16 v1, p0

    move v3, v13

    move v5, v11

    move v6, v14

    move/from16 v7, v27

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 221
    iput v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 222
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v13, v2, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 223
    iput v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 224
    :cond_6c
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_6d

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_6e

    :cond_6d
    if-nez v28, :cond_6e

    goto :goto_44

    .line 225
    :cond_6e
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 226
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_71

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_6f

    goto :goto_41

    :cond_6f
    const/4 v2, 0x0

    .line 227
    :goto_3f
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_73

    .line 228
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_70

    .line 229
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_40

    :cond_70
    move v7, v13

    :goto_40
    neg-float v4, v7

    sub-float v4, v4, v19

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    mul-float v5, v5, v26

    add-float/2addr v5, v4

    const/high16 v4, -0x40800000    # -1.0f

    .line 230
    invoke-virtual {v3, v5, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_3f

    :cond_71
    :goto_41
    const/4 v2, 0x0

    .line 231
    :goto_42
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_73

    .line 232
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_72

    .line 233
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_43

    :cond_72
    move v7, v13

    :goto_43
    neg-float v4, v7

    add-float v4, v4, v19

    rsub-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float v5, v5, v26

    add-float/2addr v5, v4

    const/high16 v4, -0x40800000    # -1.0f

    .line 234
    invoke-virtual {v3, v5, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 235
    :cond_73
    :goto_44
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 236
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 237
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 238
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result v1

    mul-float v2, v21, v18

    add-float/2addr v2, v1

    .line 239
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result v1

    sub-float/2addr v1, v2

    div-float v1, v1, v18

    .line 240
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result v3

    sub-float/2addr v3, v2

    div-float v3, v3, v18

    .line 241
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x10e

    if-eqz v4, :cond_75

    if-ne v4, v5, :cond_74

    goto :goto_45

    :cond_74
    neg-float v1, v1

    :cond_75
    :goto_45
    if-eqz v4, :cond_77

    if-ne v4, v5, :cond_76

    goto :goto_46

    :cond_76
    neg-float v3, v3

    :cond_77
    :goto_46
    if-eqz v11, :cond_7b

    const/4 v4, 0x1

    if-ne v11, v4, :cond_78

    goto :goto_47

    :cond_78
    const/4 v4, 0x2

    if-eq v11, v4, :cond_79

    const/4 v1, 0x3

    if-ne v11, v1, :cond_7d

    .line 242
    :cond_79
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_7d

    .line 243
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    move/from16 v4, v32

    invoke-virtual {v1, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/4 v1, 0x2

    if-ne v11, v1, :cond_7a

    .line 244
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 245
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 246
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v4, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 247
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 248
    invoke-virtual {v1, v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_48

    .line 249
    :cond_7a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 250
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 251
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v4, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 252
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 253
    invoke-virtual {v1, v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_48

    :cond_7b
    :goto_47
    move/from16 v4, v32

    .line 254
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_7d

    .line 255
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/4 v2, 0x1

    if-ne v11, v2, :cond_7c

    .line 256
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 257
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v3, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 258
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 259
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 260
    invoke-virtual {v2, v3, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_48

    .line 261
    :cond_7c
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 262
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v3, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 263
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 264
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 265
    invoke-virtual {v2, v3, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_7d
    :goto_48
    const/4 v1, 0x0

    .line 266
    :goto_49
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8e

    .line 267
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v1, :cond_7f

    .line 268
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 269
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 270
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v5, :cond_7e

    .line 271
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_4a

    .line 272
    :cond_7e
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_4a

    .line 273
    :cond_7f
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 274
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 275
    :goto_4a
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    if-gt v1, v5, :cond_80

    .line 276
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    add-int/lit8 v8, v1, 0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    goto :goto_4b

    :cond_80
    move-object v5, v7

    .line 277
    :goto_4b
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v0, v11, v8, v10}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/google/android/play/core/appupdate/zzy;Z)Z

    move-result v8

    .line 278
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v15

    invoke-virtual {v0, v11, v15, v10}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/google/android/play/core/appupdate/zzy;Z)Z

    move-result v15

    .line 279
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v10

    const/4 v6, 0x0

    invoke-virtual {v0, v11, v10, v6}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/google/android/play/core/appupdate/zzy;Z)Z

    move-result v10

    if-eqz v8, :cond_81

    .line 280
    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    goto :goto_4c

    .line 281
    :cond_81
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    :goto_4c
    if-eqz v15, :cond_82

    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    goto :goto_4d

    .line 282
    :cond_82
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 283
    :goto_4d
    invoke-virtual {v2, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 284
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    if-ge v1, v6, :cond_83

    .line 285
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v1, :cond_83

    .line 286
    iget-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v6, :cond_83

    .line 287
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    :cond_83
    if-eqz v7, :cond_87

    if-eqz v15, :cond_84

    .line 288
    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    goto :goto_4e

    .line 289
    :cond_84
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    :goto_4e
    if-eqz v15, :cond_85

    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    goto :goto_4f

    .line 290
    :cond_85
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    .line 291
    :goto_4f
    invoke-virtual {v7, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v15, :cond_87

    .line 292
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v3, :cond_86

    .line 293
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_50

    .line 294
    :cond_86
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    :cond_87
    :goto_50
    if-eqz v10, :cond_8c

    .line 295
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    const/4 v6, 0x4

    .line 296
    invoke-virtual {v4, v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v3, 0x0

    .line 297
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    if-eqz v7, :cond_89

    .line 298
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_88

    .line 299
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v7, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_51

    .line 300
    :cond_88
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v7, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    .line 301
    :cond_89
    :goto_51
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8d

    if-nez v1, :cond_8a

    const/4 v2, 0x0

    .line 302
    invoke-virtual {v0, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->scaleAnimMovingCircle(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    goto :goto_52

    :cond_8a
    const/4 v2, 0x1

    .line 303
    invoke-virtual {v0, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->scaleAnimMovingCircle(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    :goto_52
    if-eqz v5, :cond_8b

    .line 304
    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->scaleAnimMovingCircleSecond(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    .line 305
    :cond_8b
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 306
    :cond_8c
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8d

    const/4 v3, 0x1

    .line 307
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 308
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8d

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_8d
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_49

    .line 309
    :cond_8e
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v1, :cond_8f

    .line 310
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    goto :goto_54

    .line 311
    :cond_8f
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 312
    :goto_54
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v2, v30

    if-eq v2, v1, :cond_90

    const/4 v2, 0x1

    if-ne v1, v2, :cond_91

    const/4 v3, 0x0

    .line 313
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    goto :goto_55

    :cond_90
    const/4 v2, 0x1

    :cond_91
    :goto_55
    if-eqz v1, :cond_92

    .line 314
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    if-nez v1, :cond_92

    .line 315
    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    .line 316
    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    .line 317
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    .line 318
    :cond_92
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v4, v27

    move v5, v11

    move-object/from16 v6, p1

    move v7, v13

    move v8, v9

    move v2, v9

    move/from16 v9, v23

    move/from16 v24, v29

    move v10, v2

    move v11, v12

    move v12, v14

    move/from16 v13, v16

    move v14, v1

    move/from16 v15, v31

    move/from16 v16, v24

    move/from16 v17, v0

    invoke-virtual/range {v3 .. v17}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->update(IILandroid/graphics/Bitmap;FFFFFFZZFFZ)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 319
    monitor-exit v3

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 320
    monitor-exit v6

    throw v1
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

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoUIComponent"

    return-object p0
.end method

.method public final getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 5

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/16 v1, 0x10e

    const/4 v2, 0x0

    const/high16 v3, 0x42400000    # 48.0f

    if-eqz p1, :cond_9

    const/4 v4, 0x1

    if-eq p1, v4, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v3

    invoke-direct {v0, p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    .line 5
    :cond_2
    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v3

    invoke-direct {v0, p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    .line 7
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v3

    invoke-direct {v0, p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    .line 10
    :cond_5
    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v3

    invoke-direct {v0, p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 12
    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v1, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 15
    :cond_8
    :goto_2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 17
    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v1, :cond_a

    goto :goto_3

    .line 18
    :cond_a
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 20
    :cond_b
    :goto_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_4
    return-object v0
.end method

.method public loadTextures()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget v3, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->TUTORIALS_BACKGROUND_COLOR:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IZ)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 5
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 6
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 9
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v5, 0x1

    .line 13
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mAlphaChange:I

    .line 14
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 16
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-direct {v0, v6, v7, v8, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ILcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 17
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v0, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 20
    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 21
    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 24
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 28
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->loadTexture()V

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    .line 32
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v2, 0x7f080159

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 33
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 34
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return v5
.end method

.method public final needReversing(FFII)Z
    .locals 3

    const/16 p0, 0x10e

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    const/4 v2, 0x3

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float p4, p1, p2

    if-gez p4, :cond_1

    if-eqz p3, :cond_4

    if-ne p3, p0, :cond_5

    goto :goto_1

    :cond_1
    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_5

    if-ne p3, p0, :cond_4

    goto :goto_2

    :cond_3
    :goto_0
    cmpg-float p4, p1, p2

    if-gez p4, :cond_6

    if-eqz p3, :cond_5

    if-ne p3, p0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    :cond_5
    :goto_2
    move v1, v0

    goto :goto_3

    :cond_6
    cmpl-float p1, p1, p2

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_4

    if-ne p3, p0, :cond_5

    goto :goto_1

    :goto_3
    return v1
.end method

.method public final needUpdateColor(FFIIFI)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    return p0

    :cond_0
    if-eqz p3, :cond_2

    const/16 p6, 0x10e

    if-ne p3, p6, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_1

    :cond_2
    :goto_0
    sub-float/2addr p2, p1

    float-to-int p1, p2

    :goto_1
    const/4 p2, 0x0

    const/high16 p3, 0x3e800000    # 0.25f

    const/high16 p6, 0x3f000000    # 0.5f

    if-eqz p4, :cond_4

    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p4, -0x1

    if-le p1, p4, :cond_6

    sub-float/2addr p5, p6

    .line 1
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_5

    goto :goto_3

    :cond_4
    :goto_2
    if-ge p1, p0, :cond_6

    sub-float/2addr p5, p6

    .line 2
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_5

    goto :goto_3

    :cond_5
    move p0, p2

    :cond_6
    :goto_3
    return p0
.end method

.method public onDraw([F[F[F)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 2
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    .line 4
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    .line 6
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    .line 8
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 10
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 11
    iget-boolean v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 13
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 15
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 16
    iget-boolean v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_7

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    goto :goto_1

    .line 17
    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 18
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->onDraw([F[F)V

    :cond_9
    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->onPreDraw([F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

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

.method public onRotate(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1100bf

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void

    .line 12
    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->updateGradientPosition()V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    return-void
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final resetDirIconPos(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v1

    add-float/2addr v1, v0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v2, 0x420c0000    # 35.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43340000    # 180.0f

    const/16 v3, 0x10e

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    const/4 v7, 0x1

    if-eq p1, v7, :cond_6

    const/4 v2, 0x2

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v8, v6, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 8
    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_4

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v7, v6, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 12
    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_4

    .line 13
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v7, v6, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 17
    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 18
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 19
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 20
    invoke-virtual {p1, v6, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v8, v6, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    goto :goto_4

    .line 22
    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v6, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 25
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 26
    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v3, :cond_a

    goto :goto_3

    .line 27
    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 28
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v6, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_4
    return-void
.end method

.method public final scaleAnimMovingCircle(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "PanoUIComponent"

    const-string v3, "enter into scaleAnim"

    .line 1
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 3
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    move v8, v12

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    move v8, v4

    :goto_0
    const/high16 v13, 0x40a00000    # 5.0f

    if-eqz p2, :cond_1

    move v9, v13

    goto :goto_1

    :cond_1
    move v9, v12

    :goto_1
    const/16 v20, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    const/4 v10, 0x2

    move-object v4, v2

    .line 4
    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 5
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    iput-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    const/4 v15, 0x0

    const-wide/16 v16, 0x64

    if-eqz p2, :cond_2

    move/from16 v18, v13

    goto :goto_2

    :cond_2
    move/from16 v18, v12

    :goto_2
    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object v14, v4

    .line 8
    invoke-direct/range {v14 .. v21}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 9
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 10
    iput-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;

    invoke-direct {v6, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;I)V

    .line 12
    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 13
    iget-object v2, v5, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    aput-object v1, v2, v7

    .line 14
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v5, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final scaleAnimMovingCircleSecond(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$5;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    const-wide/16 v4, 0x64

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final setSavingProgressVisible(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations()V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
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

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 5
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result p1

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v0

    add-float/2addr p1, v0

    .line 8
    new-instance v0, Landroid/util/Size;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v0, v6, v2}, Landroid/util/Size;-><init>(II)V

    .line 9
    sput-object v0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v0

    .line 11
    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    const/high16 v0, 0x42a60000    # 83.0f

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 13
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 14
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v2, Landroid/util/Size;

    invoke-direct {v0, v2}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 17
    iget v2, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v2, v6

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    const/high16 v0, 0x437a0000    # 250.0f

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v4

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 21
    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float/2addr v6, v4

    .line 22
    invoke-virtual {v0, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    .line 24
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    add-float/2addr v2, p1

    invoke-virtual {v0, v3, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    .line 33
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 35
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    .line 36
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    invoke-virtual {v0, v2, v3, v5, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->resetTexturePosition(Lcom/motorola/camera/PreviewSize;FZF)V

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->updateGradientPosition()V

    .line 40
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 41
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 42
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 44
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    .line 45
    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    .line 46
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    .line 47
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    goto/16 :goto_6

    .line 48
    :cond_4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    .line 50
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_6

    .line 51
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    mul-float/2addr p1, v4

    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v0

    .line 53
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v6, 0x43c60000    # 396.0f

    mul-float/2addr v2, v6

    sub-float/2addr v2, p1

    float-to-int p1, v2

    .line 54
    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    .line 55
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    mul-float/2addr p1, v4

    mul-float/2addr p1, v0

    .line 56
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v2, 0x43be0000    # 380.0f

    mul-float/2addr v0, v2

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 57
    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    .line 58
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 59
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 60
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 61
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 62
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 63
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 64
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    .line 65
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    goto/16 :goto_6

    .line 66
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 67
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    goto/16 :goto_6

    .line 68
    :cond_7
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 69
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    .line 70
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 71
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 73
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 74
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 75
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 76
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgressMessage(Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 77
    :cond_8
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 78
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    .line 79
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 80
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    .line 81
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 82
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 83
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_2

    .line 84
    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 85
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_3

    .line 86
    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 87
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    .line 88
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 89
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    .line 90
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 91
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 92
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_4

    .line 93
    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 94
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 95
    :cond_c
    :goto_6
    monitor-exit p0

    return-void

    .line 96
    :cond_d
    :goto_7
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unloadTextures()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 10
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    return-void
.end method

.method public final updateGradientPosition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 2
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGradientBackground:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v2, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final updateProgress(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float v0, p0, p1

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    add-float p0, p1, v1

    goto :goto_0

    :cond_0
    sub-float p0, p1, v1

    :cond_1
    :goto_0
    return p0
.end method
