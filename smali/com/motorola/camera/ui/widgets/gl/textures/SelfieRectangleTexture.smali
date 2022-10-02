.class public Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;
.source "SelfieRectangleTexture.java"


# instance fields
.field public mOffsetX:F

.field public mOffsetY:F

.field public mOffsetZ:F

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mProjectMatrix:[F

.field public mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mUpdateProjectMatrix:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mOffsetX:F

    .line 5
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mOffsetY:F

    .line 6
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mOffsetZ:F

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 7
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, p2, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    aput-object v1, v0, p1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, p2, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-void
.end method


# virtual methods
.method public declared-synchronized onDraw([F[F)V
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x1

    aget-object v1, p2, v0

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v2, 0x0

    .line 3
    aget-object v3, p2, v2

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mOffsetX:F

    .line 4
    aget-object v1, p2, v0

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 5
    aget-object v3, p2, v2

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mOffsetY:F

    .line 6
    aget-object v0, p2, v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 7
    aget-object p2, p2, v2

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mOffsetZ:F

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    const/4 v4, 0x0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v1, v0

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mOffsetX:F

    sub-float/2addr v1, v6

    int-to-float v0, v0

    div-float/2addr v0, v5

    sub-float v6, v0, v6

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v0, p2

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mOffsetY:F

    sub-float/2addr v0, v7

    int-to-float p2, p2

    div-float/2addr p2, v5

    sub-float v8, p2, v7

    const p2, 0x419feb85    # 19.99f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mOffsetZ:F

    add-float v9, v5, p2

    const/high16 v10, 0x42c80000    # 100.0f

    move v5, v1

    move v7, v0

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 10
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public set3dTranslationX(FFFFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    mul-float v4, v1, p2

    div-float/2addr v4, v2

    float-to-double v4, v4

    .line 1
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    float-to-double v6, v2

    float-to-double v1, v1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    div-double/2addr v6, v1

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    move/from16 v2, p4

    float-to-double v10, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-double/2addr v8, v12

    double-to-float v2, v8

    const/4 v8, 0x0

    aput v2, v1, v8

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    neg-float v2, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    const/4 v9, 0x1

    aput v2, v1, v9

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    div-double v16, v16, v14

    add-double v16, v16, v12

    sub-double v12, v16, v6

    double-to-float v9, v12

    const/4 v12, 0x2

    aput v9, v1, v12

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    div-double v16, v16, v14

    add-double v12, v16, v12

    double-to-float v9, v12

    const/4 v12, 0x3

    aput v9, v1, v12

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    const/4 v9, 0x4

    aput v2, v1, v9

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    div-double v16, v16, v14

    sub-double v12, v12, v16

    sub-double/2addr v12, v6

    double-to-float v2, v12

    const/4 v9, 0x5

    aput v2, v1, v9

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    div-double v16, v16, v14

    add-double v12, v16, v12

    double-to-float v2, v12

    const/4 v9, 0x6

    aput v2, v1, v9

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    div-float v2, v3, v8

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    div-double/2addr v12, v14

    sub-double/2addr v8, v12

    sub-double/2addr v8, v6

    double-to-float v3, v8

    const/16 v8, 0x8

    aput v3, v1, v8

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    div-double/2addr v12, v14

    sub-double/2addr v8, v12

    double-to-float v3, v8

    const/16 v8, 0x9

    aput v3, v1, v8

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v6

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v10

    div-double/2addr v3, v14

    add-double/2addr v3, v1

    sub-double/2addr v3, v6

    double-to-float v1, v3

    const/16 v2, 0xb

    aput v1, v0, v2

    return-void
.end method

.method public set3dTranslationY(FFFFF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    mul-float v4, v1, p2

    div-float/2addr v4, v2

    float-to-double v4, v4

    .line 1
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    neg-double v4, v4

    float-to-double v6, v2

    float-to-double v1, v1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    div-double/2addr v6, v1

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    neg-float v2, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    const/4 v9, 0x0

    aput v2, v1, v9

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v6

    move/from16 v11, p5

    float-to-double v11, v11

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    sub-double/2addr v9, v13

    double-to-float v9, v9

    const/4 v10, 0x1

    aput v9, v1, v10

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v6

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    div-double/2addr v13, v15

    add-double/2addr v13, v9

    sub-double/2addr v13, v6

    double-to-float v9, v13

    const/4 v10, 0x2

    aput v9, v1, v10

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    const/4 v9, 0x3

    aput v2, v1, v9

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v6

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    div-double/2addr v13, v15

    add-double/2addr v13, v9

    double-to-float v2, v13

    const/4 v9, 0x4

    aput v2, v1, v9

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v6

    .line 12
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    div-double/2addr v13, v15

    sub-double/2addr v9, v13

    sub-double/2addr v9, v6

    double-to-float v2, v9

    const/4 v9, 0x5

    aput v2, v1, v9

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    div-float v2, v3, v8

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    div-double/2addr v13, v15

    add-double/2addr v13, v8

    double-to-float v3, v13

    const/4 v8, 0x7

    aput v3, v1, v8

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    div-double/2addr v13, v15

    sub-double/2addr v8, v13

    sub-double/2addr v8, v6

    double-to-float v3, v8

    const/16 v8, 0x8

    aput v3, v1, v8

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v11

    div-double/2addr v8, v15

    sub-double/2addr v2, v8

    double-to-float v2, v2

    const/16 v3, 0xa

    aput v2, v1, v3

    .line 21
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v6

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v11

    div-double/2addr v3, v15

    add-double/2addr v3, v1

    sub-double/2addr v3, v6

    double-to-float v1, v3

    const/16 v2, 0xb

    aput v1, v0, v2

    return-void
.end method

.method public setPostScreenTranslation(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    return-void
.end method
