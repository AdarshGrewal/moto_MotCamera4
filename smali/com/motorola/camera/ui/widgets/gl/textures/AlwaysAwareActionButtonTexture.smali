.class public Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "AlwaysAwareActionButtonTexture.java"


# static fields
.field public static final PRESSED_COLOR:I


# instance fields
.field public mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

.field public mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

.field public mDensity:F

.field public mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mLayoutSize:Landroid/graphics/PointF;

.field public mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f0603aa

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->PRESSED_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZF)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public declared-synchronized getRect()Lcom/google/android/play/core/appupdate/zzy;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 3
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v2

    .line 4
    new-instance v2, Lcom/google/android/play/core/appupdate/zzy;

    neg-float v3, v1

    neg-float v4, v0

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/google/android/play/core/appupdate/zzy;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadTexture()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mDensity:F

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 6
    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mDensity:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v2, v4

    invoke-direct {v0, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 7
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void
.end method

.method public onActionClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
    .locals 0

    return-void
.end method

.method public onDraw([F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->setPressed(ZZ)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->onActionClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    return-void
.end method

.method public onTouchDown(Landroid/graphics/PointF;J)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->setPressed(ZZ)V

    return-void
.end method

.method public onTouchUp(Landroid/graphics/PointF;JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->setPressed(ZZ)V

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3
    :try_start_2
    monitor-exit p0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 5
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6
    :try_start_3
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7
    :try_start_4
    monitor-exit v0

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 9
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 10
    :try_start_5
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 11
    :try_start_6
    monitor-exit v0

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 13
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_7
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    monitor-exit v0

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_0

    :catchall_3
    move-exception p1

    .line 16
    monitor-exit p0

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setLayoutSize(Landroid/graphics/PointF;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setPostScale(FFF)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mDensity:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setAbsoluteRadius(F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public setPressed(ZZ)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->PRESSED_COLOR:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setColors([I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setColors([I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    return-void
.end method
