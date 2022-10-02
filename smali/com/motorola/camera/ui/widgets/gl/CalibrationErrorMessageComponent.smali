.class public Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "CalibrationErrorMessageComponent.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final mDensity:F

.field public mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/zzbg;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mDensity:F

    return-void
.end method


# virtual methods
.method public final getErrorMessageLocation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTsbOffsetBasedOnOrientation()Landroid/graphics/PointF;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    .line 6
    iget v4, v3, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 7
    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v5

    .line 8
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/high16 v7, 0x41c80000    # 25.0f

    if-eqz v5, :cond_4

    const/16 v8, 0x5a

    if-eq v5, v8, :cond_3

    const/16 v7, 0xb4

    if-eq v5, v7, :cond_2

    const/16 p0, 0x10e

    if-eq v5, p0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v6, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    goto :goto_0

    :cond_2
    neg-float v3, v3

    const/high16 v5, 0x42b40000    # 90.0f

    .line 10
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mDensity:F

    mul-float/2addr p0, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v2

    sub-float/2addr p0, v4

    invoke-virtual {v0, v3, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    goto :goto_0

    :cond_3
    neg-float v2, v6

    .line 11
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mDensity:F

    mul-float/2addr p0, v7

    add-float/2addr p0, v2

    invoke-virtual {v0, p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    goto :goto_0

    .line 12
    :cond_4
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mDensity:F

    mul-float/2addr p0, v7

    sub-float/2addr v4, p0

    invoke-virtual {v0, v3, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :goto_0
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CalibrationErrorMessageComponent"

    return-object p0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v2, "This imaging sensor on this unit has calibration issues "

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, -0x10000

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 2
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v1, -0x1000000

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 7
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->getErrorMessageLocation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    const/4 v2, 0x4

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 12
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 13
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_CAL_STATUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 14
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw([F[F[F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 2
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    :cond_0
    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public declared-synchronized onRotate(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 4
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->getErrorMessageLocation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->onRotate(I)V

    return-void
.end method

.method public declared-synchronized onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ENV_CAL_STATUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_5

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera issue due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    if-lez p1, :cond_4

    and-int v4, p1, v3

    shl-int/2addr v3, v2

    if-eq v4, v2, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "bad AF calibration"

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p1, -0x3

    goto :goto_1

    :cond_3
    const-string v4, "bad AWB calibration"

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p1, -0x2

    :goto_1
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, " , "

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->getErrorMessageLocation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent$1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;)V

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTextures()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 3
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 4
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_CAL_STATUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
