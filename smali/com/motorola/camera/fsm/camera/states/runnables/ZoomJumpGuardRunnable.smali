.class public Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpGuardRunnable;
.super Ljava/lang/Object;
.source "ZoomJumpGuardRunnable.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final mZoomJump:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpGuardRunnable;->mZoomJump:Z

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "ZOOM_JUMP_X"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    .line 5
    :goto_0
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpGuardRunnable;->mZoomJump:Z

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    return p2
.end method
