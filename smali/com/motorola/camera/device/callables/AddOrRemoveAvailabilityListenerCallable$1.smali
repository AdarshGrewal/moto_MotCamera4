.class public Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "AddOrRemoveAvailabilityListenerCallable.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 4
    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    new-instance v1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    new-instance v1, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method
