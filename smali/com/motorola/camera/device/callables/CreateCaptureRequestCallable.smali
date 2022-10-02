.class public Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "CreateCaptureRequestCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Landroid/hardware/camera2/CaptureRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public final mTemplate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/device/callables/CreateCaptureRequestListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput p2, p0, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;->mTemplate:I

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

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Camera Isn\'t Opened"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    iget p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;->mTemplate:I

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CreateCaptureRequestCallable"

    return-object p0
.end method
