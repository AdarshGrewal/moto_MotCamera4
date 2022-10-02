.class public Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "ClearBundleRunnable.java"


# instance fields
.field public final mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public final mPost:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 6
    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 5
    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance p2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
