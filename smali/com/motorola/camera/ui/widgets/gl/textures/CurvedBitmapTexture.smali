.class public Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "CurvedBitmapTexture.java"


# instance fields
.field public mProjectMatrix:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;->mProjectMatrix:[F

    const/4 p0, 0x0

    .line 3
    invoke-static {p1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public draw([F[F)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;->mProjectMatrix:[F

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v1, 0x5

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    .line 3
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x0

    .line 5
    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    .line 6
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 7
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/16 v7, 0xc

    .line 8
    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    .line 9
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
