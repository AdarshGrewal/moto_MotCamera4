.class public Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SetRepeatingRequestCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void
.end method
