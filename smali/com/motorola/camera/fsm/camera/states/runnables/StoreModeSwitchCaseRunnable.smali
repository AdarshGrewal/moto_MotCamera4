.class public Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "StoreModeSwitchCaseRunnable.java"


# instance fields
.field public final mSwitchCase:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;->mSwitchCase:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;->mSwitchCase:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v2, "SWITCH_CASE"

    if-ne p1, v1, :cond_0

    .line 5
    check-cast p3, Landroid/os/Bundle;

    .line 6
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 7
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;->mSwitchCase:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
