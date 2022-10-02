.class public Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "CaptureResultChartLineTexture.java"


# instance fields
.field public mColor:[F

.field public mLineWidth:F

.field public mVertexOffset:I

.field public mVertices:[F

.field public mVerticesValid:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IF)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mColor:[F

    const/16 p1, 0x25b

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertices:[F

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mColor:[F

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, v0, p1

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mColor:[F

    const/4 v0, 0x2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, p1, v0

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mColor:[F

    const/4 v0, 0x3

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    aput p2, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    monitor-exit p0

    .line 11
    monitor-enter p0

    .line 12
    :try_start_1
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mLineWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    .line 14
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized loadTexture()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc9

    if-ge v0, v1, :cond_0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertices:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aput v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVerticesValid:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    .line 4
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 5
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    .line 6
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertices:[F

    invoke-virtual/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZI[F)V

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 10
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 11
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mColor:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 12
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mLineWidth:F

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->lineWidth(F)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    neg-int p2, p2

    int-to-float p2, p2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p2, v4

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr p2, v5

    const/4 v5, 0x0

    invoke-static {p1, v3, p2, v5, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 14
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVerticesValid:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I

    if-le p1, v2, :cond_1

    .line 15
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 16
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I

    rsub-int p2, p1, 0xc9

    invoke-static {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {p1, v3, v4, v5, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 18
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 19
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVerticesValid:Z

    if-eqz p1, :cond_2

    .line 20
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I

    invoke-static {v1, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    goto :goto_0

    .line 21
    :cond_2
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I

    sub-int/2addr p1, v2

    invoke-static {v1, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_0
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
