.class public Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;
.source "SelfieLivePreviewTexture.java"


# instance fields
.field public mOffsetX:F

.field public mOffsetY:F

.field public mOffsetZ:F

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mProjectMatrix:[F

.field public mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mUpdateProjectMatrix:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v2, 0x0

    aput-object v0, p2, v2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v3, 0x1

    aput-object v0, p2, v3

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 4
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mOffsetX:F

    .line 5
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mOffsetY:F

    .line 6
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mOffsetZ:F

    .line 7
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    .line 8
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 9
    invoke-static {p1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDraw([F[F)V
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x1

    aget-object v1, p2, v0

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v2, 0x0

    .line 3
    aget-object v3, p2, v2

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mOffsetX:F

    .line 4
    aget-object v1, p2, v0

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 5
    aget-object v3, p2, v2

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mOffsetY:F

    .line 6
    aget-object v0, p2, v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 7
    aget-object p2, p2, v2

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mOffsetZ:F

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    const/4 v4, 0x0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v1, v0

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mOffsetX:F

    sub-float/2addr v1, v6

    int-to-float v0, v0

    div-float/2addr v0, v5

    sub-float v6, v0, v6

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v0, p2

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mOffsetY:F

    sub-float/2addr v0, v7

    int-to-float p2, p2

    div-float/2addr p2, v5

    sub-float v8, p2, v7

    const p2, 0x419feb85    # 19.99f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mOffsetZ:F

    add-float v9, v5, p2

    const/high16 v10, 0x42c80000    # 100.0f

    move v5, v1

    move v7, v0

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 10
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 12
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PREVIEW_ST:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 13
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {p2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    .line 14
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    .line 15
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public set3dTranslationX(FFFFF)D
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    const/16 v4, 0x14

    new-array v4, v4, [F

    mul-float v5, v1, p2

    div-float/2addr v5, v2

    float-to-double v5, v5

    .line 1
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    float-to-double v7, v2

    float-to-double v1, v1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    move/from16 v11, p4

    float-to-double v11, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    sub-double/2addr v9, v13

    double-to-float v9, v9

    const/4 v10, 0x0

    aput v9, v4, v10

    neg-float v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/4 v13, 0x1

    aput v9, v4, v13

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v11

    div-double v19, v19, v15

    add-double v19, v19, v17

    sub-double v13, v19, v7

    double-to-float v13, v13

    const/4 v14, 0x2

    aput v13, v4, v14

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v14, v4, v13

    const/4 v13, 0x4

    aput v14, v4, v13

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v11

    div-double v19, v19, v15

    add-double v14, v19, v17

    double-to-float v13, v14

    const/4 v14, 0x5

    aput v13, v4, v14

    const/4 v13, 0x6

    aput v9, v4, v13

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v11

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    sub-double/2addr v13, v15

    sub-double/2addr v13, v7

    double-to-float v9, v13

    const/4 v13, 0x7

    aput v9, v4, v13

    const/16 v9, 0x8

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v4, v9

    const/16 v9, 0x9

    const/4 v14, 0x0

    aput v14, v4, v9

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v11

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    sub-double v14, v14, v16

    double-to-float v9, v14

    const/16 v14, 0xa

    aput v9, v4, v14

    div-float/2addr v3, v10

    const/16 v9, 0xb

    aput v3, v4, v9

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v14, v9

    sub-double/2addr v14, v7

    double-to-float v9, v14

    const/16 v10, 0xc

    aput v9, v4, v10

    const/16 v9, 0xd

    const/4 v10, 0x0

    aput v10, v4, v9

    const/16 v9, 0xe

    aput v13, v4, v9

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v14, v9

    double-to-float v9, v14

    const/16 v10, 0xf

    aput v9, v4, v10

    const/16 v9, 0x10

    aput v3, v4, v9

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v11

    div-double v5, v5, v16

    sub-double/2addr v9, v5

    sub-double/2addr v9, v7

    double-to-float v3, v9

    const/16 v5, 0x11

    aput v3, v4, v5

    const/16 v3, 0x12

    aput v13, v4, v3

    const/16 v3, 0x13

    aput v13, v4, v3

    .line 11
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    const/4 v3, 0x1

    .line 12
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v15, v7, v3

    div-double v3, v11, v15

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 15
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v7

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v11

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v2, v0

    sub-double/2addr v2, v7

    double-to-float v0, v2

    float-to-double v0, v0

    return-wide v0
.end method

.method public set3dTranslationY(IFFFF)D
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    const/16 v4, 0x14

    new-array v4, v4, [F

    int-to-float v5, v1

    mul-float v5, v5, p2

    div-float/2addr v5, v2

    float-to-double v5, v5

    .line 1
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    neg-double v5, v5

    float-to-double v7, v2

    int-to-double v1, v1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    neg-float v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/4 v11, 0x0

    aput v9, v4, v11

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    move/from16 v13, p5

    float-to-double v13, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    sub-double/2addr v11, v15

    double-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v4, v12

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v13

    div-double v19, v19, v17

    add-double v19, v19, v15

    sub-double v10, v19, v7

    double-to-float v10, v10

    const/4 v11, 0x2

    aput v10, v4, v11

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v4, v10

    const/4 v10, 0x4

    aput v11, v4, v10

    const/4 v10, 0x5

    aput v9, v4, v10

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    div-double v15, v15, v17

    add-double/2addr v9, v15

    double-to-float v9, v9

    const/4 v10, 0x6

    aput v9, v4, v10

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    div-double v15, v15, v17

    sub-double/2addr v9, v15

    sub-double/2addr v9, v7

    double-to-float v9, v9

    const/4 v10, 0x7

    aput v9, v4, v10

    const/16 v9, 0x8

    aput v11, v4, v9

    const/16 v9, 0x9

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    const/16 v9, 0xa

    aput v3, v4, v9

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v13

    div-double v19, v19, v17

    sub-double v11, v15, v19

    double-to-float v9, v11

    const/16 v11, 0xb

    aput v9, v4, v11

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    div-double v15, v15, v17

    add-double/2addr v15, v11

    sub-double v11, v15, v7

    double-to-float v9, v11

    const/16 v11, 0xc

    aput v9, v4, v11

    const/16 v9, 0xd

    aput v10, v4, v9

    const/16 v9, 0xe

    const/4 v11, 0x0

    aput v11, v4, v9

    const/16 v9, 0xf

    aput v3, v4, v9

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    div-double v15, v15, v17

    add-double/2addr v11, v15

    double-to-float v3, v11

    const/16 v9, 0x10

    aput v3, v4, v9

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    .line 14
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v13

    div-double v5, v5, v17

    sub-double/2addr v11, v5

    sub-double/2addr v11, v7

    double-to-float v3, v11

    const/16 v5, 0x11

    aput v3, v4, v5

    const/16 v3, 0x12

    aput v10, v4, v3

    const/16 v3, 0x13

    aput v10, v4, v3

    .line 15
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    const/4 v3, 0x1

    .line 16
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    mul-double v3, v7, v17

    div-double v3, v13, v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 19
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v7

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v13

    div-double v2, v2, v17

    add-double/2addr v2, v0

    sub-double/2addr v2, v7

    double-to-float v0, v2

    float-to-double v0, v0

    return-wide v0
.end method

.method public setPostScreenTranslation(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    return-void
.end method
