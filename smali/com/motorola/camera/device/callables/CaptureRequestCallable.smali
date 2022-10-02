.class public Lcom/motorola/camera/device/callables/CaptureRequestCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "CaptureRequestCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCameraServiceHandler:Landroid/os/Handler;

.field public final mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public final mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field public final mCaptureRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;-><init>(Lcom/motorola/camera/device/callables/CaptureRequestCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestListener;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCameraServiceHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/play/core/assetpacks/zzbi;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/assetpacks/zzbi;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    iget-object v1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 4
    sget-object v2, Lcom/motorola/camera/Util;->GET_TARGETS_MTD:Ljava/lang/reflect/Method;

    const-string/jumbo v3, "surfaces:"

    if-eqz v2, :cond_1

    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/motorola/camera/Util;->GET_TARGETS_MTD:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const-string v1, "Surface"

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    .line 7
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbi;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Null surface detected, id="

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 8
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCameraServiceHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v3}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 12
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 13
    :cond_4
    :goto_1
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Camera isn\'t opened"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptureRequestCallable"

    return-object p0
.end method
