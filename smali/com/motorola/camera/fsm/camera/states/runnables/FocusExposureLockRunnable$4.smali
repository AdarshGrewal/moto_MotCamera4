.class public Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;
.super Ljava/lang/Object;
.source "FocusExposureLockRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/device/callables/CallableListener<",
        "Ljava/util/List<",
        "Landroid/hardware/camera2/CaptureRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

.field public final synthetic val$cameraId:Ljava/lang/String;

.field public final synthetic val$captureRequestAdapter:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$cameraId:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$captureRequestAdapter:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$cameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mCameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$captureRequestAdapter:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 6
    invoke-static {v0, p1, v1, v2, v3}, Lcom/motorola/camera/device/CameraService;->captureBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestListener;Landroid/os/Handler;)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$cameraId:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocusTimeout(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
