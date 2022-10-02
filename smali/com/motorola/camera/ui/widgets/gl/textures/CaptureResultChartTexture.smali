.class public Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "CaptureResultChartTexture.java"


# instance fields
.field public mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

.field public mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

.field public mLoaded:Z

.field public mMaximum:F

.field public mMinimum:F

.field public mRangeChange:Z

.field public mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 14

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mLoaded:Z

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMaximum:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 4
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMinimum:F

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeChange:Z

    .line 6
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v4, ""

    const/high16 v5, 0x41200000    # 10.0f

    const v6, -0xff0100

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v10, ""

    const/high16 v11, 0x41200000    # 10.0f

    const v12, -0xff0100

    const/4 v13, 0x0

    move-object v8, v0

    move-object v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 8
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v3, ""

    const/high16 v4, 0x41200000    # 10.0f

    const v5, -0xff0100

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 9
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v9, ""

    const/high16 v10, 0x41200000    # 10.0f

    const v11, -0xff0100

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 10
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    const v1, -0xffff01

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    .line 11
    monitor-enter v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 12
    :try_start_0
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mLineWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    .line 14
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    const/high16 v2, -0x10000

    invoke-direct {v0, p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    return-void

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public declared-synchronized getRect()Lcom/google/android/play/core/appupdate/zzy;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 3
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v2

    .line 4
    new-instance v2, Lcom/google/android/play/core/appupdate/zzy;

    neg-float v3, v1

    neg-float v4, v0

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/google/android/play/core/appupdate/zzy;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    .line 6
    monitor-enter v0

    .line 7
    monitor-exit v0

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->loadTexture()V

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mLoaded:Z

    return-void
.end method

.method public onDraw([F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public onValue(F)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMinimum:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMinimum:F

    .line 3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeChange:Z

    .line 4
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMaximum:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 5
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMaximum:F

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeChange:Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeChange:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v2, "min:"

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMinimum:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v2, "max:"

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMaximum:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMinimum:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMaximum:F

    .line 11
    monitor-enter v0

    sub-float v4, v3, v2

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v5, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez v5, :cond_2

    add-float/2addr v4, v6

    :cond_2
    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v3, v4

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    .line 12
    :try_start_0
    invoke-virtual {v0, v6, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    const/high16 v4, -0x40000000    # -2.0f

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v2, v6

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v3, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->positionRange()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeChange:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    throw p0

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cur:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->positionCurrent()V

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    .line 21
    monitor-enter p0

    .line 22
    :try_start_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I

    const/16 v2, 0xc9

    if-lt v0, v2, :cond_4

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertices:[F

    const/16 v2, 0x259

    aget v2, v0, v2

    aput v2, v0, v1

    .line 24
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I

    .line 25
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVerticesValid:Z

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertices:[F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I

    mul-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v1

    aput p1, v0, v3

    add-int/2addr v2, v1

    .line 27
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;->mVertexOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final positionCurrent()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getTextSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 5
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/16 v5, 0x5a

    if-eq v2, v5, :cond_2

    const/16 v5, 0xb4

    if-eq v2, v5, :cond_1

    const/16 v5, 0x10e

    if-eq v2, v5, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0, v4, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0, v0, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-virtual {p0, v4, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-virtual {p0, v0, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_0
    return-void
.end method

.method public final positionRange()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getTextSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 6
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getTextSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    .line 8
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_3

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_2

    const/16 v6, 0xb4

    if-eq v3, v6, :cond_1

    const/16 v6, 0x10e

    if-eq v3, v6, :cond_0

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    div-float/2addr v6, v5

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v7, v1

    neg-float v1, v7

    div-float/2addr v1, v5

    invoke-virtual {v3, v6, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    neg-float v0, v0

    div-float/2addr v0, v5

    invoke-virtual {p0, v1, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_0

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    div-float/2addr v6, v5

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr v7, v1

    div-float/2addr v7, v5

    invoke-virtual {v3, v6, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    neg-float v1, v1

    div-float/2addr v1, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    neg-float v0, v0

    div-float/2addr v0, v5

    invoke-virtual {p0, v1, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v7, v1

    div-float/2addr v7, v5

    invoke-virtual {v3, v6, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    neg-float v1, v1

    div-float/2addr v1, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    invoke-virtual {p0, v1, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr v7, v1

    neg-float v1, v7

    div-float/2addr v1, v5

    invoke-virtual {v3, v6, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    invoke-virtual {p0, v1, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_0
    return-void
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1

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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 11
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setDisplayOrientation(I)V
    .locals 9

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    int-to-float p1, p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v3, 0x2

    .line 4
    invoke-virtual {p1, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 6
    invoke-virtual {p1, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 8
    invoke-virtual {p1, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 10
    invoke-virtual {p1, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 12
    iget-object v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getTextSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    .line 14
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_3

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_2

    const/16 v5, 0xb4

    if-eq v3, v5, :cond_1

    const/16 v5, 0x10e

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr v5, p1

    div-float/2addr v5, v4

    invoke-virtual {v3, v5, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr v5, p1

    neg-float p1, v5

    div-float/2addr p1, v4

    invoke-virtual {v3, v1, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr v5, p1

    neg-float p1, v5

    div-float/2addr p1, v4

    invoke-virtual {v3, p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr v5, p1

    div-float/2addr v5, v4

    invoke-virtual {v3, v1, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->positionRange()V

    .line 20
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->positionCurrent()V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v1

    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mRect:Lcom/google/android/play/core/appupdate/zzy;

    .line 24
    iget-object v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    const/4 v5, 0x0

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/zzy;->zza:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    const/4 v7, 0x3

    aput v6, v3, v7

    aput v6, v3, v5

    const/4 v5, 0x1

    const/16 v6, 0xa

    .line 25
    move-object v8, v1

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    aput v8, v3, v6

    aput v8, v3, v5

    const/4 v5, 0x4

    const/4 v6, 0x7

    .line 26
    move-object v8, v1

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    aput v8, v3, v6

    aput v8, v3, v5

    const/4 v5, 0x6

    const/16 v6, 0x9

    .line 27
    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    aput v1, v3, v6

    aput v1, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p1

    .line 29
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    .line 30
    invoke-virtual {p1, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 31
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    div-float/2addr p0, v4

    invoke-virtual {p1, v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    return-void

    :catchall_0
    move-exception p0

    .line 32
    monitor-exit p1

    throw p0
.end method

.method public setMaximum(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMaximum:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMaximum:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeChange:Z

    :cond_0
    return-void
.end method

.method public setMinimum(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMinimum:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mMinimum:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeChange:Z

    :cond_0
    return-void
.end method

.method public unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMinimumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mRangeMaximumTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mCurrentValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mChartLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartLineTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CaptureResultChartTexture;->mLoaded:Z

    return-void
.end method
