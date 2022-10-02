.class public Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "PanoShotStates.java"

# interfaces
.implements Lcom/motorola/camera/panorama/PanoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/PanoShotStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanoInitRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;Lcom/motorola/camera/fsm/camera/states/PanoShotStates$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v1, 0x7f1100bf

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    .line 1
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    new-instance v3, Lcom/motorola/camera/panorama/PanoCameraInfo;

    invoke-direct {v3}, Lcom/motorola/camera/panorama/PanoCameraInfo;-><init>()V

    .line 5
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 7
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v5, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v6, v3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    .line 8
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 9
    iput v4, v3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    .line 10
    sget v4, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 11
    iput v4, v3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDeviceOrientation:I

    .line 12
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    iget v4, v4, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v4, v2, :cond_2

    if-eq v4, v5, :cond_1

    const/4 v7, 0x3

    if-eq v4, v7, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/16 v4, 0x10e

    goto :goto_0

    :cond_1
    const/16 v4, 0xb4

    goto :goto_0

    :cond_2
    const/16 v4, 0x5a

    .line 14
    :goto_0
    iput v4, v3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDisplayRotation:I

    const-string v4, "YVU420_SEMIPLANAR"

    .line 15
    iput-object v4, v3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mImageFormat:Ljava/lang/String;

    .line 16
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 17
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v4, "FOCAL_LENGTH"

    .line 18
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 19
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    .line 20
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 21
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    const/4 v9, 0x0

    cmpl-float v9, v1, v9

    if-lez v9, :cond_3

    .line 22
    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v9

    .line 23
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 24
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    .line 25
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    .line 26
    invoke-static {v10, v11}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result v10

    .line 27
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11, v12}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result v11

    .line 28
    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    .line 29
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    div-float/2addr v4, v11

    mul-float/2addr v4, v10

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v1, v7

    div-float/2addr v9, v1

    float-to-double v7, v9

    .line 30
    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v7, v11

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v7, v13

    double-to-float v7, v7

    div-float/2addr v4, v1

    move-object/from16 p3, v3

    float-to-double v2, v4

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    mul-double/2addr v1, v9

    div-double/2addr v1, v11

    mul-double/2addr v1, v13

    double-to-float v1, v1

    goto :goto_1

    :cond_3
    move-object/from16 p3, v3

    const v7, 0x428157a8

    const v1, 0x4223beab

    :goto_1
    new-array v2, v5, [F

    aput v7, v2, v6

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 32
    aget v1, v2, v6

    aget v2, v2, v3

    move-object/from16 v3, p3

    .line 33
    iput v1, v3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleH:F

    .line 34
    iput v2, v3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleV:F

    .line 35
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 36
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    .line 37
    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    .line 38
    new-instance v4, Landroid/util/SizeF;

    invoke-direct {v4, v2, v1}, Landroid/util/SizeF;-><init>(FF)V

    .line 39
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 40
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 41
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 42
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 43
    sget-object v1, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 44
    new-instance v2, Lcom/motorola/camera/panorama/PanoInitCallable;

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/panorama/PanoInitCallable;-><init>(Lcom/motorola/camera/panorama/PanoCameraInfo;Lcom/motorola/camera/panorama/PanoListener;)V

    .line 45
    iget-object v3, v1, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    .line 47
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 48
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 49
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    .line 50
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
