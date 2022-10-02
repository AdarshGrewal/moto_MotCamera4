.class public Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SetRepeatingRequestCallable.java"


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

.field public final mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;-><init>(Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mCameraServiceHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/play/core/assetpacks/zzbi;
    .locals 4
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

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Camera isn\'t opened"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 3
    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraKpi;->isRecordRepeating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING:Lcom/motorola/camera/CameraKpi$KPI;

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 9
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mCameraServiceHandler:Landroid/os/Handler;

    .line 11
    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v3}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SetRepeatingRequestCallable"

    return-object p0
.end method
