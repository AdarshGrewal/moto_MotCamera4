.class public Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "RoiStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/RoiStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoiSetRunnable"
.end annotation


# instance fields
.field public final mAutoMode:Z

.field public final mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

.field public final mForceSetRoi:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mForceSetRoi:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 7
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    .line 8
    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mForceSetRoi:Z

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 3
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5
    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 6
    iget-object v9, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    const-string v10, "ROI_INNER"

    .line 7
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "LOCK_FOCUS_STATE"

    .line 8
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "ENABLE"

    .line 9
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v13, 0x1

    xor-int/2addr v9, v13

    .line 10
    iget-boolean v14, v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mForceSetRoi:Z

    const/4 v15, 0x0

    if-nez v14, :cond_1

    if-eqz v10, :cond_1

    if-nez v9, :cond_0

    if-eqz v11, :cond_1

    :cond_0
    move v9, v13

    goto :goto_0

    :cond_1
    move v9, v15

    :goto_0
    const/4 v10, 0x2

    if-eqz v9, :cond_6

    .line 11
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 12
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 13
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v7, :cond_2

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 15
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 16
    invoke-static {v2, v8}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 17
    :cond_2
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;-><init>(Z)V

    invoke-virtual {v6, v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMoto3ALib()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTtf5sRetriggerSupported()Z

    move-result v6

    if-nez v6, :cond_3

    .line 19
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTtf5sRetriggerSupported()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 21
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 22
    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 23
    invoke-virtual {v6, v2}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->restoreCacheFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 24
    :cond_4
    :goto_1
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 25
    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    .line 26
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 28
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    new-array v8, v15, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 29
    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 30
    invoke-static {v6, v8}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 31
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-array v6, v15, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 32
    invoke-interface {v7, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 33
    invoke-virtual {v5, v2, v6, v15}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 35
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 37
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/2addr v8, v10

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v10

    .line 38
    invoke-static {v6, v7, v8, v5}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->addRoi(JII)V

    goto :goto_2

    .line 39
    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->cancelRoi()V

    :goto_2
    move-object/from16 v22, v4

    goto/16 :goto_a

    .line 40
    :cond_6
    invoke-static {v2, v7}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 41
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;

    invoke-direct {v6, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;-><init>(Z)V

    invoke-virtual {v6, v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMoto3ALib()Z

    move-result v6

    if-nez v6, :cond_7

    .line 43
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 44
    :cond_7
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 45
    iget-object v7, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 46
    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    const-string v7, "LOCATION"

    .line 47
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 48
    iget v8, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    .line 49
    iget v9, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v9

    const-string v11, "ROI_WIDTH"

    .line 50
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v14, "ROI_HIGHT"

    .line 51
    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v13, "ROI_WEIGHT"

    .line 52
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 53
    new-instance v15, Lcom/motorola/camera/PreviewSize;

    const-string v10, "SURFACE_WIDTH"

    .line 54
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v1, "SURFACE_HEIGHT"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v15, v10, v1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 55
    new-instance v1, Landroid/graphics/PointF;

    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v10, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v7, "ROI_TARGET_LOCATION"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "ROI_TARGET_WIDTH"

    .line 56
    invoke-virtual {v6, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ROI_TARGET_HIGHT"

    .line 57
    invoke-virtual {v6, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ROI_TARGET_WEIGHT"

    .line 58
    invoke-virtual {v6, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ROI_DRAG"

    .line 60
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 61
    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v1, :cond_8

    if-eqz v6, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    int-to-float v6, v8

    int-to-float v7, v9

    .line 62
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 63
    iget v9, v15, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    const/high16 v10, -0x40000000    # -2.0f

    div-float/2addr v9, v10

    iget v10, v15, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v10, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    .line 64
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v9, 0x2

    new-array v10, v9, [F

    const/16 v18, 0x0

    aput v6, v10, v18

    const/4 v6, 0x1

    aput v7, v10, v6

    new-array v7, v9, [F

    .line 65
    invoke-virtual {v8, v7, v10}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 66
    new-instance v8, Landroid/graphics/PointF;

    aget v9, v7, v18

    aget v7, v7, v6

    invoke-direct {v8, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 67
    iget v6, v8, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget v7, v8, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v6, v6

    int-to-float v7, v7

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v8

    .line 69
    new-instance v9, Landroid/graphics/RectF;

    .line 70
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 71
    iget-object v10, v10, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 72
    invoke-direct {v9, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 73
    new-instance v10, Landroid/graphics/PointF;

    iget v12, v15, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v12, v12

    iget v15, v15, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v15, v15

    invoke-direct {v10, v12, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 74
    new-instance v12, Lcom/google/android/play/core/appupdate/zzy;

    iget v15, v9, Landroid/graphics/RectF;->left:F

    iget v3, v10, Landroid/graphics/PointF;->x:F

    const/high16 v18, 0x40000000    # 2.0f

    div-float v3, v3, v18

    sub-float/2addr v15, v3

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v0, v9, Landroid/graphics/RectF;->top:F

    sub-float v0, v10, v0

    div-float v18, v10, v18

    sub-float v0, v0, v18

    move-object/from16 v22, v4

    iget v4, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    iget v3, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v3

    sub-float v10, v10, v18

    invoke-direct {v12, v15, v0, v4, v10}, Lcom/google/android/play/core/appupdate/zzy;-><init>(FFFF)V

    .line 75
    invoke-virtual {v12}, Lcom/google/android/play/core/appupdate/zzy;->centerX()F

    move-result v0

    .line 76
    invoke-virtual {v12}, Lcom/google/android/play/core/appupdate/zzy;->centerY()F

    move-result v3

    neg-float v4, v0

    neg-float v9, v3

    .line 77
    invoke-virtual {v12, v4, v9}, Lcom/google/android/play/core/appupdate/zzy;->offset(FF)V

    sub-float/2addr v6, v0

    sub-float/2addr v7, v3

    .line 78
    invoke-virtual {v12, v6, v7}, Lcom/google/android/play/core/appupdate/zzy;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_7

    .line 79
    :cond_9
    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->getActiveSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 80
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 82
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 83
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 84
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_b

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_5

    :cond_b
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_5
    const/high16 v9, -0x40800000    # -1.0f

    .line 85
    invoke-virtual {v3, v9, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 86
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v4, v8}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v4

    int-to-float v4, v4

    .line 88
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 89
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 90
    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v4, :cond_c

    .line 91
    sget v4, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    add-int/lit16 v4, v4, -0x168

    .line 92
    rem-int/lit16 v4, v4, 0x168

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v12}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result v8

    div-float/2addr v4, v8

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result v9

    goto :goto_6

    .line 95
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v12}, Lcom/google/android/play/core/appupdate/zzy;->height()F

    move-result v8

    div-float/2addr v4, v8

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12}, Lcom/google/android/play/core/appupdate/zzy;->width()F

    move-result v9

    :goto_6
    div-float/2addr v8, v9

    .line 97
    invoke-virtual {v3, v4, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 98
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    add-int/2addr v8, v4

    int-to-float v4, v8

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v0, v9

    add-int/2addr v0, v8

    int-to-float v0, v0

    .line 100
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-array v0, v9, [F

    const/4 v4, 0x0

    aput v6, v0, v4

    const/4 v6, 0x1

    aput v7, v0, v6

    new-array v7, v9, [F

    .line 101
    invoke-virtual {v3, v7, v0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 102
    new-instance v0, Landroid/graphics/PointF;

    aget v3, v7, v4

    aget v4, v7, v6

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 103
    :goto_7
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 104
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 105
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 106
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v4

    if-nez v4, :cond_d

    int-to-float v4, v11

    mul-float/2addr v4, v3

    float-to-int v11, v4

    int-to-float v4, v14

    mul-float/2addr v4, v3

    float-to-int v14, v4

    .line 107
    :cond_d
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomBlendingType()I

    move-result v4

    .line 108
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 109
    invoke-static {v4}, Lcom/motorola/camera/utility/ZoomHelper;->isFullBlendingType(I)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v4}, Lcom/motorola/camera/utility/ZoomHelper;->isNonUwBlendingType(I)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v9, v4, v3

    .line 110
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    const/4 v4, 0x2

    .line 111
    aget v3, v3, v4

    cmpl-float v3, v9, v3

    if-ltz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_10

    const/16 v3, 0x1f4

    goto :goto_9

    :cond_10
    const/16 v3, 0x190

    .line 112
    :goto_9
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 113
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 114
    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->getActiveSensorRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 115
    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v8

    invoke-static {v7, v9, v10}, Lcom/motorola/camera/Util;->clamp(III)I

    move-result v7

    .line 116
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v0, v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v8

    invoke-static {v0, v9, v10}, Lcom/motorola/camera/Util;->clamp(III)I

    move-result v0

    const/4 v8, 0x0

    .line 117
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 118
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 119
    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v7

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 120
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 121
    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    move-object/from16 v16, v8

    move/from16 v17, v7

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v9, 0x0

    aput-object v8, v6, v9

    .line 122
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 123
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 124
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x2

    div-int/2addr v4, v10

    add-int/2addr v4, v7

    div-int/2addr v3, v10

    add-int/2addr v3, v0

    invoke-direct {v9, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v8, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v5, v2, v6, v1}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x0

    aget-object v3, v6, v3

    .line 127
    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-static {v0, v1, v4, v3}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->addRoi(JII)V

    .line 129
    :goto_a
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 130
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-object/from16 v1, p0

    .line 131
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 132
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 7
    iget-object v5, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "ROI_DRAG"

    .line 8
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    .line 9
    :goto_1
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    if-eqz p0, :cond_5

    if-nez v1, :cond_5

    if-nez v4, :cond_5

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 12
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 13
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 14
    invoke-static {v2, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray(I[I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    .line 15
    monitor-exit v0

    goto :goto_3

    .line 16
    :cond_2
    :try_start_1
    iput v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    .line 17
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 18
    iget-object v1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSamsung3ALib()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 22
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 23
    :cond_4
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 24
    :cond_5
    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->restoreCacheFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_3
    return-void
.end method
