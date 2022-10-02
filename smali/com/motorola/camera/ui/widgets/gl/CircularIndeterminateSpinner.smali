.class public Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "CircularIndeterminateSpinner.java"


# static fields
.field public static final LOADING_PROGRESS_ANGLES:[F

.field public static final LOADING_PROGRESS_RADII:[F


# instance fields
.field public mDensity:F

.field public volatile mShouldAnimate:Z

.field public mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

.field public mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->LOADING_PROGRESS_RADII:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->LOADING_PROGRESS_ANGLES:[F

    return-void

    :array_0
    .array-data 4
        0x3ee2be2c
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mShouldAnimate:Z

    return-void
.end method


# virtual methods
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

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CircularIndeterminateSpinner"

    return-object p0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mDensity:F

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f1100f7

    .line 4
    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v1, -0x1000000

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->LOADING_PROGRESS_ANGLES:[F

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->LOADING_PROGRESS_RADII:[F

    invoke-direct {v0, v3, p0, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;[F[F)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    .line 10
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mDensity:F

    const/high16 v4, 0x428c0000    # 70.0f

    mul-float/2addr v3, v4

    .line 11
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mLayoutSize:Landroid/graphics/PointF;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    monitor-exit v0

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->loadTexture()V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    invoke-virtual {v0, v4, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->setVisible(Z)V

    .line 19
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->onRotate(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    .line 20
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    .line 21
    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 2
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    .line 4
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
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
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    .line 2
    iget-object p3, p2, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p3, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 3
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0
.end method

.method public onRotate(I)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v0, 0xb4

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    :goto_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 5
    iput p1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 6
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    const/high16 p1, 0x41f00000    # 30.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v5, -0x3d6a0000    # -75.0f

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mDensity:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v3

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    invoke-virtual {v1, v4, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v5, 0x42960000    # 75.0f

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mDensity:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v3

    mul-float/2addr v6, p1

    add-float/2addr v6, v5

    mul-float/2addr v6, v0

    invoke-virtual {v1, v6, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 9
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float p0, p0

    invoke-direct {v0, p0, v4, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 p0, 0x2

    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->onRotate(I)V

    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mShouldAnimate:Z

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mShouldAnimate:Z

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    :goto_0
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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CircularIndeterminateSpinner;->mSpinner:Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IndeterminateSpinnerTexture;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
