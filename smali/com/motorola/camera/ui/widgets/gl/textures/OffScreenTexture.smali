.class public Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "OffScreenTexture.java"


# instance fields
.field public mColors:[F

.field public mDarkness:F

.field public mDepthRb:I

.field public mFb:I

.field public mHeight:I

.field public mMask:I

.field public mOpacityFrom:F

.field public mOpacityFrom2:F

.field public mOpacityTo:F

.field public mOpacityTo2:F

.field public mRenderTex:I

.field public mResize:Z

.field public mResolutionFactor:F

.field public mShapeChange:[F

.field public mVbo:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResolutionFactor:F

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 6
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mShapeChange:[F

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    .line 9
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    .line 10
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom2:F

    .line 11
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo2:F

    .line 12
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDarkness:F

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final createDepthBuffer()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    .line 2
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    const-string v2, "glGenRenderbuffers"

    .line 3
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 4
    aget v2, v3, v4

    const v5, 0x8d41

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const-string v2, "glBindRenderbuffer"

    .line 5
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v2, 0x81a5

    .line 6
    invoke-static {v5, v2, v0, v1}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const-string v0, "glRenderbufferStorage"

    .line 7
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 8
    aget v0, v3, v4

    .line 9
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDepthRb:I

    return-void
.end method

.method public final createFrameBuffer()V
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const-string v0, "glGenFramebuffers"

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 4
    aget v0, v1, v2

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    const v1, 0x8d40

    .line 6
    invoke-static {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const v0, 0x8ce0

    const/16 v3, 0xde1

    .line 7
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    .line 8
    invoke-static {v1, v0, v3, v4, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const-string v0, "glFramebufferTexture2D"

    .line 9
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8d00

    const v3, 0x8d41

    .line 10
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDepthRb:I

    .line 11
    invoke-static {v1, v0, v3, p0}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    const-string p0, "glFramebufferRenderbuffer"

    .line 12
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p0

    const-string v0, "glCheckFramebufferStatus"

    .line 14
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8cd5

    if-eq p0, v0, :cond_0

    const-string v0, "Failed to create FBO: "

    const-string v3, "OffScreenTexture"

    .line 15
    invoke-static {v0, p0, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    :cond_0
    invoke-static {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    return-void
.end method

.method public draw([F[F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->onDraw([F[F)V

    :cond_1
    return-void
.end method

.method public getFb()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    .line 2
    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    return p0
.end method

.method public getSize()Landroid/graphics/Point;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public declared-synchronized loadTexture()V
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x84c5

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    const/16 v0, 0xde1

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    .line 4
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->texImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->createDepthBuffer()V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->createFrameBuffer()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v0, 0x303

    const/4 v2, 0x1

    .line 2
    invoke-static {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v3, 0x6

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    const v3, 0x84c5

    .line 5
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    const/16 v3, 0xde1

    .line 6
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    invoke-static {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    .line 7
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 8
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v4

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    .line 9
    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    invoke-virtual/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    .line 10
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 11
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v4

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/16 v9, 0xc

    .line 12
    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    invoke-virtual/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    .line 14
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 15
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 16
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 17
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    const/4 p2, 0x4

    if-ne p1, v2, :cond_0

    .line 18
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 19
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 20
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 21
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 22
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 23
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    goto :goto_0

    :cond_2
    if-ne p1, p2, :cond_3

    .line 24
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x10

    .line 25
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZI[F)V

    .line 26
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    .line 27
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 28
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 29
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom2:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 30
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo2:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 31
    :cond_3
    :goto_0
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MASK:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    .line 32
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    .line 33
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SHAPE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mShapeChange:[F

    invoke-virtual {v0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 34
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DARKNESS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDarkness:F

    invoke-virtual {v0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 35
    invoke-static {v2, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    const p1, 0x8892

    .line 36
    invoke-static {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readPixels()Ljava/nio/Buffer;
    .locals 12

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    const v1, 0x8ca6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string v1, "glGetIntegerv"

    .line 3
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 4
    aget v1, v0, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    const v4, 0x8d40

    if-eq v1, v3, :cond_0

    .line 5
    invoke-static {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    .line 6
    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    mul-int/2addr v1, v3

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    move-object v11, v1

    invoke-static/range {v5 .. v11}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->readPixels(IIIIIILjava/nio/Buffer;)V

    .line 8
    aget v3, v0, v2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    if-eq v3, p0, :cond_1

    .line 9
    aget p0, v0, v2

    invoke-static {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public resizeTexture()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    return-void
.end method

.method public setCircleCrop()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_2

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    cmpl-float v2, v3, v1

    if-lez v2, :cond_0

    .line 4
    iget v2, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    cmpg-float v2, v3, v1

    if-gez v2, :cond_1

    .line 5
    iget v2, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 6
    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    .line 7
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v5

    mul-float/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    move v3, v0

    move v4, v3

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mShapeChange:[F

    const/4 v2, 0x0

    aput v1, p0, v2

    const/4 v1, 0x1

    .line 9
    aput v3, p0, v1

    const/4 v1, 0x2

    .line 10
    aput v4, p0, v1

    const/4 v1, 0x3

    .line 11
    aput v0, p0, v1

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    return-void
.end method

.method public declared-synchronized setSize(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    .line 4
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSize(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    return-void
.end method

.method public setViewPort()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResolutionFactor:F

    mul-float/2addr v1, p0

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    const/4 v0, 0x0

    invoke-static {v0, v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->viewport(IIII)V

    return-void
.end method

.method public setViewScale()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "OffScreenTexture"

    const-string v1, "("

    .line 1
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mResize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unloadTexture()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    new-array v3, v1, [I

    aput v0, v3, v2

    .line 3
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    const-string v0, "glDeleteFramebuffers"

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 5
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    .line 6
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    .line 8
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    .line 9
    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->deleteVbo(I)V

    .line 11
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    .line 12
    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDepthRb:I

    if-eqz v0, :cond_3

    .line 13
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    new-array v3, v1, [I

    aput v0, v3, v2

    .line 14
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    const-string v0, "glDeleteRenderbuffers"

    .line 15
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 16
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDepthRb:I

    :cond_3
    return-void
.end method
