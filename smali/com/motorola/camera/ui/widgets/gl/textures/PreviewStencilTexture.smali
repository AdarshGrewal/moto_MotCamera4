.class public Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "PreviewStencilTexture.java"


# instance fields
.field public mRadius:F

.field public mStencilSize:Landroid/util/SizeF;

.field public mUpdateVbo:Z

.field public mVboId:I

.field public mVertices:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    return-void
.end method


# virtual methods
.method public loadTexture()V
    .locals 0

    return-void
.end method

.method public onDraw([F[F)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->deleteVbo(I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getCustomVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    .line 5
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/16 v2, 0x11

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    .line 8
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x8

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    .line 9
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    .line 10
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p0, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 12
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 13
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    const/4 v4, 0x6

    const/16 v5, 0x14

    .line 14
    invoke-static {v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    const/high16 v6, -0x40800000    # -1.0f

    .line 15
    invoke-virtual {p0, v6, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 16
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v7, v8, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 17
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 18
    invoke-static {v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    .line 19
    invoke-virtual {p0, v6, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 20
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v7, v8, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 21
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 22
    invoke-static {v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    .line 23
    invoke-virtual {p0, v2, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 24
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v6, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 26
    invoke-static {v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    const p0, 0x8892

    .line 27
    invoke-static {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(II)V

    return-void
.end method

.method public declared-synchronized setSize(FF)V
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, p1, p2}, Landroid/util/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mStencilSize:Landroid/util/SizeF;

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    neg-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v3, p2, v2

    div-float/2addr p1, v2

    neg-float p2, p2

    div-float/2addr p2, v2

    invoke-direct {v0, v1, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3
    new-instance p1, Lcom/google/android/play/core/appupdate/zzy;

    invoke-direct {p1, v0}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/google/android/play/core/appupdate/zzy;

    const/16 p1, 0x28

    new-array p1, p1, [F

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, p1, v3

    aput v1, p1, p2

    const/4 p2, 0x2

    aput v1, p1, p2

    const/4 p2, 0x3

    .line 5
    iget v4, v0, Landroid/graphics/RectF;->top:F

    aput v4, p1, p2

    const/4 p2, 0x4

    .line 6
    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    sub-float v7, v5, v6

    aput v7, p1, p2

    const/4 p2, 0x5

    aput v4, p1, p2

    const/16 p2, 0x24

    aput v5, p1, p2

    const/16 p2, 0x25

    sub-float/2addr v4, v6

    aput v4, p1, p2

    const/16 p2, 0x26

    aput v5, p1, p2

    const/16 p2, 0x27

    aput v1, p1, p2

    const p1, 0x3dd65b7b

    const/4 p2, 0x6

    :goto_0
    const/16 v1, 0x23

    if-gt p2, v1, :cond_0

    add-int/lit8 v1, p2, -0x6

    int-to-float v1, v1

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    .line 7
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v1, v8

    mul-float/2addr v5, v1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    sub-float/2addr v1, v8

    add-float/2addr v1, v5

    aput v1, v4, p2

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    add-int/lit8 v4, p2, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v8, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    sub-float/2addr v5, v6

    add-float/2addr v5, v8

    aput v5, v1, v4

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    .line 10
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unloadTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->deleteVbo(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    return-void
.end method
