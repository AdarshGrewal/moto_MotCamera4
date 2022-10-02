.class public Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;
.source "RoiStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    .line 7
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 8
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    invoke-direct {p1, v1, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 11
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method
