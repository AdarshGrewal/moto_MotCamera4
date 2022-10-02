.class public abstract Lcom/motorola/camera/fsm/camera/CameraState$Builder;
.super Ljava/lang/Object;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/CameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/motorola/camera/fsm/camera/CameraState;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public mAutoTransitionState:Z

.field public mEntryCode:Lcom/motorola/camera/fsm/FsmRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public mExitAfterFireChange:Lcom/motorola/camera/fsm/FsmRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public mParent:Lcom/motorola/camera/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/State<",
            "Lcom/motorola/camera/fsm/camera/Trigger;",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

.field public final mTransitions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/fsm/Transition<",
            "Lcom/motorola/camera/fsm/camera/Trigger;",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public alwaysCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    return-object p0
.end method

.method public autoTransition(Z)Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAutoTransitionState:Z

    return-object p0
.end method

.method public abstract build()Lcom/motorola/camera/fsm/camera/CameraState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public entryCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mEntryCode:Lcom/motorola/camera/fsm/FsmRunnable;

    return-object p0
.end method

.method public exitAfterFireChange(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitAfterFireChange:Lcom/motorola/camera/fsm/FsmRunnable;

    return-object p0
.end method

.method public exitCode(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    return-object p0
.end method

.method public parent(Lcom/motorola/camera/fsm/State;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/State<",
            "Lcom/motorola/camera/fsm/camera/Trigger;",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    return-object p0
.end method

.method public state(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ")",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    return-object p0
.end method

.method public transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/CameraTransition;",
            ")",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public transitions(Ljava/util/Collection;)Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/CameraTransition;",
            ">;)",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
