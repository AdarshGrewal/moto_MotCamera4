.class public Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "PostCaptureReview.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;
.implements Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mButtonsLoaded:Z

.field public mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

.field public mDensity:F

.field public volatile mDirty:Z

.field public mDismissRunnable:Ljava/lang/Runnable;

.field public mFrameReceived:I

.field public mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mMimeType:Ljava/lang/String;

.field public mOffScreenProj:[F

.field public mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

.field public mReviewState:Z

.field public mShowPlay:Z

.field public mUri:Landroid/net/Uri;

.field public mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public volatile mWmDrawRequired:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDismissRunnable:Ljava/lang/Runnable;

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDensity:F

    return-void
.end method


# virtual methods
.method public final checkState()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 4
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->doDelayedDismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dismissReview(Z)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v1, 0xb4

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/16 v4, 0x10e

    if-eq p1, v4, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_3

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    :goto_3
    move v8, p1

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v3, :cond_5

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_4

    :cond_5
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_4
    int-to-float p1, p1

    if-eqz v2, :cond_6

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr p1, v1

    :cond_6
    move v9, p1

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const-wide/16 v6, 0xc8

    .line 9
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;

    invoke-direct {v5, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;Z)V

    const/4 v11, 0x0

    const/4 v10, 0x2

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 11
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 12
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_5

    .line 14
    :cond_7
    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    goto :goto_5

    .line 15
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 19
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 20
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v5

    const-wide/16 v3, 0xc8

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 22
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 23
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :goto_5
    return-void
.end method

.method public final doDelayedDismiss()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDismissRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
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

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/Collection;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 7
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PostCaptureReview"

    return-object p0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 15

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v3, 0x4

    new-array v4, v3, [I

    const/4 v5, -0x1

    aput v5, v4, v0

    const/4 v6, 0x1

    aput v5, v4, v6

    const/4 v7, 0x2

    aput v5, v4, v7

    const/4 v8, 0x3

    aput v5, v4, v8

    invoke-direct {v1, p0, v2, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZ)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-array v3, v3, [I

    const/high16 v4, -0x1000000

    aput v4, v3, v0

    aput v4, v3, v6

    aput v4, v3, v7

    aput v4, v3, v8

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZ)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 5
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 6
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, p0, v2, p0, v6}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 7
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$3;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, p0, v2, p0, v6}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 8
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$4;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, p0, v2, p0, v6}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 9
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/16 v2, 0xe

    invoke-virtual {v1, v6, v7, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setButtonResources(IIII)V

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/16 v2, 0x15

    invoke-virtual {v1, v6, v7, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setButtonResources(IIII)V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/16 v2, 0xd

    invoke-virtual {v1, v6, v7, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setButtonResources(IIII)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 20
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    .line 21
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 22
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v3, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v9, v3, v4

    int-to-float v2, v2

    div-float v10, v2, v4

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v2, v1

    int-to-float v2, v2

    div-float v11, v2, v4

    int-to-float v1, v1

    div-float v12, v1, v4

    const/high16 v13, 0x41200000    # 10.0f

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-static/range {v7 .. v14}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 23
    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return v6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final loadWatermarkBitmap(Ljava/nio/ByteBuffer;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v10, p2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimestampEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x1

    .line 2
    :try_start_0
    new-instance v12, Lcom/motorola/camera/utility/ByteBufferInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v13, p1

    :try_start_1
    invoke-direct {v12, v13}, Lcom/motorola/camera/utility/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    const-string v2, "ImageWidth"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "ImageLength"

    .line 5
    invoke-virtual {v0, v4, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 6
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v2, v4}, Landroid/util/Size;-><init>(II)V

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v6, Landroid/util/SizeF;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 7
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v6, v2, v7}, Landroid/util/SizeF;-><init>(FF)V

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v7

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimestampEnabled()Z

    move-result v8

    const-string v2, "DateTime"

    .line 10
    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string/jumbo v14, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v2, v14, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 14
    new-instance v9, Ljava/text/ParsePosition;

    invoke-direct {v9, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 15
    invoke-virtual {v2, v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-wide v15, v2

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/16 v15, -0x1

    :goto_1
    move-object v2, v5

    move-object v3, v4

    move-object v4, v6

    move/from16 v5, p2

    move v6, v7

    move v7, v8

    move-wide v8, v15

    .line 17
    invoke-static/range {v2 .. v9}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkBitmap(Landroid/util/Size;Lcom/motorola/camera/PreviewSize;Landroid/util/SizeF;IZZJ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    neg-int v2, v10

    int-to-float v2, v2

    .line 20
    invoke-static {v0, v2}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    .line 21
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v2, v0, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 22
    iput-boolean v11, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWmDrawRequired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    :cond_5
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 24
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_3
    move-exception v0

    move-object/from16 v13, p1

    .line 25
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    throw v0

    :catch_0
    move-object/from16 v13, p1

    .line 27
    :catch_1
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, -0x1

    if-eq v10, v0, :cond_b

    .line 28
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 29
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 30
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    .line 31
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    if-eqz v10, :cond_9

    .line 32
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 33
    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    const/16 v2, 0x5a

    if-ne v2, v10, :cond_7

    const/4 v2, 0x2

    goto :goto_7

    :cond_7
    const/16 v2, 0xb4

    if-ne v2, v10, :cond_8

    const/4 v2, 0x3

    goto :goto_7

    :cond_8
    const/16 v2, 0x10e

    if-ne v2, v10, :cond_9

    const/4 v2, 0x4

    goto :goto_7

    :cond_9
    :goto_6
    move v2, v11

    .line 34
    :goto_7
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 35
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 36
    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v2

    add-int/2addr v2, v11

    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$ui$widgets$gl$PostCaptureReview$POSITION$s$values()[I

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v2, v4

    .line 37
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$ui$widgets$gl$PostCaptureReview$POSITION$s$values()[I

    move-result-object v4

    aget v2, v4, v2

    .line 38
    :cond_a
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 39
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getxSign$$com$motorola$camera$ui$widgets$gl$PostCaptureReview$POSITION(I)F

    move-result v5

    mul-float/2addr v5, v3

    iget v3, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v5, v3

    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getySign$$com$motorola$camera$ui$widgets$gl$PostCaptureReview$POSITION(I)F

    move-result v2

    mul-float/2addr v2, v0

    iget v0, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v5, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_b
    return-void
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 3
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->onDraw([F[F)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 5
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->onDraw([F[F)V

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 7
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDrawFbo([F[F[F)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object p2

    .line 3
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->width:I

    if-eq v2, v4, :cond_0

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v2, v3, Lcom/motorola/camera/PreviewSize;->height:I

    if-eq p2, v2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    .line 6
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    :cond_0
    const/4 p2, 0x0

    .line 7
    invoke-static {p2, p2, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const v2, 0x8d40

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v3

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/16 v2, 0x4100

    .line 9
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort()V

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    .line 12
    iget-boolean v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->onDraw([F[F)V

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    .line 14
    iget-boolean v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->onDraw([F[F)V

    .line 15
    :cond_2
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    goto :goto_0

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 17
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 18
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 19
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    .line 20
    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->getPostCaptureTexture(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v2

    .line 21
    :goto_0
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setFrameSizes(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    .line 22
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    if-ne v3, v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 23
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 24
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 25
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    if-eqz v3, :cond_7

    .line 26
    :cond_4
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x43340000    # 180.0f

    if-eqz v3, :cond_6

    const/16 v6, 0xb4

    if-ne v3, v6, :cond_5

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual {v2, v5, v4, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    goto :goto_2

    .line 28
    :cond_6
    :goto_1
    invoke-virtual {v2, v5, p2, v4, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 29
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 30
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWmDrawRequired:Z

    if-eqz p2, :cond_8

    .line 31
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 32
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWmDrawRequired:Z

    .line 33
    :cond_8
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    .line 34
    :cond_9
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    if-eqz p1, :cond_a

    .line 35
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    .line 36
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPostCaptureAvailable(ZLcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostCaptureReview()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->checkState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

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
    .locals 1

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->setDisplayOrientation(I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->setDisplayOrientation(I)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->setDisplayOrientation(I)V

    .line 6
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setFrameSizes(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDensity:F

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setFrameSizes(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 4
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final processKeyEvent(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "KEY_CODE"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final setButtonPositions(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 3
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDensity:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    .line 4
    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float v3, v0, v4

    add-float/2addr v3, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    div-float/2addr v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-float/2addr v3, v0

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p1, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p1, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    neg-float v0, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 11
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 15
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 16
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 17
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 18
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 19
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    .line 20
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v2

    float-to-int p0, p0

    aput p0, v0, v1

    const-string p0, "LAYOUT_X"

    .line 21
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 22
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 23
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->REVIEW_LAYOUT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setFrameSizes(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast v1, Landroid/util/Size;

    :goto_0
    if-eqz v1, :cond_9

    .line 9
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTsbOffsetBasedOnOrientation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 11
    iget-object v3, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget v5, v3, Landroid/graphics/Point;->x:I

    if-nez v5, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v5, v5

    div-float/2addr v3, v5

    const v5, 0x40066666    # 2.1f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v4

    :goto_2
    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 14
    iget v0, v0, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    int-to-float v0, v0

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    const/high16 v3, 0x41200000    # 10.0f

    .line 15
    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDensity:F

    mul-float/2addr v3, v6

    .line 16
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    sub-float/2addr v8, v0

    sub-float/2addr v8, v3

    .line 17
    iget v0, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    const/high16 v7, 0x41f00000    # 30.0f

    mul-float/2addr v6, v7

    sub-float/2addr v0, v6

    sub-float/2addr v0, v3

    .line 18
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    iget-boolean v7, v7, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v7, :cond_6

    sub-float/2addr v8, v6

    .line 20
    :cond_6
    new-instance v6, Lcom/motorola/camera/PreviewSize;

    float-to-int v0, v0

    float-to-int v7, v8

    invoke-direct {v6, v0, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-static {v6, v0, v4}, Lcom/motorola/camera/Util;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/motorola/camera/Util$PreviewFitTransform;

    move-result-object v0

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/Util$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 22
    iget-object v4, v0, Lcom/motorola/camera/Util$PreviewFitTransform;->rotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x43870000    # 270.0f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_8

    .line 23
    :cond_7
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v7, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-direct {v4, v6, v7, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    move-object v1, v4

    .line 24
    :cond_8
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v4, v3

    .line 25
    iget v7, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v7, v3

    .line 26
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 27
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v3, v4, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 28
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    div-float/2addr v2, v6

    invoke-direct {v1, v5, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 29
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v3, 0x4

    .line 30
    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 31
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 32
    invoke-virtual {p0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz p1, :cond_9

    .line 33
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 34
    iget-object p0, v0, Lcom/motorola/camera/Util$PreviewFitTransform;->rotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    .line 35
    invoke-virtual {p1, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 36
    iget-object p0, v0, Lcom/motorola/camera/Util$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {p1, v0, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final declared-synchronized setVisibility(ZZ)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setButtonPositions(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimestampEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 13
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 16
    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    .line 3
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->checkState()V

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 6
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "KEY_CODE"

    .line 8
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->processKeyEvent(I)V

    goto/16 :goto_2

    .line 9
    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 11
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/constraintlayout/core/Cache;

    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/Cache;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    .line 14
    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 16
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mUri:Landroid/net/Uri;

    .line 17
    iget p1, v0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    sget-object v0, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "video/mp4"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "video/3gpp"

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mMimeType:Ljava/lang/String;

    .line 18
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    .line 19
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    .line 20
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->checkState()V

    goto/16 :goto_2

    .line 22
    :cond_2
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 24
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "REVIEW_PLAY"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 27
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mUri:Landroid/net/Uri;

    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "com.motorola.camera3.FileProvider"

    .line 33
    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->VIDEO_PLAYER:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    invoke-direct {v0, p1, v1, v2, v4}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 38
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p1, :cond_b

    .line 39
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    goto/16 :goto_2

    .line 40
    :cond_4
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 41
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    .line 42
    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 44
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 45
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "REVIEW_ACCEPT"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->dismissReview(Z)V

    goto :goto_2

    .line 47
    :cond_6
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 49
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 50
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "REVIEW_ACCEPT"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->dismissReview(Z)V

    goto :goto_2

    .line 52
    :cond_7
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 53
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 54
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 55
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    .line 56
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->addPostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V

    .line 57
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 58
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 59
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 60
    invoke-virtual {p0, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    .line 61
    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 62
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_b
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTextures()V
    .locals 1

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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V
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
