.class public Lcom/motorola/camera/fsm/Fsm;
.super Ljava/lang/Object;
.source "Fsm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mAutoTransEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final mChangeListenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;",
            "Ljava/util/Set<",
            "Lcom/motorola/camera/fsm/ChangeListener<",
            "TS;TC;>;>;>;"
        }
    .end annotation
.end field

.field public mCurrentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final mFsmContext:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public mFsmLoader:Lcom/motorola/camera/fsm/camera/iFsmLoader;

.field public final mStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;",
            "Lcom/motorola/camera/fsm/State<",
            "TE;TS;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/iFsmLoader;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/iFsmLoader;",
            "TC;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Lcom/motorola/camera/fsm/camera/iFsmLoader;

    return-void
.end method


# virtual methods
.method public addState(Lcom/motorola/camera/fsm/State;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/State<",
            "TE;TS;TC;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/Map;

    iget-object v2, p1, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/Map;

    iget-object v2, p1, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/State;Lcom/motorola/camera/fsm/State;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/State<",
            "TE;TS;TC;>;",
            "Lcom/motorola/camera/fsm/State<",
            "TE;TS;TC;>;)I"
        }
    .end annotation

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    move v0, p1

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 3
    aget-object v1, p0, v0

    if-ne v1, p2, :cond_1

    add-int/lit8 p1, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method public final fireChangeEvent(Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/motorola/camera/fsm/ChangeEvent$Type;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/ChangeListener;

    .line 4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeListener;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/State;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/fsm/State;->mTransitions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->processTransition(Lcom/motorola/camera/fsm/State;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    .line 5
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    if-nez v1, :cond_2

    .line 6
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/motorola/camera/fsm/State;->mTransitions:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    aget-object v1, v0, v2

    invoke-virtual {p0, v1, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->processTransition(Lcom/motorola/camera/fsm/State;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public final processTransition(Lcom/motorola/camera/fsm/State;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/State<",
            "TE;TS;TC;>;TE;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/fsm/State;->mTransitions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/Transition;

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 4
    iget-object v4, v0, Lcom/motorola/camera/fsm/Transition;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    if-eqz v4, :cond_2

    invoke-interface {v4, v3, p3}, Lcom/motorola/camera/fsm/GuardedTransitionRunnable;->canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_0

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/State;

    .line 6
    iget-object v3, v0, Lcom/motorola/camera/fsm/Transition;->mEndState:Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 7
    iget-object p1, v0, Lcom/motorola/camera/fsm/Transition;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    if-eqz p1, :cond_3

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    invoke-interface {p1, p2, v1, p3}, Lcom/motorola/camera/fsm/FsmRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    :cond_3
    iget-object p1, v0, Lcom/motorola/camera/fsm/Transition;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    if-eqz p1, :cond_4

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    invoke-interface {p1, p2, v1, p3}, Lcom/motorola/camera/fsm/FsmRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    :cond_4
    iget-boolean p1, v0, Lcom/motorola/camera/fsm/Transition;->mFireChangeEvent:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    sget-object p2, Lcom/motorola/camera/fsm/ChangeEvent$Type;->REENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->fireChangeEvent(Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V

    goto/16 :goto_c

    .line 12
    :cond_5
    iget-object v4, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/State;

    if-nez v3, :cond_7

    .line 13
    iget-object v3, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Lcom/motorola/camera/fsm/camera/iFsmLoader;

    iget-object v4, v0, Lcom/motorola/camera/fsm/Transition;->mEndState:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    check-cast v4, Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraFsm;->loadState(Lcom/motorola/camera/fsm/camera/StateKey;)V

    .line 15
    iget-object v3, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/Map;

    iget-object v4, v0, Lcom/motorola/camera/fsm/Transition;->mEndState:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/State;

    if-eqz v3, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Transition \"to\" state:"

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v0, Lcom/motorola/camera/fsm/Transition;->mEndState:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " hasn\'t been loaded!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_7
    :goto_2
    iget-object v4, v3, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    const/4 v5, 0x0

    move-object v6, v5

    .line 18
    :goto_3
    iget-object v7, p1, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    array-length v8, v7

    if-ge v1, v8, :cond_9

    .line 19
    array-length v8, v4

    if-gt v8, v1, :cond_8

    goto :goto_4

    .line 20
    :cond_8
    aget-object v8, v7, v1

    .line 21
    iget-object v9, v3, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    .line 22
    aget-object v9, v9, v1

    if-ne v8, v9, :cond_9

    aget-object v6, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 23
    :cond_9
    :goto_4
    iget-object p1, v0, Lcom/motorola/camera/fsm/Transition;->mEndState:Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    .line 24
    iget-object v1, v0, Lcom/motorola/camera/fsm/Transition;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    if-eqz v1, :cond_a

    .line 25
    iget-object v4, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    invoke-interface {v1, v4, v7, p3}, Lcom/motorola/camera/fsm/FsmRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    if-eqz p1, :cond_c

    move-object v1, p2

    :goto_5
    if-eqz v1, :cond_c

    if-eq v1, v6, :cond_c

    .line 26
    iget-object v4, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 27
    iget-object v7, v1, Lcom/motorola/camera/fsm/State;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    if-eqz v7, :cond_b

    iget-object v8, v1, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-interface {v7, v8, v4, p3}, Lcom/motorola/camera/fsm/FsmRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_b
    iget-object v1, v1, Lcom/motorola/camera/fsm/State;->mParent:Lcom/motorola/camera/fsm/State;

    goto :goto_5

    .line 29
    :cond_c
    iget-object v1, v0, Lcom/motorola/camera/fsm/Transition;->mEndState:Ljava/lang/Object;

    .line 30
    iput-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0, v3, v6}, Lcom/motorola/camera/fsm/Fsm;->findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/State;Lcom/motorola/camera/fsm/State;)I

    move-result v1

    .line 32
    iget-object v4, v3, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    .line 33
    :goto_6
    array-length v7, v4

    if-ge v1, v7, :cond_e

    .line 34
    aget-object v7, v4, v1

    iget-object v8, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 35
    iget-object v9, v7, Lcom/motorola/camera/fsm/State;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    if-eqz v9, :cond_d

    iget-object v7, v7, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-interface {v9, v7, v8, p3}, Lcom/motorola/camera/fsm/FsmRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    if-eqz p1, :cond_10

    .line 36
    invoke-virtual {p0, v3, v6}, Lcom/motorola/camera/fsm/Fsm;->findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/State;Lcom/motorola/camera/fsm/State;)I

    move-result v1

    .line 37
    iget-object v4, v3, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    .line 38
    :goto_7
    array-length v7, v4

    if-ge v1, v7, :cond_10

    .line 39
    aget-object v7, v4, v1

    iget-object v8, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 40
    iget-object v9, v7, Lcom/motorola/camera/fsm/State;->mEntryCode:Lcom/motorola/camera/fsm/FsmRunnable;

    if-eqz v9, :cond_f

    iget-object v7, v7, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-interface {v9, v7, v8, p3}, Lcom/motorola/camera/fsm/FsmRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 41
    :cond_10
    iget-object v1, v0, Lcom/motorola/camera/fsm/Transition;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    if-eqz v1, :cond_11

    .line 42
    iget-object v4, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    invoke-interface {v1, v4, v7, p3}, Lcom/motorola/camera/fsm/FsmRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :cond_11
    iget-boolean v0, v0, Lcom/motorola/camera/fsm/Transition;->mFireChangeEvent:Z

    if-eqz v0, :cond_14

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, p2

    :goto_8
    if-eqz v1, :cond_12

    if-eq v1, v6, :cond_12

    .line 45
    new-instance v4, Landroid/util/Pair;

    iget-object v7, v1, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/ChangeEvent$Type;->EXITING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-direct {v4, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, v1, Lcom/motorola/camera/fsm/State;->mParent:Lcom/motorola/camera/fsm/State;

    goto :goto_8

    .line 47
    :cond_12
    invoke-virtual {p0, v3, v6}, Lcom/motorola/camera/fsm/Fsm;->findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/State;Lcom/motorola/camera/fsm/State;)I

    move-result v1

    .line 48
    iget-object v4, v3, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    .line 49
    :goto_9
    array-length v7, v4

    if-ge v1, v7, :cond_13

    .line 50
    new-instance v7, Landroid/util/Pair;

    aget-object v8, v4, v1

    iget-object v8, v8, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/fsm/ChangeEvent$Type;->ENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 51
    :cond_13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 52
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-virtual {p0, v4, v1}, Lcom/motorola/camera/fsm/Fsm;->fireChangeEvent(Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V

    goto :goto_a

    :cond_14
    if-eqz p1, :cond_16

    :goto_b
    if-eqz p2, :cond_16

    if-eq p2, v6, :cond_16

    .line 53
    iget-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 54
    iget-object v0, p2, Lcom/motorola/camera/fsm/State;->mExitAfterFireChange:Lcom/motorola/camera/fsm/FsmRunnable;

    if-eqz v0, :cond_15

    iget-object v1, p2, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p3}, Lcom/motorola/camera/fsm/FsmRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :cond_15
    iget-object p2, p2, Lcom/motorola/camera/fsm/State;->mParent:Lcom/motorola/camera/fsm/State;

    goto :goto_b

    .line 56
    :cond_16
    iget-boolean p1, v3, Lcom/motorola/camera/fsm/State;->mAutoTransitionState:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    .line 57
    invoke-virtual {p0, p1, v5}, Lcom/motorola/camera/fsm/Fsm;->handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_17
    :goto_c
    move v1, v2

    :cond_18
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
