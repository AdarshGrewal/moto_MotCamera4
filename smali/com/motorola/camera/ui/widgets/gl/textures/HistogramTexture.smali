.class public Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "HistogramTexture.java"


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mDataList:[I

.field public mDensity:F

.field public mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mHeight:F

.field public mHistogramBitmap:Landroid/graphics/Bitmap;

.field public mMargin:F

.field public mRotateRunnable:Ljava/lang/Runnable;

.field public mWidth:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mRotateRunnable:Ljava/lang/Runnable;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v0, p1, p2

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, p1

    mul-float/2addr v0, p2

    sub-float/2addr v1, v0

    .line 7
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    const/high16 p2, 0x42200000    # 40.0f

    mul-float/2addr p1, p2

    sub-float/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    return-void
.end method


# virtual methods
.method public final drawHistogram([Landroid/graphics/Point;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    .line 2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p1, v2

    .line 3
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 4
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 6
    aget-object v1, p1, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v0, p0

    invoke-virtual {v3, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 9
    invoke-virtual {p2, v3, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getPoints()[Landroid/graphics/Point;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    array-length v0, v0

    new-array v1, v0, [Landroid/graphics/Point;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 2
    :goto_0
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 3
    aget v6, v5, v3

    if-le v6, v4, :cond_0

    aget v4, v5, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_2
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HISTOGRAM_STYLE_RGB:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 5
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$ui$widgets$gl$textures$HistogramTexture$RGB$s$values()[I

    move-result-object v3

    array-length v3, v3

    div-int v3, v0, v3

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 8
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    rem-int v6, v2, v3

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v5, v6

    .line 9
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 10
    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    aget v7, v7, v2

    int-to-float v7, v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    mul-float/2addr v7, v6

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v6, v7

    .line 11
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 12
    new-instance v7, Landroid/graphics/Point;

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-direct {v7, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public final getRGBPoints$enumunboxing$([Landroid/graphics/Point;I)[Landroid/graphics/Point;
    .locals 3

    .line 1
    array-length p0, p1

    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$ui$widgets$gl$textures$HistogramTexture$RGB$s$values()[I

    move-result-object v0

    array-length v0, v0

    div-int/2addr p0, v0

    .line 2
    new-array v0, p0, [Landroid/graphics/Point;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 3
    invoke-static {p2}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v2

    mul-int/2addr v2, p0

    add-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized hide()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
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

.method public declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V
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

.method public onPreDraw([F[F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mRotateRunnable:Ljava/lang/Runnable;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized show()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->updateHistogram()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateHistogram()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureLoaded:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x42700000    # 60.0f

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    mul-float v2, v0, v1

    float-to-int v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    .line 4
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 7
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v5, -0x1000000

    .line 8
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v5, 0x66

    .line 11
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    mul-float/2addr v6, v1

    const/4 v1, 0x0

    invoke-direct {v5, v1, v1, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->HISTOGRAM_STYLE_RGB:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 14
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 15
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v5, -0x10000

    .line 16
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getPoints()[Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {p0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getRGBPoints$enumunboxing$([Landroid/graphics/Point;I)[Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->drawHistogram([Landroid/graphics/Point;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const v4, -0xff0100

    .line 21
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x2

    .line 22
    invoke-virtual {p0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getRGBPoints$enumunboxing$([Landroid/graphics/Point;I)[Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->drawHistogram([Landroid/graphics/Point;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const v4, -0xffff01

    .line 23
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x3

    .line 24
    invoke-virtual {p0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getRGBPoints$enumunboxing$([Landroid/graphics/Point;I)[Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->drawHistogram([Landroid/graphics/Point;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    .line 25
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->getPoints()[Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {p0, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->drawHistogram([Landroid/graphics/Point;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 30
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_4
    :goto_1
    return-void
.end method
