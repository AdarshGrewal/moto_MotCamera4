.class public final synthetic Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline1;
.super Ljava/lang/Object;


# direct methods
.method public static m(Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iput-object v0, p2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 2
    check-cast p2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    .line 3
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, p2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 7
    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    return-object p0
.end method
