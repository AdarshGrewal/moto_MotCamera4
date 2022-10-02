.class public Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;
.super Lcom/motorola/camera/fsm/camera/states/modes/AbstractModeStates;
.source "CinemagraphModeStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$StoreCaptureEventBundleRunnable;,
        Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$CinemagraphForceCloseRunnable;
    }
.end annotation


# static fields
.field public static final CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CINEMAGRAPH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CINEMAGRAPH_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->IDLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v5, v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v2, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->OPEN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/modes/AbstractModeStates;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/modes/AbstractModeStates;->getParentState()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->getIdleState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 4
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 10
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FORCE_CLOSE_CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 11
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 12
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$CinemagraphForceCloseRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$CinemagraphForceCloseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$1;)V

    .line 16
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 18
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 20
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 22
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 24
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 25
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 26
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 28
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 29
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 30
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 31
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 32
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 33
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 35
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 37
    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 38
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 39
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 40
    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 41
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    invoke-direct {v8, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 42
    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 43
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 44
    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 45
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 47
    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAST_FRAME_ADDED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 48
    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 49
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    invoke-direct {v8, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 50
    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 51
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 52
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 53
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 55
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 58
    iput-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 59
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 60
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR_CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 61
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 62
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 63
    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 64
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 65
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 67
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 70
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 71
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 72
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    sget-object v2, Lcom/motorola/camera/ShotType;->CINEMAGRAPH:Lcom/motorola/camera/ShotType;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    .line 73
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 74
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 75
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 76
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 77
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 78
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 79
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 81
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 82
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 83
    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 84
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 85
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 87
    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 88
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SingleTapToastRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SingleTapToastRunnable;-><init>()V

    .line 89
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 90
    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 91
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 92
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 94
    iput-object v7, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 95
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    invoke-direct {v1, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 96
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 97
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SingleTapToastRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SingleTapToastRunnable;-><init>()V

    .line 98
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 99
    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 100
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 101
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 103
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method

.method public getIdleState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    iput-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 5
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/BatterySaverModeRunnable;

    sget-object v2, Lcom/motorola/camera/ShotType;->CINEMAGRAPH:Lcom/motorola/camera/ShotType;

    invoke-direct {p1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/BatterySaverModeRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    .line 6
    iput-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 7
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 9
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 13
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 15
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 16
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 17
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    iput-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 20
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 21
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 22
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 23
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 24
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 26
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 27
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 28
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 29
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 30
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 31
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 32
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HISTORY_STATE"

    invoke-direct {v2, v4, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 34
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 35
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 37
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 38
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 39
    iput-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 40
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 41
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 42
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 43
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 45
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 46
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 47
    iput-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 48
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    invoke-direct {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    .line 49
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 50
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v2, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 51
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 52
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 53
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/Collection;

    move-result-object p1

    .line 55
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 57
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getLeftPageShowModeUi()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object p1

    .line 59
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 61
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 63
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/Collection;

    move-result-object p1

    .line 65
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 66
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 67
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 68
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 69
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 70
    iput-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 71
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 72
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object p1

    .line 74
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/Collection;

    move-result-object p1

    .line 76
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;

    move-result-object p1

    .line 78
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 80
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 81
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 82
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$StoreCaptureEventBundleRunnable;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$StoreCaptureEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;)V

    .line 83
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 84
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(I)V

    .line 85
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 86
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 87
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 88
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 89
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 90
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 91
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 93
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 94
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 95
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$StoreCaptureEventBundleRunnable;

    invoke-direct {v4, p0}, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$StoreCaptureEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;)V

    .line 96
    iput-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 97
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 98
    iput-object p0, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 99
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    invoke-direct {p0, v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    .line 100
    iput-object p0, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 101
    iput-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 102
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 103
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 105
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 106
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 107
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/SingleTapToastRunnable;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SingleTapToastRunnable;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 109
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v2, "CANCELLED"

    invoke-direct {p1, v1, v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 110
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 111
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 112
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 114
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FATAL_ERROR_CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 115
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 116
    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$CinemagraphForceCloseRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$CinemagraphForceCloseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$1;)V

    .line 119
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 121
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 123
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-direct {v1, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 125
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 127
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 128
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 129
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 131
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FORCE_CLOSE_CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 132
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 133
    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$CinemagraphForceCloseRunnable;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$CinemagraphForceCloseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates$1;)V

    .line 136
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 138
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeSwitchCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)V

    .line 140
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;

    invoke-direct {v1, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeUseCaseRunnable;-><init>(Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V

    .line 142
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 144
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 145
    new-instance p1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 146
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    return-object p0
.end method

.method public getParentStateKey()Lcom/motorola/camera/fsm/camera/StateKey;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-object p0
.end method
