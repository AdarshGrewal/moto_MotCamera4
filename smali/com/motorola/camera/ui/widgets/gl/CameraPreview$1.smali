.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->loadTextures()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method


# virtual methods
.method public processPreview(Landroid/media/Image;Z[J)Z
    .locals 27

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v1, Landroid/graphics/Rect;

    .line 5
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 8
    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v4

    .line 9
    iget-object v4, v4, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eqz v4, :cond_4

    .line 10
    monitor-enter v4

    .line 11
    :try_start_0
    iget-object v5, v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 13
    iget-wide v5, v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    .line 14
    iget-wide v7, v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mTimeBetweenScans:J

    iget v9, v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    add-int/2addr v9, v2

    int-to-long v9, v9

    mul-long/2addr v7, v9

    add-long/2addr v7, v5

    cmp-long v5, v13, v7

    if-lez v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v11

    .line 15
    :goto_0
    invoke-static {v11}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v6

    .line 16
    sget v9, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 17
    iget-boolean v7, v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    if-nez v7, :cond_2

    if-eqz v5, :cond_2

    .line 18
    iput-boolean v2, v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    .line 19
    sget-object v5, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v5, v5, v11

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v2

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v8, v8, v12

    .line 23
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v15

    mul-int/2addr v10, v15

    .line 24
    invoke-static {v5, v7, v8, v10}, Lcom/motorola/camera/utility/AndroidImageUtils;->getNV21ByteArrayFromYUV_420_888(Landroid/media/Image$Plane;Landroid/media/Image$Plane;Landroid/media/Image$Plane;I)[B

    move-result-object v5

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v8

    const/16 v10, 0x11

    .line 27
    invoke-static {v5, v7, v8, v6, v10}, Lcom/google/mlkit/vision/common/InputImage;->fromByteArray([BIIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v10

    .line 28
    iget-object v5, v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    invoke-interface {v5, v10}, Lcom/google/mlkit/vision/barcode/BarcodeScanner;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v15

    new-instance v7, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;

    move-object v5, v7

    move-object v6, v4

    move-object v12, v7

    move-wide v7, v13

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;JILcom/google/mlkit/vision/common/InputImage;)V

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v5, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    .line 30
    iget-object v6, v15, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    new-instance v7, Lcom/google/android/gms/tasks/zzn;

    .line 31
    invoke-direct {v7, v5, v12}, Lcom/google/android/gms/tasks/zzn;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    .line 32
    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    .line 33
    invoke-virtual {v15}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    .line 34
    sget-object v6, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    .line 35
    invoke-virtual {v15, v6}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/zzw;

    new-instance v6, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v13, v14}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;J)V

    .line 36
    iget-object v7, v15, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    new-instance v8, Lcom/google/android/gms/tasks/zzj;

    .line 37
    invoke-direct {v8, v5, v6}, Lcom/google/android/gms/tasks/zzj;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 38
    invoke-virtual {v7, v8}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    .line 39
    invoke-virtual {v15}, Lcom/google/android/gms/tasks/zzw;->zzi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_2
    monitor-exit v4

    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 42
    :cond_4
    :goto_2
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 43
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 44
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    .line 45
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class v4, Lcom/motorola/camera/meishe/MeisheEffects;

    .line 47
    iget-boolean v5, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateThumbnails:Z

    if-eqz v5, :cond_a

    .line 48
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 49
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 50
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 51
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v7

    .line 52
    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LIB_NAME:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v7, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    .line 53
    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 54
    invoke-static {v7, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 55
    sget-object v9, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAILS_THREADS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 56
    invoke-static {v7, v9}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 57
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 58
    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 59
    aget v21, v7, v11

    .line 60
    monitor-enter v4

    int-to-float v7, v9

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v7, v9

    const/high16 v9, 0x42780000    # 62.0f

    mul-float/2addr v7, v9

    .line 61
    :try_start_1
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 62
    rem-int/lit8 v9, v7, 0x2

    add-int/2addr v7, v9

    .line 63
    invoke-static {v8}, Lcom/motorola/camera/meishe/MeisheEffects;->sortEffects([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "MeisheEffects"

    const-string/jumbo v9, "unable to sort meishe effects list"

    .line 64
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v20, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    move/from16 v19, v7

    invoke-static/range {v16 .. v21}, Lcom/motorola/camera/meishe/MeisheEffects;->native_configure_bitmap_container(Ljava/lang/String;III[Ljava/lang/String;I)V

    .line 66
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, "Original"

    .line 67
    invoke-static {v5, v6}, Lcom/motorola/camera/meishe/MeisheEffects;->native_add_meishe_effect_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v5, "MeisheEffects"

    const-string/jumbo v6, "unable to add meishe thumbnail effect Original"

    .line 68
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 69
    :cond_6
    sget-object v6, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/List;

    new-instance v8, Landroid/util/Pair;

    const-string v9, "Original"

    invoke-direct {v8, v9, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v6, Ljava/util/LinkedList;

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_3
    sget-object v5, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v6, v5

    move v8, v11

    :goto_4
    if-ge v8, v6, :cond_8

    aget-object v9, v5, v8

    .line 71
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 72
    invoke-static {v10, v9}, Lcom/motorola/camera/meishe/MeisheEffects;->native_add_meishe_effect_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v10, "MeisheEffects"

    .line 73
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unable to add meishe thumbnail effect "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 74
    :cond_7
    sget-object v12, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/List;

    new-instance v13, Landroid/util/Pair;

    invoke-direct {v13, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v12, Ljava/util/LinkedList;

    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 75
    :cond_8
    sget-object v5, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 76
    :cond_9
    :goto_6
    monitor-enter v4

    .line 77
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v16

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v17

    aget-object v6, v5, v11

    .line 80
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v18

    aget-object v6, v5, v11

    .line 81
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    aget-object v6, v5, v11

    .line 82
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    aget-object v6, v5, v2

    .line 83
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v21

    aget-object v6, v5, v2

    .line 84
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v22

    aget-object v2, v5, v2

    .line 85
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v23

    const/4 v2, 0x2

    aget-object v6, v5, v2

    .line 86
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v24

    aget-object v6, v5, v2

    .line 87
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v25

    aget-object v2, v5, v2

    .line 88
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v26

    .line 89
    invoke-static/range {v16 .. v26}, Lcom/motorola/camera/meishe/MeisheEffects;->native_process_thumbnails(IIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v4

    .line 90
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    .line 91
    monitor-exit v4

    throw v0

    :cond_a
    :goto_7
    if-eqz p2, :cond_b

    .line 92
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_8

    :cond_b
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_8
    move-object/from16 v4, p1

    move-object/from16 v2, p3

    .line 93
    invoke-static {v4, v0, v3, v1, v2}, Lcom/motorola/camera/mcf/Mcf;->processPreviewImage(Landroid/media/Image;Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;FLandroid/graphics/Rect;[J)Z

    move-result v2

    goto :goto_9

    :cond_c
    move-object/from16 v4, p1

    .line 94
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 95
    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 96
    const-class v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter v1

    .line 97
    :try_start_3
    sget-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sStarted:Z

    if-eqz v0, :cond_d

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    .line 99
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->analyzeImage(Landroid/media/Image;)F

    move-result v0

    .line 100
    new-instance v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    invoke-direct {v3, v5, v6, v0}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;-><init>(JF)V

    .line 101
    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 102
    :cond_d
    monitor-exit v1

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_e
    :goto_9
    return v2
.end method
