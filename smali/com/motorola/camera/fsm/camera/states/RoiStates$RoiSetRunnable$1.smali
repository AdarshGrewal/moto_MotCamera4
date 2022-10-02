.class public Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;
.source "RoiStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(Z)V
    .locals 0

    return-void
.end method

.method public onFocusModeChanged(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-boolean p1, p1, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 4
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 5
    iget-object p2, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 8
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 9
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_AUTO_FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 10
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method
