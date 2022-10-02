.class public Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;
.super Ljava/lang/Object;
.source "DropShadow.java"


# instance fields
.field public mDropShadowBuffers:[[F


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    const/4 v2, 0x5

    new-array v3, v2, [[F

    .line 3
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;->mDropShadowBuffers:[[F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, v3

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x7

    const/16 v7, 0xb

    const/16 v8, 0xf

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v9

    aput v4, v1, v8

    aput v4, v1, v7

    aput v4, v1, v6

    aput v4, v1, v5

    .line 4
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;->mDropShadowBuffers:[[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static calculateScale(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p0, v0, p0

    add-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public drawDropShadow(Lcom/motorola/camera/ui/widgets/gl/Shader;[FFF)V
    .locals 10

    .line 1
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p2, v0, p3, p4, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 3
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {p1, v3, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 4
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x10

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DropShadow;->mDropShadowBuffers:[[F

    aget-object v9, v3, v1

    invoke-virtual/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZI[F)V

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 v3, 0x4

    .line 6
    invoke-static {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
