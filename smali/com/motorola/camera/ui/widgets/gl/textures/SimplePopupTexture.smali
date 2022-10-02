.class public Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SimplePopupTexture.java"


# instance fields
.field public mArrowDirection:I

.field public mArrowPosition:F

.field public final mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

.field public mArrowThickness:F

.field public final mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

.field public mDensity:F

.field public mIsBubbleVisible:Z

.field public mRadius:F

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IFF)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowDirection:I

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    .line 4
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mRadius:F

    .line 5
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowThickness:F

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mIsBubbleVisible:Z

    .line 7
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x0

    .line 8
    invoke-direct {p3, p4, v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZF)V

    .line 9
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 10
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, p3, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IZ)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_0

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getRect()Lcom/google/android/play/core/appupdate/zzy;
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPreRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    .line 4
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_1

    cmpl-float v4, v1, v5

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, v2, Landroid/graphics/PointF;->x:F

    :goto_1
    div-float/2addr v4, v6

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget v1, v2, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_3
    :goto_2
    iget v1, v2, Landroid/graphics/PointF;->y:F

    :goto_3
    div-float/2addr v1, v6

    .line 6
    new-instance v2, Lcom/google/android/play/core/appupdate/zzy;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float v5, v3, v4

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v6, v0, v1

    add-float/2addr v3, v4

    sub-float/2addr v0, v1

    invoke-direct {v2, v5, v6, v3, v0}, Lcom/google/android/play/core/appupdate/zzy;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
