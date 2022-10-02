.class public abstract Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "CreateCaptureRequestRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;


# static fields
.field public static mCaptureSequenceId:I


# instance fields
.field public final mTemplate:I

.field public mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTemplate:I

    return-void
.end method


# virtual methods
.method public abstract getCameraId()Ljava/lang/String;
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 5
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public abstract preCreateCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->preCreateCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 7
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 8
    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-static {p1, p2, p0, p3}, Lcom/motorola/camera/device/CameraService;->createReprocCaptureRequest(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTemplate:I

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 13
    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 14
    new-instance v2, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;

    invoke-direct {v2, p2, p3, p0, v0}, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;-><init>(Ljava/lang/String;ILcom/motorola/camera/device/callables/CreateCaptureRequestListener;Landroid/os/Handler;)V

    .line 15
    iget-object p2, v1, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method
