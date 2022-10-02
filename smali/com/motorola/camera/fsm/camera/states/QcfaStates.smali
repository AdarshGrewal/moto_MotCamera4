.class public Lcom/motorola/camera/fsm/camera/states/QcfaStates;
.super Ljava/lang/Object;
.source "QcfaStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;,
        Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaTeardownRunnable;,
        Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;,
        Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCloseImageWriterRunnable;,
        Lcom/motorola/camera/fsm/camera/states/QcfaStates$StoreQcfaRemosaicProcessRunnable;,
        Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaRemosaicGuardRunnable;,
        Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;,
        Lcom/motorola/camera/fsm/camera/states/QcfaStates$checkRemosiacProcessResultRunnable;,
        Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateSurfacesRunnable;
    }
.end annotation


# static fields
.field public static final SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# instance fields
.field public mParentState:Lcom/motorola/camera/fsm/camera/CameraState;

.field public mQcfaCaptureListener:Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_SURFACES:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v5, v2, v6

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v5, v2, v6

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_STREAMING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v5, v2, v6

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v5, v2, v6

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v5, v2, v6

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v2, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v2, v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v5, v2, v6

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v3, v1, v4

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mQcfaCaptureListener:Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mParentState:Lcom/motorola/camera/fsm/camera/CameraState;

    return-void
.end method


# virtual methods
.method public configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mParentState:Lcom/motorola/camera/fsm/camera/CameraState;

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 6
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;Lcom/motorola/camera/fsm/camera/states/QcfaStates$1;)V

    .line 7
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mEntryCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 8
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;-><init>(Z)V

    .line 9
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 10
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 11
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 12
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 13
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 16
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 18
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 20
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 22
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateSurfacesRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateSurfacesRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates$1;)V

    .line 23
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mEntryCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 24
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;-><init>()V

    .line 25
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 26
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 27
    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 28
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 29
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 30
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/SetSurfaceRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SetSurfaceRunnable;-><init>()V

    .line 31
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 32
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitingForSurfacesRunnable;-><init>()V

    .line 33
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 34
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 35
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 37
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 39
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 41
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v7, v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 43
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 44
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SURFACES_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 45
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 46
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 47
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 48
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 49
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 51
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 52
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 53
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 54
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 55
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 57
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 59
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 60
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 61
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;-><init>()V

    .line 62
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 63
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 64
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 66
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    invoke-direct {v11, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 68
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;

    invoke-direct {v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;-><init>(I)V

    .line 70
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v10, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 72
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 73
    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 74
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 75
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 76
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 77
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 78
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 80
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 82
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    invoke-direct {v13, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 84
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;-><init>(I)V

    .line 86
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v13, v12, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 88
    iput-object v13, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 89
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 90
    sget-object v12, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 91
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 92
    new-instance v13, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v13, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 93
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 95
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 96
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 97
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 98
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 100
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 102
    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 103
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 104
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates$1;)V

    .line 105
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 106
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 107
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>(Z)V

    .line 109
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    invoke-direct {v10, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 111
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v9, v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 113
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 114
    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 115
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 116
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 117
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 118
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 120
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;-><init>(I)V

    .line 121
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 122
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 123
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 124
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 125
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 127
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 128
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 129
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 130
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 132
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CREATE_REPROC_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 133
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 134
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 135
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 136
    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 137
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 139
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 141
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 142
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 143
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaReprocCaptureRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaReprocCaptureRequestRunnable;-><init>()V

    .line 144
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 145
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 146
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaRemosaicGuardRunnable;

    invoke-direct {v6, v8, v4}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaRemosaicGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/QcfaStates$1;)V

    .line 147
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 148
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CREATE_REPROC_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 149
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 150
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 151
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 152
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 153
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 155
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaRemosaicGuardRunnable;

    invoke-direct {v10, v5, v4}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaRemosaicGuardRunnable;-><init>(ZLcom/motorola/camera/fsm/camera/states/QcfaStates$1;)V

    .line 156
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 157
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 158
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 159
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 160
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 161
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 163
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 164
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 165
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 166
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 168
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 170
    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 171
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 172
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/QcfaStates$checkRemosiacProcessResultRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$checkRemosiacProcessResultRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates$1;)V

    .line 173
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 174
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 175
    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_REMOSAIC_PROCESS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 176
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 177
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 178
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 179
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    .line 181
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 183
    iput-object v9, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 184
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 185
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;-><init>()V

    .line 186
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    invoke-direct {v7, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(I)V

    .line 189
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/QcfaStates$StoreQcfaRemosaicProcessRunnable;

    invoke-direct {v7, v5}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$StoreQcfaRemosaicProcessRunnable;-><init>(Z)V

    .line 191
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaTeardownRunnable;

    invoke-direct {v7, p0, v4}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaTeardownRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;Lcom/motorola/camera/fsm/camera/states/QcfaStates$1;)V

    .line 193
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCloseImageWriterRunnable;

    invoke-direct {p0, v4}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCloseImageWriterRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates$1;)V

    .line 195
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 197
    iput-object p0, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 198
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 199
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 200
    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 201
    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 202
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 203
    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 205
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 207
    iput-object v12, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 208
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 209
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 210
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 211
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 212
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;

    invoke-direct {v1, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaSessionGuardRunnable;-><init>(I)V

    .line 213
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 214
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 215
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 216
    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 217
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 218
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 220
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 221
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_GOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 222
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v6, "QCFA_SHOT"

    invoke-direct {v2, v3, v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 225
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 227
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 228
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 229
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 231
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
