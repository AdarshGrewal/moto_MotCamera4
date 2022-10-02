.class public Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "IndeterminateSpinnerTexture.java"


# instance fields
.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mLayoutSize:Landroid/graphics/PointF;

.field public mProgressAngles:[F

.field public mProgressRadii:[F

.field public mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;[F[F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mProgressAngles:[F

    .line 5
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mProgressRadii:[F

    return-void
.end method


# virtual methods
.method public declared-synchronized getLayoutSize()Landroid/graphics/PointF;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mLayoutSize:Landroid/graphics/PointF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadTexture()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f060316

    .line 3
    invoke-virtual {v2, v3}, Landroid/app/Application;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;II)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mProgressAngles:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mProgressRadii:[F

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->setProgressAttr([F[F)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->loadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    .line 4
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->onDraw([F[F)V
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

.method public onPreDraw([F[F)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVisible(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->setProgress(F)V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;)V

    const-wide/16 v4, 0x514

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations()V

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->unloadTexture()V
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
