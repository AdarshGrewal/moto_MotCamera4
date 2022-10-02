.class public Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "CurvedProgressTexture.java"


# instance fields
.field public mAngles:[F

.field public mBackgroundColor:[F

.field public mForegroundColor:[F

.field public mProgress:F

.field public mRadii:[F

.field public mVertexVbo:I

.field public mVertices:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;II)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x18

    new-array p1, p1, [F

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mVertices:[F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mVertexVbo:I

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mForegroundColor:[F

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mBackgroundColor:[F

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 6
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mRadii:[F

    new-array v2, v0, [F

    .line 7
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mAngles:[F

    .line 8
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v1, p1

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mForegroundColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mForegroundColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mForegroundColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    const/4 v2, 0x3

    aput p2, v1, v2

    .line 12
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mBackgroundColor:[F

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, p2, p1

    .line 13
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mBackgroundColor:[F

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, p2, v4

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mBackgroundColor:[F

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, p2, v0

    .line 15
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mBackgroundColor:[F

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v3

    aput p3, p2, v2

    .line 16
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mRadii:[F

    const/high16 p3, 0x3e800000    # 0.25f

    aput p3, p2, p1

    const/high16 p3, 0x3f000000    # 0.5f

    .line 17
    aput p3, p2, v4

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mAngles:[F

    const/4 p2, 0x0

    aput p2, p0, p1

    const/high16 p1, 0x43340000    # 180.0f

    .line 19
    aput p1, p0, v4

    return-void

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
    .end array-data
.end method


# virtual methods
.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getScaledHeight()F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    aget-object v3, v3, v1

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    mul-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getScaledWidth()F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    aget-object v3, v3, v1

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    mul-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mVertices:[F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getCustomVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mVertexVbo:I
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

.method public declared-synchronized onDraw([F[F)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0x302

    const/16 v2, 0x303

    .line 1
    :try_start_0
    invoke-static {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/16 v2, 0xb

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    .line 4
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 5
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 6
    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mVertexVbo:I

    invoke-virtual/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 9
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 10
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 11
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR_FG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mForegroundColor:[F

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 12
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR_BG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mBackgroundColor:[F

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 13
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADII:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mRadii:[F

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 14
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ANGLES:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mAngles:[F

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 15
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mProgress:F

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 16
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p1, 0x5

    const/16 p2, 0x8

    .line 17
    invoke-static {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    const p1, 0x8892

    .line 18
    invoke-static {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(F)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mProgress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgressAttr([F[F)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mAngles:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mRadii:[F

    invoke-static {p2, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
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

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mVertexVbo:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->deleteVbo(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedProgressTexture;->mVertexVbo:I

    return-void
.end method
