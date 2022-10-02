.class public Lcom/motorola/camera/device/callables/OpenCameraCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "OpenCameraCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mIgnoreCallbacks:Z

.field public final mOpenCameraListener:Lcom/motorola/camera/device/callables/OpenCameraListener;

.field public final mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 3
    new-instance p1, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;-><init>(Lcom/motorola/camera/device/callables/OpenCameraCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mOpenCameraListener:Lcom/motorola/camera/device/callables/OpenCameraListener;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mHandler:Landroid/os/Handler;

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

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "device_policy"

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    new-instance v0, Lcom/motorola/camera/device/exception/CameraDisabledException;

    invoke-direct {v0}, Lcom/motorola/camera/device/exception/CameraDisabledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_1
    const/16 v0, 0x19

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v5, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception v2

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_5

    :cond_3
    const-wide/16 v3, 0xc8

    .line 9
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 10
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isCameraActivityRunning()Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_3

    :cond_4
    if-gtz v0, :cond_2

    .line 12
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {v0, v2}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    const-string v1, "InterruptedException: while opening camera "

    .line 13
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OpenCameraCallable"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 15
    :cond_5
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v2}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :catch_2
    move-exception v0

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 17
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OpenCameraCallable"

    return-object p0
.end method
