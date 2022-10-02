.class public Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "WideSelfieStitchImageCallable.java"


# instance fields
.field public final mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

.field public final mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/panorama/PanoListener;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/play/core/appupdate/zzr;
    .locals 29

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mFaceRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    if-lez v2, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 5
    iget v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    .line 6
    array-length v4, v0

    .line 7
    iget-boolean v5, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v2, v3, v4, v0}, Lcom/lenovo/core/LenovoPanoramaSelfie;->setFaceRect(II[Landroid/graphics/Rect;)I

    .line 9
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 10
    iget v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    const/4 v9, 0x3

    new-array v8, v9, [I

    .line 11
    iget-object v2, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

    .line 12
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    .line 13
    invoke-static {v2}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v10

    .line 14
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 15
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    mul-int/2addr v3, v9

    const/4 v11, 0x2

    div-int/2addr v3, v11

    new-array v12, v3, [B

    const/16 v13, 0x5a

    const/16 v14, 0xb4

    const/4 v15, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v14, :cond_3

    if-ne v0, v13, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    iget-object v2, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 17
    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    .line 18
    array-length v3, v2

    .line 19
    invoke-static {v2, v15, v12, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 20
    :cond_3
    :goto_1
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 21
    iget-object v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    .line 22
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 23
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v5

    move v6, v0

    move-object v7, v12

    .line 24
    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->pictureRotate([BIII[B[I)V

    .line 25
    :goto_2
    iget-object v2, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 26
    iget v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    if-eqz v0, :cond_6

    if-ne v0, v14, :cond_4

    goto :goto_3

    :cond_4
    if-eq v0, v13, :cond_5

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_7

    .line 27
    :cond_5
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 28
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 29
    invoke-virtual {v0, v2, v4}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->setFullImageSize(II)V

    goto :goto_4

    .line 30
    :cond_6
    :goto_3
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 31
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 32
    invoke-virtual {v0, v2, v4}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->setFullImageSize(II)V

    :cond_7
    :goto_4
    new-array v2, v3, [I

    .line 33
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    .line 36
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    .line 38
    aget v0, v0, v15

    .line 39
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v5

    .line 40
    iget-object v5, v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    .line 41
    aget v5, v5, v3

    if-eqz v0, :cond_d

    if-nez v5, :cond_8

    goto/16 :goto_9

    :cond_8
    const-string v6, "PanoSelfie"

    .line 42
    invoke-static {v6}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const-string v7, "PanoHelper"

    if-nez v6, :cond_9

    const-string v0, "dumpPanoSelfieInputImage: directory is null"

    .line 43
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 44
    :cond_9
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_a

    const-string v0, "Failed to create bitmap"

    .line 45
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 46
    :cond_a
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v8

    .line 48
    iget-object v8, v8, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    .line 49
    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v0, v12, v8, v5}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuv2Bitmap([B[ILandroid/graphics/Bitmap;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/motorola/camera/panorama/PanoHelper;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v10, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".jpg"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v5, v0, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 54
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v6, v4

    .line 56
    :goto_5
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException when read file "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v6, v4

    .line 58
    :goto_6
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File not found "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 60
    :goto_7
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    :cond_b
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_9

    .line 62
    :goto_8
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 63
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    :cond_c
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 65
    throw v0

    .line 66
    :cond_d
    :goto_9
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v5

    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 67
    iget v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    .line 68
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isSelfieMirrorSupported()Z

    move-result v6

    .line 69
    monitor-enter v5

    .line 70
    :try_start_4
    iget-boolean v7, v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v7, :cond_e

    .line 71
    monitor-exit v5

    goto :goto_a

    .line 72
    :cond_e
    iget v7, v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    add-int/2addr v7, v3

    iput v7, v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    aput v7, v2, v15

    .line 73
    iget-object v7, v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v7, v12, v0, v3, v6}, Lcom/lenovo/core/LenovoPanoramaSelfie;->imageStitchingYUV([BIII)V

    .line 74
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    :goto_a
    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v5

    .line 76
    iget-object v5, v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v5}, Lcom/lenovo/core/LenovoPanoramaSelfie;->getImageStitchingStatus()I

    move-result v5

    .line 77
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v9, v5, :cond_14

    .line 78
    sget-object v5, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 79
    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v19, 0x0

    const v20, 0x7f1100be

    const/16 v23, 0x1

    const/16 v27, 0x0

    const/16 v24, 0x4

    .line 80
    invoke-static/range {v24 .. v24}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v7

    const/16 v8, 0x7d0

    .line 81
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v7, :cond_12

    if-eq v7, v9, :cond_11

    const/4 v10, 0x4

    if-eq v7, v10, :cond_f

    move-object v8, v4

    goto :goto_b

    .line 82
    :cond_f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    move/from16 v22, v3

    goto :goto_c

    .line 83
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v8, v4

    move/from16 v22, v11

    goto :goto_c

    :cond_12
    :goto_b
    move/from16 v22, v15

    :goto_c
    if-nez v8, :cond_13

    const/16 v3, 0xfa0

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 85
    :cond_13
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/16 v17, 0x1

    .line 86
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v28, 0x0

    move-object/from16 v16, v3

    move/from16 v18, v23

    invoke-direct/range {v16 .. v28}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 87
    sput-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 88
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v6, v3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 90
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 91
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 93
    :cond_14
    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

    aget v1, v2, v15

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v1, v9, :cond_15

    .line 94
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 95
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 97
    :cond_15
    new-instance v0, Lcom/google/android/play/core/appupdate/zzr;

    invoke-direct {v0, v4}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception v0

    .line 98
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
