.class public Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "WideSelfieUIComponent.java"

# interfaces
.implements Lcom/lenovo/core/WideSelfieRotationDetector$RotationDetectorListener;


# instance fields
.field public FADE_DURATION:I

.field public GUIDE_ANIMATION_DURATION:I

.field public GUIDE_FLICKER_DURATION:I

.field public mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

.field public mAccumulateShootOffsetY:F

.field public mAccumulateStopOffsetY:F

.field public mAccumulateX:F

.field public mAccumulateX_offset:F

.field public mAccumulateX_whenFirstShoot:F

.field public mAccumulateY:F

.field public mAccumulateY_ratio:F

.field public mAccumulateY_whenOKtoShoot:F

.field public mAccumulateZ:F

.field public mAccumulateZ_offset:F

.field public mAccumulateZ_whenFirstShoot:F

.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBeingCovered:Z

.field public mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

.field public mDeferredRotation:Z

.field public mDensity:F

.field public mDisplayWidth:F

.field public mFirstShoot:Z

.field public mGuideBackgroundResources:[I

.field public mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mGuideForegroundResources:[I

.field public mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mGuideRectColor:I

.field public mHandlerIsProcessing:Z

.field public mImageIdNeedtoShoot:I

.field public mIsCapturing:Z

.field public mLeftImageAlreadyShotFlag:I

.field public mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public mPreImageIdNeedtoShoot:I

.field public mPreviewOffset:F

.field public volatile mResourceIndex:I

.field public mRightImageAlreadyShotFlag:I

.field public mRotationChange:I

.field public mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSetGuideResourceTimer:Ljava/util/Timer;

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mStartPoint:Landroid/graphics/Point;

.field public mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTimerIsRunning:Z

.field public mVisibleSelfieSmallPreviewTexRunnable:Ljava/lang/Runnable;

.field public mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

.field public mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const p1, -0x83dd3

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 p1, 0x258

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->GUIDE_FLICKER_DURATION:I

    const/16 p1, 0xc8

    .line 5
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->FADE_DURATION:I

    const/16 p1, 0x1f4

    .line 6
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->GUIDE_ANIMATION_DURATION:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_offset:F

    .line 9
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    .line 10
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    .line 11
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    .line 12
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_offset:F

    .line 13
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    const/high16 v0, 0x41c80000    # 25.0f

    .line 14
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 15
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateShootOffsetY:F

    .line 16
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateStopOffsetY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_ratio:F

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    .line 19
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreImageIdNeedtoShoot:I

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    .line 21
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    .line 22
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    .line 23
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    .line 24
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    .line 25
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    .line 26
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    .line 28
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    .line 29
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    .line 30
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    .line 31
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    .line 32
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    .line 33
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 34
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 35
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$6;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Ljava/lang/Runnable;

    .line 36
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    .line 37
    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 38
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    return-void
.end method


# virtual methods
.method public final animateFlickerGuide()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$4;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->GUIDE_FLICKER_DURATION:I

    int-to-long v4, v2

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/16 v9, 0x3e8

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 4
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 5
    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animateShowLivePreview()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$5;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->FADE_DURATION:I

    int-to-long v4, v2

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    aput-object v3, v2, v1

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 4
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 5
    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final getGuideCenterX()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x42180000    # 38.0f

    .line 2
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v2, v0

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 4
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    if-ne p0, v1, :cond_2

    neg-float v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public final getGuideCenterY(F)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getThumbnailCenterY()F

    move-result p1

    const/high16 v0, 0x42c40000    # 98.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v0

    add-float/2addr p0, p1

    return p0

    .line 3
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    :cond_1
    const/high16 v0, 0x42180000    # 38.0f

    .line 4
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    sub-float/2addr p1, p0

    :cond_2
    return p1
.end method

.method public final getProgressMessage(Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "preview"

    .line 1
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    :goto_1
    const/4 v5, 0x0

    .line 5
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "maxWidth"

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "maxHeight"

    .line 7
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v2, v2

    mul-float v6, v2, v4

    int-to-float v7, v1

    div-float/2addr v6, v7

    .line 8
    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v9, v4, v8

    div-float/2addr v9, v7

    float-to-int v6, v6

    float-to-int v7, v4

    .line 9
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 10
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 13
    new-instance v11, Landroid/graphics/Rect;

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    div-float v14, v13, v9

    sub-float v14, v2, v14

    float-to-int v14, v14

    const/4 v15, 0x2

    div-int/2addr v14, v15

    div-float/2addr v13, v9

    add-float/2addr v13, v2

    float-to-int v2, v13

    div-int/2addr v2, v15

    invoke-direct {v11, v14, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    float-to-int v2, v2

    invoke-direct {v1, v12, v12, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    invoke-virtual {v10, v3, v11, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    .line 19
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aput-object v5, v3, v2

    .line 20
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    const/high16 v3, 0x40800000    # 4.0f

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    float-to-double v5, v5

    float-to-double v9, v3

    .line 22
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    div-double/2addr v5, v13

    const/16 v3, 0x3f2

    new-array v3, v3, [F

    const v7, 0x3d23d70a    # 0.04f

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v13

    int-to-float v11, v12

    mul-float v13, v11, v7

    float-to-double v13, v13

    sub-double v13, v9, v13

    .line 23
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v7, v16, v5

    double-to-float v7, v7

    aput v7, v3, v12

    neg-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    aput v7, v3, v2

    move-wide/from16 v16, v9

    neg-double v8, v5

    .line 24
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v5

    move-wide/from16 v21, v13

    add-double v12, v19, v8

    double-to-float v12, v12

    aput v12, v3, v15

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v11, v13, v11

    const/4 v14, 0x3

    aput v11, v3, v14

    const/4 v14, 0x4

    aput v13, v3, v14

    .line 25
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v5

    double-to-float v13, v13

    const/4 v14, 0x5

    aput v13, v3, v14

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    const/4 v10, 0x6

    aput v4, v3, v10

    .line 26
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v5

    add-double/2addr v13, v8

    double-to-float v10, v13

    const/4 v13, 0x7

    aput v10, v3, v13

    const/16 v10, 0x8

    aput v11, v3, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput v11, v3, v10

    const/4 v10, 0x0

    :goto_2
    const/16 v13, 0x64

    if-ge v10, v13, :cond_3

    mul-int/lit8 v13, v10, 0xa

    add-int/lit8 v14, v13, 0xa

    add-int/lit8 v10, v10, 0x1

    int-to-float v15, v10

    const v18, 0x3d23d70a    # 0.04f

    mul-float v2, v15, v18

    float-to-double v11, v2

    sub-double v11, v16, v11

    .line 27
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-object v2, v1

    mul-double v0, v21, v5

    double-to-float v0, v0

    aput v0, v3, v14

    add-int/lit8 v0, v13, 0xb

    .line 28
    aput v7, v3, v0

    add-int/lit8 v0, v13, 0xc

    .line 29
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v5

    move-object v14, v2

    add-double v1, v21, v8

    double-to-float v1, v1

    aput v1, v3, v0

    add-int/lit8 v0, v13, 0xd

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v15, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v15, v2, v15

    .line 30
    aput v15, v3, v0

    add-int/lit8 v0, v13, 0xe

    .line 31
    aput v2, v3, v0

    add-int/lit8 v0, v13, 0xf

    .line 32
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v1, v21, v5

    double-to-float v1, v1

    aput v1, v3, v0

    add-int/lit8 v0, v13, 0x10

    .line 33
    aput v4, v3, v0

    add-int/lit8 v0, v13, 0x11

    .line 34
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v5

    add-double/2addr v1, v8

    double-to-float v1, v1

    aput v1, v3, v0

    add-int/lit8 v0, v13, 0x12

    .line 35
    aput v15, v3, v0

    add-int/lit8 v13, v13, 0x13

    const/4 v0, 0x0

    .line 36
    aput v0, v3, v13

    move v11, v0

    move-object v1, v14

    const/4 v2, 0x1

    const v12, 0x3c23d70a    # 0.01f

    move-object/from16 v0, p0

    goto :goto_2

    .line 37
    :cond_3
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setVerticesData([F)V

    move-object/from16 v0, p0

    .line 38
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
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

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;->LENOVO_SELFIE_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WideSelfieUIComponent"

    return-object p0
.end method

.method public final getThumbnailCenterY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    .line 3
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public final ifAllowtoTakePicture()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public loadTextures()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundResources:[I

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundResources:[I

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundResources:[I

    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundResources:[I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v2, 0x42a60000    # 83.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 7
    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sSelfiePreviewHeight:I

    .line 8
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->MINI_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    .line 9
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 10
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    .line 11
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 12
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mLineWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v0

    .line 17
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    .line 18
    new-instance v0, Lcom/lenovo/core/WideSelfieRotationDetector;

    invoke-direct {v0}, Lcom/lenovo/core/WideSelfieRotationDetector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    .line 19
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 20
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f1100f3

    .line 21
    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    .line 23
    monitor-enter v0

    .line 24
    monitor-exit v0

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 26
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 33
    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 34
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 35
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 37
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 39
    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 40
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 41
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 42
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource$enumunboxing$(II)V

    .line 43
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 45
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 46
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 47
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 48
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setAlpha(F)V

    .line 49
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 51
    invoke-virtual {v0, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 52
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->loadTexture()V

    .line 53
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setDisplayOrientation(I)V

    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 55
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 56
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 57
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    .line 58
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 59
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 60
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 61
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 62
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 63
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 65
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 66
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF_LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    .line 68
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 69
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 70
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 71
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x42740000    # 61.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v3

    mul-float/2addr p0, v1

    sub-float/2addr v2, p0

    float-to-int p0, v2

    .line 73
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    goto :goto_1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v3

    mul-float/2addr p0, v1

    sub-float/2addr v2, p0

    float-to-int p0, v2

    .line 75
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    :goto_1
    return v4

    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0

    throw p0

    :array_0
    .array-data 4
        0x7f08022c
        0x7f08022e
        0x7f08022f
        0x7f08022d
        0x7f080230
    .end array-data

    :array_1
    .array-data 4
        0x7f08022c
        0x7f080232
        0x7f080233
        0x7f080231
        0x7f080234
    .end array-data

    :array_2
    .array-data 4
        0x7f080227
        0x7f080229
        0x7f08022a
        0x7f080228
        0x7f08022b
    .end array-data

    :array_3
    .array-data 4
        0x7f080227
        0x7f080236
        0x7f080237
        0x7f080235
        0x7f080238
    .end array-data
.end method

.method public onDraw([F[F[F)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 2
    iget-boolean v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    .line 4
    iget-object v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;->mProjectMatrix:[F

    .line 5
    iget-boolean v2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    .line 7
    iget-boolean v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->onDraw([F[F)V

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    .line 9
    iget-boolean v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->onDraw([F[F)V

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 11
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 13
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 14
    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 15
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    :cond_6
    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 5
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
    .locals 10

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    .line 5
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v0, 0xb4

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/16 v4, 0x10e

    if-eq p1, v4, :cond_1

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 13
    iput v2, p1, Lcom/lenovo/core/WideSelfieRotationDetector;->mCurOrientaion:I

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 19
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 20
    invoke-virtual {p1, v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_1

    .line 21
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_4

    if-ne p1, v0, :cond_5

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float p1, p1

    invoke-virtual {v0, p1, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 23
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez p1, :cond_6

    return-void

    .line 24
    :cond_6
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    if-eqz p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_7

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_7
    return-void

    .line 29
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 30
    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 31
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 32
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$3;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->FADE_DURATION:I

    int-to-long v4, v2

    const/4 v8, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    new-array v2, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 33
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    aput-object v3, v2, v1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 34
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 35
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_a
    return-void
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    .line 3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->onRotate(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 7
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getShutterButtonCoordinates(Z)Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result v1

    .line 8
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    .line 9
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_2
    move v3, v0

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v4

    cmpl-float v4, v4, v0

    if-nez v4, :cond_3

    add-float/2addr v3, v2

    add-float/2addr v3, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v3, v0

    :cond_3
    add-float/2addr v0, p1

    .line 12
    :goto_1
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    .line 13
    iget p1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr p1, v0

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$8;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setGuideResource$enumunboxing$(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    if-ne p2, v3, :cond_4

    :goto_0
    const/4 v0, 0x4

    goto :goto_2

    :cond_4
    if-ne p2, v2, :cond_5

    :goto_1
    const/4 v0, 0x5

    :cond_5
    :goto_2
    const/4 p1, -0x1

    if-eqz v0, :cond_6

    .line 2
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result p2

    goto :goto_3

    :cond_6
    move p2, p1

    :goto_3
    if-ne p2, p1, :cond_7

    return-void

    .line 3
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundResources:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundResources:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    return-void
.end method

.method public final setSavingProgressVisible(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations()V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final setVisibility(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final setupUIPosition()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getThumbnailCenterY()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 3
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;->mProjectMatrix:[F

    iget v1, v2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v4, v1

    int-to-float v4, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v4, v11

    const/4 v12, 0x0

    sub-float v5, v4, v12

    int-to-float v1, v1

    div-float/2addr v1, v11

    sub-float v6, v1, v12

    iget v1, v2, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v2, v1

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float v7, v2, v0

    int-to-float v1, v1

    div-float/2addr v1, v11

    sub-float v8, v1, v0

    const v9, 0x419feb85    # 19.99f

    const/4 v4, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 5
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 6
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v4, v12, v0, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    .line 9
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 10
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v4, v12, v0, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    aput-object v4, v2, v5

    .line 11
    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v3

    invoke-virtual {v1, v2, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v3

    invoke-virtual {v1, v2, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    .line 15
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v11

    const/high16 v3, 0x41a00000    # 20.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v4, v3

    sub-float/2addr v0, v4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result p0

    div-float/2addr p0, v11

    goto :goto_0

    :cond_0
    const/high16 v3, 0x42880000    # 68.0f

    .line 18
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v3, p0

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr p0, v4

    add-float/2addr p0, v3

    :goto_0
    sub-float/2addr v0, p0

    .line 19
    invoke-virtual {v1, v2, v0, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 12
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;->LENOVO_SELFIE_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 2
    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    .line 3
    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    .line 4
    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    .line 5
    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    .line 6
    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    .line 7
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    .line 8
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    .line 9
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    .line 10
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    .line 11
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    .line 12
    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    .line 13
    sget v0, Lcom/motorola/camera/panorama/PanoHelper;->sSelfiePreviewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    .line 15
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 16
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 19
    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v1, v11

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float v10, v1, v0

    iput v10, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    .line 20
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationX(FFFFF)V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->setColor(I)V

    .line 22
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationX(FFFFF)D

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 24
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 25
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 26
    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v6, v1, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v6, v1, v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility(Z)V

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setupUIPosition()V

    .line 31
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateShowLivePreview()V

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 33
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    .line 34
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    monitor-exit v0

    .line 37
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    invoke-virtual {v0, v5, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 38
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setSavingProgressVisible(Z)V

    .line 39
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 40
    invoke-static {v3, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 41
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0

    throw p1

    .line 43
    :cond_1
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility(Z)V

    .line 46
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_3

    .line 47
    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLenovoSelfie()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 50
    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_3

    .line 51
    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 53
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->setColor(I)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility(Z)V

    .line 55
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_3

    .line 56
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 58
    iput v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mCurOrientaion:I

    .line 59
    iput-object p0, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mRotationDetectorListener:Lcom/lenovo/core/WideSelfieRotationDetector$RotationDetectorListener;

    .line 60
    iput v5, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mTimestamp:F

    .line 61
    iput v5, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    .line 62
    iput v5, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    .line 63
    iput v5, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateZ:F

    .line 64
    iget-object v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v1, :cond_5

    .line 65
    iget-object v3, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 66
    :cond_5
    iget-object v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mLineraAccelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_c

    .line 67
    iget-object v3, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_3

    .line 68
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 69
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 70
    :cond_7
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    .line 73
    iput v5, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mTimestamp:F

    .line 74
    iput v5, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    .line 75
    iput v5, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    .line 76
    iput v5, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateZ:F

    .line 77
    iget-object v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_3

    .line 78
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 79
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    .line 80
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 81
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setPostScreenTranslation(FFF)V

    .line 83
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 84
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->setPostScreenTranslation(FFF)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setSavingProgressVisible(Z)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    .line 87
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility(Z)V

    goto :goto_3

    .line 88
    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLenovoSelfie()Z

    move-result v0

    if-nez v0, :cond_c

    .line 90
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 91
    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 92
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 93
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_3

    .line 94
    :cond_b
    :goto_2
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 95
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 96
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 97
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getProgressMessage(Landroid/os/Bundle;)V

    .line 98
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    .line 99
    :cond_c
    :goto_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 100
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations()V

    .line 101
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    .line 102
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    if-eqz p1, :cond_d

    .line 103
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :cond_d
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unloadTextures()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->unloadTexture()V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    return-void
.end method

.method public updateAngle(FFF)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    .line 2
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    .line 3
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    .line 4
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    if-eqz v4, :cond_42

    .line 5
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 6
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v6, v7}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v6

    const/high16 v7, 0x41c80000    # 25.0f

    const/16 v8, 0xb4

    if-eqz v6, :cond_0

    .line 7
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    goto :goto_1

    :cond_0
    const/high16 v6, 0x41700000    # 15.0f

    if-eqz v5, :cond_2

    if-ne v5, v8, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v6

    .line 10
    :cond_3
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    :goto_1
    const/16 v6, 0x10e

    const/4 v7, 0x1

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/16 v13, 0x5a

    const/4 v14, 0x3

    if-eqz v5, :cond_d

    if-eq v5, v13, :cond_a

    if-eq v5, v8, :cond_7

    if-eq v5, v6, :cond_4

    goto/16 :goto_2

    .line 11
    :cond_4
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_ratio:F

    mul-float/2addr v15, v5

    cmpl-float v16, v2, v15

    if-ltz v16, :cond_5

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateShootOffsetY:F

    add-float/2addr v15, v9

    cmpg-float v9, v2, v15

    if-gtz v9, :cond_5

    const/16 v5, 0xa

    goto/16 :goto_4

    :cond_5
    neg-float v9, v5

    cmpg-float v15, v2, v9

    if-gtz v15, :cond_6

    .line 12
    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateShootOffsetY:F

    sub-float v15, v9, v15

    cmpl-float v15, v2, v15

    if-ltz v15, :cond_6

    const/16 v5, 0xb

    goto/16 :goto_4

    .line 13
    :cond_6
    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateStopOffsetY:F

    sub-float/2addr v9, v15

    cmpg-float v9, v2, v9

    if-ltz v9, :cond_11

    add-float/2addr v5, v15

    cmpl-float v5, v2, v5

    if-lez v5, :cond_10

    goto/16 :goto_3

    .line 14
    :cond_7
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    cmpl-float v9, v2, v5

    if-ltz v9, :cond_8

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateShootOffsetY:F

    add-float/2addr v9, v5

    cmpg-float v9, v2, v9

    if-gtz v9, :cond_8

    const/4 v5, 0x7

    goto/16 :goto_4

    :cond_8
    neg-float v9, v5

    cmpg-float v15, v2, v9

    if-gtz v15, :cond_9

    .line 15
    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateShootOffsetY:F

    sub-float v15, v9, v15

    cmpl-float v15, v2, v15

    if-ltz v15, :cond_9

    const/16 v5, 0x8

    goto/16 :goto_4

    .line 16
    :cond_9
    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateStopOffsetY:F

    sub-float/2addr v9, v15

    cmpg-float v9, v2, v9

    if-ltz v9, :cond_11

    add-float/2addr v5, v15

    cmpl-float v5, v2, v5

    if-lez v5, :cond_10

    goto/16 :goto_3

    .line 17
    :cond_a
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    cmpl-float v9, v2, v5

    if-ltz v9, :cond_b

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateShootOffsetY:F

    add-float/2addr v9, v5

    cmpg-float v9, v2, v9

    if-gtz v9, :cond_b

    move v5, v11

    goto :goto_4

    :cond_b
    neg-float v9, v5

    .line 18
    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_ratio:F

    mul-float/2addr v9, v15

    cmpg-float v17, v2, v9

    if-gtz v17, :cond_c

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateShootOffsetY:F

    sub-float v8, v9, v8

    cmpl-float v8, v2, v8

    if-ltz v8, :cond_c

    move v5, v10

    goto :goto_4

    .line 19
    :cond_c
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateStopOffsetY:F

    sub-float/2addr v9, v8

    cmpg-float v9, v2, v9

    if-ltz v9, :cond_11

    mul-float/2addr v5, v15

    add-float/2addr v5, v8

    cmpl-float v5, v2, v5

    if-lez v5, :cond_10

    goto :goto_3

    .line 20
    :cond_d
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    cmpl-float v8, v2, v5

    if-ltz v8, :cond_e

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateShootOffsetY:F

    add-float/2addr v8, v5

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_e

    move v5, v7

    goto :goto_4

    :cond_e
    neg-float v8, v5

    cmpg-float v9, v2, v8

    if-gtz v9, :cond_f

    .line 21
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateShootOffsetY:F

    sub-float v9, v8, v9

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_f

    move v5, v12

    goto :goto_4

    .line 22
    :cond_f
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateStopOffsetY:F

    sub-float/2addr v8, v9

    cmpg-float v8, v2, v8

    if-ltz v8, :cond_11

    add-float/2addr v5, v9

    cmpl-float v5, v2, v5

    if-lez v5, :cond_10

    goto :goto_3

    :cond_10
    :goto_2
    move v5, v14

    goto :goto_4

    :cond_11
    :goto_3
    const/4 v5, 0x6

    .line 23
    :goto_4
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_offset:F

    add-float v15, v8, v9

    cmpl-float v15, v1, v15

    if-gtz v15, :cond_13

    neg-float v8, v8

    sub-float/2addr v8, v9

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_13

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_offset:F

    add-float v15, v8, v9

    cmpl-float v15, v3, v15

    if-gtz v15, :cond_13

    neg-float v8, v8

    sub-float/2addr v8, v9

    cmpg-float v3, v3, v8

    if-gez v3, :cond_12

    goto :goto_5

    :cond_12
    move v9, v5

    goto :goto_6

    .line 24
    :cond_13
    :goto_5
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 25
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v3, :cond_14

    .line 26
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3, v5}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 27
    :cond_14
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v3, v14}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    const/4 v9, 0x6

    :goto_6
    const/4 v3, -0x1

    const/4 v5, 0x0

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 28
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_15

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v8, :cond_15

    .line 29
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    .line 30
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 31
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v8, v7, :cond_1e

    .line 32
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 33
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_16

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v8, :cond_16

    .line 34
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    .line 35
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 36
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-ne v8, v7, :cond_1e

    .line 37
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 38
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_17

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v8, :cond_17

    .line 39
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    .line 40
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 41
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v8, v7, :cond_1e

    .line 42
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    .line 43
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 44
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_18

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v8, :cond_18

    .line 45
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    .line 46
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 47
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-ne v8, v7, :cond_1e

    .line 48
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 49
    :pswitch_5
    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 50
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_19

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v8, :cond_19

    .line 51
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    .line 52
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_7

    .line 53
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v8, v7, :cond_1e

    .line 54
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_7

    .line 55
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1a

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v8, :cond_1a

    .line 56
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    .line 57
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_7

    .line 58
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-ne v8, v7, :cond_1e

    .line 59
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_7

    .line 60
    :pswitch_8
    iget-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    if-eqz v8, :cond_1b

    goto :goto_7

    .line 61
    :cond_1b
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_7

    .line 62
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1c

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v8, :cond_1c

    .line 63
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    .line 64
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_7

    .line 65
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v8, v7, :cond_1e

    .line 66
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_7

    .line 67
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1d

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v8, :cond_1d

    .line 68
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    .line 69
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_7

    .line 70
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-ne v8, v7, :cond_1e

    .line 71
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    :cond_1e
    :goto_7
    float-to-int v2, v2

    float-to-int v1, v1

    .line 72
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v8, :cond_1f

    :goto_8
    move v3, v7

    goto/16 :goto_15

    .line 73
    :cond_1f
    iget-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    if-nez v8, :cond_20

    goto :goto_8

    .line 74
    :cond_20
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    if-nez v8, :cond_21

    .line 75
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    .line 76
    :cond_21
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v8

    sget-object v9, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    if-eqz v8, :cond_22

    .line 77
    invoke-static {v7}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z)Landroid/util/Size;

    move-result-object v8

    goto :goto_9

    .line 78
    :cond_22
    new-instance v8, Landroid/util/Size;

    const/16 v9, 0x140

    const/16 v15, 0xf0

    invoke-direct {v8, v9, v15}, Landroid/util/Size;-><init>(II)V

    .line 79
    :goto_9
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 80
    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v15}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v15

    invoke-static {v9, v15}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfieStitchingRatio(IZ)F

    move-result v9

    .line 81
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v9, v9, v16

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    mul-float/2addr v15, v9

    .line 82
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    .line 83
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eq v3, v13, :cond_23

    if-ne v3, v6, :cond_24

    .line 84
    :cond_23
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v15, v3, v9

    .line 85
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v11, v3

    .line 86
    :cond_24
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eq v3, v13, :cond_26

    if-ne v3, v6, :cond_25

    goto :goto_a

    .line 87
    :cond_25
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    .line 88
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    goto :goto_b

    .line 89
    :cond_26
    :goto_a
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    .line 90
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    :goto_b
    mul-float/2addr v15, v8

    div-float v8, v15, v11

    .line 91
    iput v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    const v11, 0x3f666666    # 0.9f

    sub-float v9, v8, v9

    mul-float/2addr v9, v10

    .line 92
    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    mul-float v15, v15, v16

    div-float/2addr v9, v15

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    .line 93
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    iget v15, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v15

    int-to-float v2, v2

    mul-float/2addr v2, v11

    .line 94
    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v1

    int-to-float v1, v9

    mul-float/2addr v1, v11

    const/4 v9, 0x0

    if-ne v3, v13, :cond_28

    .line 95
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/16 v19, 0x4

    .line 96
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliCamera()Z

    move-result v6

    if-nez v6, :cond_27

    neg-float v6, v2

    move/from16 v20, v6

    goto :goto_c

    :cond_27
    move/from16 v20, v2

    .line 97
    :goto_c
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    move-object/from16 v18, v3

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v11

    .line 98
    invoke-virtual/range {v18 .. v23}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationY(IFFFF)D

    move-result-wide v15

    .line 99
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    const/high16 v19, 0x40800000    # 4.0f

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    move-object/from16 v18, v3

    move/from16 v20, v2

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v11

    invoke-virtual/range {v18 .. v23}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationY(FFFFF)V

    .line 100
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v3, v1, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->setPostScreenTranslation(FFF)V

    .line 101
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v3, v1, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setPostScreenTranslation(FFF)V

    goto/16 :goto_e

    :cond_28
    if-ne v3, v6, :cond_2a

    .line 102
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/16 v19, 0x4

    .line 103
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliCamera()Z

    move-result v6

    if-nez v6, :cond_29

    neg-float v6, v2

    move/from16 v20, v6

    goto :goto_d

    :cond_29
    move/from16 v20, v2

    .line 104
    :goto_d
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    move-object/from16 v18, v3

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v11

    .line 105
    invoke-virtual/range {v18 .. v23}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationY(IFFFF)D

    move-result-wide v15

    .line 106
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    const/high16 v19, 0x40800000    # 4.0f

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    move-object/from16 v18, v3

    move/from16 v20, v2

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v11

    invoke-virtual/range {v18 .. v23}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationY(FFFFF)V

    .line 107
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v3, v1, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->setPostScreenTranslation(FFF)V

    .line 108
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v3, v1, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setPostScreenTranslation(FFF)V

    goto :goto_e

    .line 109
    :cond_2a
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/high16 v6, 0x40800000    # 4.0f

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    const/high16 v19, 0x40800000    # 4.0f

    move-object/from16 v18, v3

    move/from16 v20, v2

    move/from16 v21, v8

    move/from16 v22, v11

    move/from16 v23, v15

    invoke-virtual/range {v18 .. v23}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationX(FFFFF)D

    move-result-wide v15

    .line 110
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    move-object/from16 v18, v3

    move/from16 v19, v6

    move/from16 v21, v8

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-virtual/range {v18 .. v23}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationX(FFFFF)V

    .line 111
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v3, v9, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->setPostScreenTranslation(FFF)V

    .line 112
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v3, v9, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setPostScreenTranslation(FFF)V

    :goto_e
    move-wide v11, v15

    const-wide/16 v15, 0x0

    cmpl-double v1, v11, v15

    if-lez v1, :cond_2b

    double-to-int v1, v11

    add-int/2addr v1, v7

    int-to-double v11, v1

    .line 113
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    neg-double v7, v11

    double-to-float v6, v7

    invoke-virtual {v1, v9, v9, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 114
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v1, v9, v9, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 115
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v1, v9, v9, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    add-double/2addr v11, v6

    div-double/2addr v11, v6

    double-to-float v1, v11

    .line 116
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v6, v6, v1

    if-eqz v6, :cond_2c

    .line 117
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v6, v1, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 118
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v6, v1, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 119
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v6, v1, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_f

    .line 120
    :cond_2b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 121
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 122
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 123
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 124
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 125
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 126
    :cond_2c
    :goto_f
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v1, :cond_33

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v6, :cond_33

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2f

    .line 127
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    if-eqz v1, :cond_2d

    .line 128
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateFlickerGuide()V

    .line 130
    :cond_2d
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    .line 131
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-ne v1, v13, :cond_2e

    const/4 v2, 0x2

    goto :goto_10

    :cond_2e
    move v2, v14

    :goto_10
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource$enumunboxing$(II)V

    goto/16 :goto_14

    :cond_2f
    const/high16 v1, -0x3ee00000    # -10.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_32

    .line 132
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    if-eqz v1, :cond_30

    .line 133
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateFlickerGuide()V

    .line 135
    :cond_30
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    .line 136
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-ne v1, v13, :cond_31

    move v2, v14

    goto :goto_11

    :cond_31
    const/4 v2, 0x2

    :goto_11
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource$enumunboxing$(II)V

    goto :goto_14

    .line 137
    :cond_32
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1, v14}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 138
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    if-nez v1, :cond_37

    .line 139
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    .line 140
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$7;

    invoke-direct {v7, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$7;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;)V

    const-wide/16 v8, 0x0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->GUIDE_ANIMATION_DURATION:I

    int-to-long v10, v1

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v2, 0x1

    .line 141
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    goto :goto_14

    :cond_33
    const/4 v2, 0x1

    if-nez v1, :cond_35

    .line 142
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v3, v2, :cond_35

    .line 143
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-ne v1, v13, :cond_34

    const/4 v3, 0x2

    goto :goto_12

    :cond_34
    move v3, v14

    :goto_12
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource$enumunboxing$(II)V

    goto :goto_14

    :cond_35
    if-ne v1, v2, :cond_37

    .line 144
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v1, :cond_37

    .line 145
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-ne v1, v13, :cond_36

    move v2, v14

    goto :goto_13

    :cond_36
    const/4 v2, 0x2

    :goto_13
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource$enumunboxing$(II)V

    .line 146
    :cond_37
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getThumbnailCenterY()F

    move-result v1

    .line 147
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v6

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v2, v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 148
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 149
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v6

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v1

    invoke-virtual {v2, v6, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 150
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 151
    :goto_15
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3c

    if-eqz v1, :cond_3c

    if-ne v1, v3, :cond_38

    goto :goto_16

    :cond_38
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3b

    .line 152
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v1, :cond_39

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-eqz v1, :cond_41

    :cond_39
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    if-eqz v1, :cond_41

    .line 153
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    .line 155
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreImageIdNeedtoShoot:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3a

    .line 156
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    goto/16 :goto_19

    :cond_3a
    if-ne v1, v14, :cond_41

    .line 157
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    goto/16 :goto_19

    :cond_3b
    const/4 v2, 0x5

    if-ne v1, v2, :cond_41

    .line 158
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1, v14}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 159
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 160
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v1, :cond_41

    .line 161
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_19

    .line 162
    :cond_3c
    :goto_16
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    const-string v4, "WIDE_SELFIE_ROTATION_X"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 164
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    const-string v4, "WIDE_SELFIE_ROTATION_Y"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 165
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    const-string v4, "PANO_SELFIE_IMAGE_ID"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    if-eqz v2, :cond_3e

    .line 167
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    .line 168
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    .line 169
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 170
    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v1, :cond_3d

    .line 171
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 172
    :cond_3d
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    goto :goto_19

    :cond_3e
    const/4 v2, 0x1

    .line 173
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    .line 174
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_40

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3f

    goto :goto_17

    :cond_3f
    const/16 v2, 0x64

    goto :goto_18

    :cond_40
    :goto_17
    const/16 v2, 0xc8

    .line 175
    :goto_18
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$1;

    invoke-direct {v4, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;Landroid/os/Bundle;)V

    int-to-long v1, v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_41
    :goto_19
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreImageIdNeedtoShoot:I

    const/4 v1, -0x1

    .line 177
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    :cond_42
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
