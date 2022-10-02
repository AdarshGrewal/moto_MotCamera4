.class public Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "RoundedRectangleTexture.java"


# instance fields
.field public mAspect:F

.field public mColors:[F

.field public mDropShadow:Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;

.field public mDropShadowScale:F

.field public mHasDropShadow:Z

.field public mRadius:F

.field public mSize:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mAspect:F

    .line 4
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setColors([I)V

    .line 5
    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mHasDropShadow:Z

    if-eqz p3, :cond_0

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mDropShadow:Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;

    const/high16 p1, 0x437a0000    # 250.0f

    .line 7
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;->calculateScale(F)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mDropShadowScale:F

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    invoke-virtual {p0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    return-void
.end method


# virtual methods
.method public final handleSetScale()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mAspect:F

    .line 2
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mRadius:F

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    return-void
.end method

.method public loadTexture()V
    .locals 0

    return-void
.end method

.method public onDraw([F[F)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    .line 2
    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    .line 5
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 6
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 8
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v9

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 9
    invoke-virtual/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 11
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mHasDropShadow:Z

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mDropShadow:Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mDropShadowScale:F

    invoke-virtual {p1, v0, p2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;->drawDropShadow(Lcom/motorola/camera/ui/widgets/gl/Shader;[FFF)V

    .line 13
    :cond_0
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 14
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 15
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mSize:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    const/4 p1, 0x4

    new-array p2, p1, [F

    .line 16
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, p2, v1

    const/4 v2, 0x1

    .line 17
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    aput v4, p2, v2

    const/4 v2, 0x2

    .line 18
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    aput v4, p2, v2

    const/4 v2, 0x3

    .line 19
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    aput v4, p2, v2

    .line 20
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 21
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 22
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 23
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x10

    .line 24
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZI[F)V

    .line 25
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p2, 0x5

    .line 26
    invoke-static {p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    const p1, 0x8892

    .line 27
    invoke-static {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(II)V

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void
.end method

.method public setAbsoluteRadius(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    return-void
.end method

.method public declared-synchronized setColors([I)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    mul-int/lit8 v2, v0, 0x4

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v1, v2

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x1

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x2

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    add-int/lit8 v2, v2, 0x3

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    aput v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPostScale(FFF)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->handleSetScale()V

    return-void
.end method

.method public setRadius(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mRadius:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mAspect:F

    mul-float/2addr v2, p1

    sub-float v2, v0, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    sub-float/2addr v0, p1

    const/4 p1, 0x1

    aput v0, v1, p1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mSize:[F

    return-void
.end method

.method public setScale(FFF)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->handleSetScale()V

    return-void
.end method

.method public unloadTexture()V
    .locals 0

    return-void
.end method
