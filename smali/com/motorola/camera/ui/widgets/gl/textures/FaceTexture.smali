.class public Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;
.source "FaceTexture.java"


# instance fields
.field public mDensity:F

.field public mFaceMatrix:[F

.field public mMirror:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

.field public mVertices:[F

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    .line 2
    new-instance p3, Lcom/google/android/play/core/appupdate/zzy;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {p3, v0}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Landroid/graphics/RectF;)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

    const/16 p3, 0x10

    new-array p3, p3, [F

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mFaceMatrix:[F

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    const/16 p1, 0xc

    new-array p1, p1, [F

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mDensity:F

    return-void
.end method


# virtual methods
.method public declared-synchronized getRect()Lcom/google/android/play/core/appupdate/zzy;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    :try_start_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mDensity:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unloadTexture()V
    .locals 0

    return-void
.end method

.method public final updateTouchRect()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getHudProjectionMatrix()[F

    move-result-object v1

    .line 5
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 6
    iget-object v14, v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    const/16 v3, 0x10

    new-array v15, v3, [F

    .line 7
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v16, v4, v5

    .line 8
    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float v17, v3, v5

    const/4 v3, 0x3

    new-array v13, v3, [F

    const/4 v12, 0x0

    .line 9
    invoke-static {v15, v12}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 10
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mFaceMatrix:[F

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v15, v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 11
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mMirror:Z

    const/16 v18, 0x6

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v2, v2, v18

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v2, v2, v12

    :goto_0
    move v3, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    const/4 v4, 0x4

    aget v4, v2, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    move-object v6, v15

    move-object v8, v1

    move-object v10, v14

    move/from16 v19, v12

    move-object v12, v13

    move-object/from16 v20, v13

    move v13, v2

    invoke-static/range {v3 .. v13}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 12
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/zzy;->zza:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    aget v3, v20, v19

    sub-float v3, v3, v16

    iput v3, v2, Landroid/graphics/RectF;->left:F

    const/16 v21, 0x1

    .line 13
    aget v3, v20, v21

    sub-float v3, v3, v17

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 14
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mMirror:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v2, v2, v19

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v2, v2, v18

    :goto_1
    move v3, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v4, v2, v21

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object v8, v1

    move-object v10, v14

    move-object/from16 v12, v20

    invoke-static/range {v3 .. v13}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/zzy;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    aget v2, v20, v19

    sub-float v2, v2, v16

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 16
    aget v3, v20, v21

    sub-float v3, v3, v17

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 17
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v4, :cond_4

    .line 19
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v4, v2

    if-lez v5, :cond_3

    .line 20
    iget v5, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v5, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    :cond_3
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_4

    .line 22
    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->centerX()F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/zzy;->centerY()F

    move-result v2

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/high16 v3, 0x42480000    # 50.0f

    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 24
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 25
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/google/android/play/core/appupdate/zzy;

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3e23d70a    # 0.16f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    .line 26
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mDensity:F

    mul-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 27
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    return-void
.end method
