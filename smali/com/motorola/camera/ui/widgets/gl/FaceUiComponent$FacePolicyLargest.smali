.class public Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;
.super Ljava/lang/Object;
.source "FaceUiComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacePolicyLargest"
.end annotation


# instance fields
.field public mDetectedFaces:[Landroid/hardware/camera2/params/Face;

.field public final mMaxNumberOfFaces:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;ILcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    .line 3
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mMaxNumberOfFaces:I

    return-void
.end method


# virtual methods
.method public handleFaceData([Landroid/hardware/camera2/params/Face;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 2
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v2, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 6
    iget-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-eqz v1, :cond_1d

    .line 7
    array-length v4, v1

    if-nez v4, :cond_3

    goto/16 :goto_12

    :cond_3
    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    .line 9
    invoke-static {}, Lcom/motorola/camera/utility/FaceUtility;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v2

    .line 10
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 11
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomedSuperRemosaicSupported()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 14
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 15
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    div-float v9, v7, v5

    .line 17
    aget v10, v6, v4

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_4

    aget v10, v6, v8

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    .line 18
    aget v6, v6, v4

    mul-float/2addr v5, v6

    .line 19
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x44fa0000    # 2000.0f

    div-float v6, v9, v6

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v10

    xor-int/2addr v10, v8

    const/4 v11, 0x0

    cmpl-float v12, v5, v11

    if-lez v12, :cond_5

    if-eqz v10, :cond_5

    div-float/2addr v6, v5

    div-float/2addr v9, v5

    .line 22
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda0;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-array v1, v4, [Landroid/hardware/camera2/params/Face;

    .line 24
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    iget v14, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mMaxNumberOfFaces:I

    .line 25
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 26
    invoke-static {v1, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    .line 27
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 28
    iget-boolean v13, v13, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v13, :cond_12

    .line 29
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_9

    if-eqz v13, :cond_9

    .line 30
    array-length v14, v13

    if-lez v14, :cond_9

    .line 31
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 32
    array-length v15, v1

    move v3, v4

    :goto_0
    if-ge v3, v15, :cond_7

    aget-object v7, v1, v3

    .line 33
    invoke-static {v13}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda1;

    invoke-direct {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/params/Face;)V

    invoke-interface {v11, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 34
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 35
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    new-array v3, v4, [Landroid/hardware/camera2/params/Face;

    .line 36
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v3, 0x0

    .line 37
    :goto_2
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v7, :cond_b

    if-eqz v1, :cond_b

    array-length v8, v1

    if-eqz v8, :cond_b

    array-length v8, v1

    array-length v7, v7

    if-eq v8, v7, :cond_a

    goto :goto_3

    :cond_a
    move v7, v4

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eqz v3, :cond_c

    .line 38
    array-length v8, v3

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    move v8, v4

    :goto_5
    if-eqz v7, :cond_d

    move-object v3, v1

    goto :goto_7

    .line 39
    :cond_d
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 40
    iget-wide v13, v7, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    const-wide/16 v17, 0x0

    cmp-long v11, v13, v17

    if-eqz v11, :cond_10

    if-eqz v8, :cond_e

    goto :goto_6

    .line 41
    :cond_e
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 43
    iget-wide v13, v11, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    sub-long/2addr v7, v13

    .line 44
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    const-wide/16 v13, 0x7d0

    cmp-long v3, v7, v13

    if-lez v3, :cond_f

    .line 45
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    const/4 v3, 0x0

    goto :goto_7

    .line 46
    :cond_f
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    goto :goto_7

    .line 47
    :cond_10
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 48
    iput-wide v13, v7, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    :goto_7
    const/16 v7, 0x5dc

    if-eqz v3, :cond_11

    .line 49
    array-length v8, v3

    if-lez v8, :cond_11

    .line 50
    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    .line 51
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    const/4 v8, 0x1

    .line 52
    invoke-virtual {v3, v8, v7}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(ZI)V

    goto :goto_8

    .line 53
    :cond_11
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 54
    invoke-virtual {v3, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(ZI)V

    :cond_12
    :goto_8
    if-lez v12, :cond_13

    if-eqz v10, :cond_13

    goto :goto_9

    :cond_13
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_9
    const/high16 v3, -0x3b860000    # -1000.0f

    div-float v5, v3, v5

    move v7, v4

    .line 55
    :goto_a
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mMaxNumberOfFaces:I

    if-ge v7, v8, :cond_1c

    .line 56
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 57
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 58
    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/List;

    .line 59
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    .line 60
    array-length v11, v1

    if-ge v7, v11, :cond_14

    const/4 v11, 0x1

    goto :goto_b

    :cond_14
    move v11, v4

    :goto_b
    if-eqz v11, :cond_16

    .line 61
    aget-object v12, v1, v7

    invoke-virtual {v12}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 62
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isUwZoomBlendingCase()Z

    move-result v13

    if-nez v13, :cond_15

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 63
    :cond_15
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 64
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 65
    invoke-static {}, Lcom/motorola/camera/utility/FaceUtility;->getPreviewRectSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v14

    .line 66
    iget v15, v14, Lcom/motorola/camera/PreviewSize;->width:I

    .line 67
    iget v14, v14, Lcom/motorola/camera/PreviewSize;->height:I

    .line 68
    iget v4, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v16, v16, v15

    div-int/lit8 v16, v16, 0x2

    sub-int v4, v4, v16

    int-to-float v4, v4

    mul-float/2addr v4, v9

    iget v3, v12, Landroid/graphics/Rect;->top:I

    .line 69
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v16, v16, v14

    div-int/lit8 v16, v16, 0x2

    sub-int v3, v3, v16

    int-to-float v3, v3

    mul-float/2addr v3, v6

    move-object/from16 v18, v1

    iget v1, v12, Landroid/graphics/Rect;->right:I

    .line 70
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v16, v16, v15

    div-int/lit8 v16, v16, 0x2

    sub-int v1, v1, v16

    int-to-float v1, v1

    mul-float/2addr v1, v9

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    .line 71
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v6

    .line 72
    invoke-virtual {v8, v4, v3, v1, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 73
    invoke-virtual {v8, v5, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 74
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v4, -0x3b860000    # -1000.0f

    invoke-direct {v1, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto :goto_c

    :cond_16
    move-object/from16 v18, v1

    move v4, v3

    .line 75
    :goto_c
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 76
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    .line 77
    monitor-enter v10

    .line 78
    :try_start_0
    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 79
    iget-object v1, v10, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    const/4 v3, 0x3

    iget v12, v8, Landroid/graphics/RectF;->left:F

    aput v12, v1, v3

    const/4 v3, 0x0

    aput v12, v1, v3

    const/16 v12, 0xa

    .line 80
    iget v13, v8, Landroid/graphics/RectF;->top:F

    aput v13, v1, v12

    const/4 v12, 0x1

    aput v13, v1, v12

    const/4 v13, 0x4

    const/4 v14, 0x7

    .line 81
    iget v15, v8, Landroid/graphics/RectF;->bottom:F

    aput v15, v1, v14

    aput v15, v1, v13

    const/4 v13, 0x6

    const/16 v14, 0x9

    .line 82
    iget v8, v8, Landroid/graphics/RectF;->right:F

    aput v8, v1, v14

    aput v8, v1, v13

    if-eqz v11, :cond_17

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_17
    const/high16 v1, 0x42480000    # 50.0f

    :goto_d
    const/4 v8, 0x0

    .line 83
    invoke-virtual {v10, v8, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 84
    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->updateTouchRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v10

    .line 86
    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 87
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 88
    iget-boolean v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-eqz v1, :cond_18

    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    invoke-virtual {v10, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_e

    :cond_18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 90
    :goto_e
    sget v13, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->WHITE_COLOR:I

    .line 91
    invoke-virtual {v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    if-eqz v11, :cond_19

    .line 92
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v13}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->access$700(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result v13

    if-eqz v13, :cond_19

    move v13, v12

    goto :goto_f

    :cond_19
    move v13, v3

    :goto_f
    invoke-virtual {v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    if-nez v11, :cond_1a

    goto :goto_10

    .line 93
    :cond_1a
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v11}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->access$700(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result v11

    if-eqz v11, :cond_1b

    move v11, v12

    goto :goto_11

    :cond_1b
    :goto_10
    move v11, v3

    :goto_11
    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v18

    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit v10

    throw v0

    :cond_1c
    return-void

    :cond_1d
    :goto_12
    const/4 v1, 0x0

    .line 95
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    .line 96
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->shouldShowTip()Z

    move-result v1

    .line 97
    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    .line 98
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    return-void
.end method
