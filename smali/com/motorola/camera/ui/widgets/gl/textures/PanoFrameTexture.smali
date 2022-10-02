.class public Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "PanoFrameTexture.java"


# instance fields
.field public mBatch:Landroidx/fragment/app/FragmentStore;

.field public mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public mFrameHeight:F

.field public mFrameWidth:F

.field public mLineWidth:F

.field public mRect:Landroid/graphics/RectF;

.field public mType:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Landroidx/fragment/app/FragmentStore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroidx/fragment/app/FragmentStore;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Landroidx/fragment/app/FragmentStore;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    .line 4
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    .line 6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final buildFrame()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->clearDrawList()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->createFrame$enumunboxing$(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->createFrame$enumunboxing$(I)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized createFrame$enumunboxing$(I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    .line 2
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    cmpl-float v2, v4, v3

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStore;->clearDrawList()V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 6
    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameWidth:F

    div-float/2addr v6, v5

    .line 7
    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result v7

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    .line 8
    sget v9, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    const/high16 v10, 0x437a0000    # 250.0f

    .line 9
    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 10
    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    mul-float/2addr v11, v10

    sub-float/2addr v9, v11

    goto :goto_0

    .line 11
    :cond_1
    sget v9, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    :goto_0
    add-float/2addr v7, v9

    .line 12
    sget-object v9, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    const/high16 v10, 0x42340000    # 45.0f

    .line 13
    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 14
    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    mul-float/2addr v11, v10

    sub-float/2addr v9, v11

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x5

    if-ne v0, v8, :cond_6

    .line 15
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 16
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 17
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 18
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 19
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float v15, v7, v4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 20
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 21
    :try_start_1
    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v9, v5, v12

    .line 22
    aput v15, v5, v8

    .line 23
    aput v3, v5, v11

    .line 24
    aput v0, v5, v10

    .line 25
    aput v15, v5, v13

    .line 26
    aput v3, v5, v14

    .line 27
    iget-object v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 28
    :cond_2
    :try_start_2
    monitor-exit v6

    .line 29
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 31
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 32
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 33
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 34
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 35
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 36
    :try_start_3
    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v6, v4, v12

    .line 37
    aput v7, v4, v8

    .line 38
    aput v3, v4, v11

    .line 39
    aput v0, v4, v10

    .line 40
    aput v7, v4, v13

    .line 41
    aput v3, v4, v14

    .line 42
    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 43
    :cond_3
    :try_start_4
    monitor-exit v5

    .line 44
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 46
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 47
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 48
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 49
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    .line 50
    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 51
    :try_start_5
    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v5, v0, v12

    .line 52
    aput v15, v0, v8

    .line 53
    aput v3, v0, v11

    .line 54
    aput v5, v0, v10

    .line 55
    aput v7, v0, v13

    .line 56
    aput v3, v0, v14

    .line 57
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 58
    :cond_4
    :try_start_6
    monitor-exit v4

    .line 59
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 61
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 62
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 63
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 64
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v0, v5

    .line 65
    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 66
    :try_start_7
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v0, v5, v12

    .line 67
    aput v15, v5, v8

    .line 68
    aput v3, v5, v11

    .line 69
    aput v0, v5, v10

    .line 70
    aput v7, v5, v13

    .line 71
    aput v3, v5, v14

    .line 72
    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 73
    :cond_5
    :try_start_8
    monitor-exit v4

    .line 74
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    .line 75
    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v0

    .line 76
    monitor-exit v4

    throw v0

    :catchall_2
    move-exception v0

    .line 77
    monitor-exit v5

    throw v0

    :catchall_3
    move-exception v0

    .line 78
    monitor-exit v6

    throw v0

    .line 79
    :cond_6
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float v5, v7, v6

    add-float/2addr v7, v6

    .line 80
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 81
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 82
    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v6, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 83
    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 84
    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v0

    sub-float/2addr v14, v4

    .line 85
    monitor-enter v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 86
    :try_start_9
    iget-object v15, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v14, v15, v12

    .line 87
    aput v5, v15, v8

    .line 88
    aput v3, v15, v11

    .line 89
    aput v14, v15, v10

    .line 90
    aput v7, v15, v13

    const/4 v14, 0x5

    .line 91
    aput v3, v15, v14

    .line 92
    iget-object v14, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v14, :cond_7

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 93
    :cond_7
    :try_start_a
    monitor-exit v6

    .line 94
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 96
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 97
    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v6, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 98
    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 99
    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v0

    add-float/2addr v14, v4

    .line 100
    monitor-enter v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 101
    :try_start_b
    iget-object v15, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v14, v15, v12

    .line 102
    aput v5, v15, v8

    .line 103
    aput v3, v15, v11

    .line 104
    aput v14, v15, v10

    .line 105
    aput v7, v15, v13

    const/4 v14, 0x5

    .line 106
    aput v3, v15, v14

    .line 107
    iget-object v14, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v14, :cond_8

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 108
    :cond_8
    :try_start_c
    monitor-exit v6

    .line 109
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 111
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 112
    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v6, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 113
    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 114
    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v15, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v15, v0

    sub-float/2addr v15, v4

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v0

    add-float/2addr v14, v4

    .line 115
    monitor-enter v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 116
    :try_start_d
    iget-object v13, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v15, v13, v12

    .line 117
    aput v5, v13, v8

    .line 118
    aput v3, v13, v11

    .line 119
    aput v14, v13, v10

    const/4 v14, 0x4

    .line 120
    aput v5, v13, v14

    const/4 v5, 0x5

    .line 121
    aput v3, v13, v5

    .line 122
    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 123
    :cond_9
    :try_start_e
    monitor-exit v6

    .line 124
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v6, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 126
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 127
    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 128
    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 129
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v13, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v13, v0

    sub-float/2addr v13, v4

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    add-float/2addr v6, v4

    .line 130
    monitor-enter v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 131
    :try_start_f
    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v0, v12

    .line 132
    aput v7, v0, v8

    .line 133
    aput v3, v0, v11

    .line 134
    aput v6, v0, v10

    const/4 v4, 0x4

    .line 135
    aput v7, v0, v4

    const/4 v4, 0x5

    .line 136
    aput v3, v0, v4

    .line 137
    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 138
    :cond_a
    :try_start_10
    monitor-exit v5

    .line 139
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 141
    invoke-virtual {v4, v9, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_1

    .line 142
    :cond_b
    :goto_2
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentStore;->setDrawList(Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 143
    monitor-exit p0

    return-void

    :catchall_4
    move-exception v0

    .line 144
    :try_start_11
    monitor-exit v5

    throw v0

    :catchall_5
    move-exception v0

    .line 145
    monitor-exit v6

    throw v0

    :catchall_6
    move-exception v0

    .line 146
    monitor-exit v6

    throw v0

    :catchall_7
    move-exception v0

    .line 147
    monitor-exit v6

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 148
    :cond_c
    :goto_3
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadTexture()V
    .locals 0

    return-void
.end method

.method public onDraw([F[F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentStore;->batchDraw([F[F)V

    return-void
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    monitor-exit p0

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStore;->getDrawList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 6
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRect(Landroid/graphics/RectF;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public unloadTexture()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->clearDrawList()V

    return-void
.end method
