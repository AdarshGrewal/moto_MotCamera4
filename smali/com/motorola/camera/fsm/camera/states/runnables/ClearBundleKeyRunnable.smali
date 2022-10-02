.class public Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "ClearBundleKeyRunnable.java"


# instance fields
.field public final mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method
