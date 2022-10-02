.class public final synthetic Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;


# direct methods
.method public static m(Lcom/motorola/camera/fsm/camera/CameraState$Builder;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    return-object p0
.end method
