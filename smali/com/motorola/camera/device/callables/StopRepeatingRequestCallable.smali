.class public Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "StopRepeatingRequestCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/play/core/assetpacks/zzbi;
    .locals 2
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

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    .line 3
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Camera isn\'t opened"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    if-eqz p0, :cond_1

    .line 5
    iput-object p0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object v0

    :catch_1
    move-exception p0

    .line 9
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "StopRepeatingRequestCallable"

    return-object p0
.end method
