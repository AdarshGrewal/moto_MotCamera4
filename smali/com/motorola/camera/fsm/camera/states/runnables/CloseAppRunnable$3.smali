.class public Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;
.super Lcom/motorola/camera/device/callables/CaptureRequestAdapter;
.source "CloseAppRunnable.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

.field public final synthetic val$stopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;Lcom/motorola/camera/device/callables/StopRepeatingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;->val$stopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/CaptureRequestAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;->val$stopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    invoke-interface {p0}, Lcom/motorola/camera/device/callables/StopRepeatingListener;->onStopRepeating()V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 6
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
