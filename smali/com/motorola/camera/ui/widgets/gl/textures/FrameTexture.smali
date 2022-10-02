.class public Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "FrameTexture.java"


# instance fields
.field public mColors:[F

.field public mDropShadow:Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;

.field public mDropShadowScale:F

.field public mHasDropShadow:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IZ)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 8
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    .line 10
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([I)V

    .line 11
    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->init(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;Z)V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p2, v1, v4

    const/4 v5, 0x3

    aput-object p2, v1, v5

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    mul-int/lit8 v6, p1, 0x4

    aget-object v7, v1, p1

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v7, v7, v2

    aput v7, p2, v6

    add-int/lit8 v7, v6, 0x1

    .line 4
    aget-object v8, v1, p1

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v8, v8, v3

    aput v8, p2, v7

    add-int/lit8 v7, v6, 0x2

    .line 5
    aget-object v8, v1, p1

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v8, v8, v4

    aput v8, p2, v7

    add-int/2addr v6, v5

    .line 6
    aget-object v7, v1, p1

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v7, v7, v5

    aput v7, p2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->init(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IZ)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 13
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    .line 14
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([I)V

    .line 15
    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->init(Z)V

    return-void
.end method


# virtual methods
.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final init(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mHasDropShadow:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mDropShadow:Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;

    const/high16 p1, 0x437a0000    # 250.0f

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;->calculateScale(F)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mDropShadowScale:F

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public loadTexture()V
    .locals 0

    return-void
.end method

.method public onDraw([F[F)V
    .locals 11

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

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    .line 5
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 6
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v4

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 8
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v10

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 9
    invoke-virtual/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    .line 10
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 11
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mHasDropShadow:Z

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mDropShadow:Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mDropShadowScale:F

    invoke-virtual {p1, v0, p2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;->drawDropShadow(Lcom/motorola/camera/ui/widgets/gl/Shader;[FFF)V

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
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 16
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x10

    .line 17
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    invoke-virtual/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZI[F)V

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p1, 0x5

    .line 19
    invoke-static {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    const p1, 0x8892

    .line 20
    invoke-static {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(II)V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

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
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    mul-int/lit8 v2, v0, 0x4

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v1, v2

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x1

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x2

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

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

.method public unloadTexture()V
    .locals 0

    return-void
.end method
