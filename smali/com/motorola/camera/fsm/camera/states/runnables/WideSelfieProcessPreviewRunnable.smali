.class public Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "WideSelfieProcessPreviewRunnable.java"


# instance fields
.field public ImageWH:[I

.field public mHeight:I

.field public mOutputPreviewData:[B

.field public mPanoListener:Lcom/motorola/camera/panorama/PanoCaptureListener;

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mRotateData:[B

.field public mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/panorama/PanoListener;Z)V
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    .line 3
    sget-object v1, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z)Landroid/util/Size;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x140

    const/16 v4, 0xf0

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 6
    :goto_0
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWidth:I

    .line 7
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mHeight:I

    .line 8
    check-cast p2, Lcom/motorola/camera/panorama/PanoCaptureListener;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPanoListener:Lcom/motorola/camera/panorama/PanoCaptureListener;

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 10
    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWidth:I

    mul-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x3

    div-int/2addr p1, v0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    .line 11
    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 12
    invoke-static {p1, p3}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfieStitchingRatio(IZ)F

    move-result p2

    const/16 p3, 0x5a

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eq p1, p3, :cond_2

    const/16 p3, 0x10e

    if-ne p1, p3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    iget p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mHeight:I

    int-to-float v5, p3

    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    mul-float/2addr p2, v5

    float-to-int p2, p2

    aput p2, p1, v4

    .line 14
    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWidth:I

    aput p2, p1, v1

    .line 15
    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewWidth:I

    .line 16
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewHeight:I

    goto :goto_2

    .line 17
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    iget p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWidth:I

    int-to-float v5, p3

    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    mul-float/2addr p2, v5

    float-to-int p2, p2

    aput p2, p1, v4

    .line 18
    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mHeight:I

    aput p2, p1, v1

    .line 19
    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewWidth:I

    .line 20
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewHeight:I

    .line 21
    :goto_2
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    aget p3, p2, v4

    aget p2, p2, v1

    .line 22
    iget-object v1, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    if-eqz v1, :cond_3

    array-length v1, v1

    mul-int v2, p3, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v0

    if-eq v1, v2, :cond_4

    :cond_3
    mul-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x3

    .line 23
    div-int/2addr p3, v0

    new-array p2, p3, [B

    iput-object p2, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    .line 24
    :cond_4
    iget-object p1, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    .line 25
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mOutputPreviewData:[B

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/play/core/appupdate/zzr;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v8, v1, [I

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 2
    iget v2, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    const/16 v3, 0x10e

    const/4 v9, 0x0

    if-eq v2, v3, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 4
    iget-object v3, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    .line 5
    iget v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWidth:I

    iget v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mHeight:I

    .line 6
    iget v6, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    .line 7
    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    .line 8
    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->pictureRotate([BIII[B[I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    .line 10
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    array-length v3, v2

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :goto_0
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mOutputPreviewData:[B

    iget v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewWidth:I

    iget v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewHeight:I

    const/16 v17, 0x7

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 12
    iget v4, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationX:F

    .line 13
    iget v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationY:F

    .line 14
    iget v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    .line 15
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    .line 16
    iget-boolean v7, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v7, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    iget-object v10, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    move v13, v15

    move v14, v2

    move/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v3

    move-object/from16 v21, v6

    invoke-virtual/range {v10 .. v21}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuvResizeAndStitch([B[BIIIIIFFI[I)V

    .line 18
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    aget v2, v1, v9

    aget v1, v1, v9

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 19
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mOutputPreviewData:[B

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    .line 20
    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v2, v3, v4, v1}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuv2Bitmap([B[ILandroid/graphics/Bitmap;)V

    .line 21
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {v15, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 23
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPanoListener:Lcom/motorola/camera/panorama/PanoCaptureListener;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    aget v13, v3, v9

    const/4 v4, 0x1

    aget v14, v3, v4

    const/16 v16, 0x1

    move-object v10, v1

    .line 24
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    aget v5, v0, v9

    aget v0, v0, v4

    .line 25
    invoke-interface {v2, v3, v5, v0}, Lcom/motorola/camera/panorama/PanoCaptureListener;->onProgress(Landroid/graphics/Bitmap;II)V

    .line 26
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 27
    new-instance v0, Lcom/google/android/play/core/appupdate/zzr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
