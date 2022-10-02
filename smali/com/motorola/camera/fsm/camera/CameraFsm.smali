.class public Lcom/motorola/camera/fsm/camera/CameraFsm;
.super Ljava/lang/Object;
.source "CameraFsm.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/iCameraFsm;
.implements Lcom/motorola/camera/fsm/camera/iFsmLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/camera/iCameraFsm<",
        "Lcom/motorola/camera/fsm/camera/Trigger;",
        ">;",
        "Lcom/motorola/camera/fsm/camera/iFsmLoader<",
        "Lcom/motorola/camera/fsm/camera/StateKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCameraFsm:Lcom/motorola/camera/fsm/Fsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/Fsm<",
            "Lcom/motorola/camera/fsm/camera/Trigger;",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public final mDelayStates:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/motorola/camera/fsm/camera/StateKey$Key;",
            "Lcom/motorola/camera/fsm/camera/states/iCameraState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/CameraFsm$Builder<",
            "*>;",
            "Lcom/motorola/camera/fsm/camera/iFsmBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/Fsm;

    new-instance v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;-><init>(Lcom/motorola/camera/fsm/camera/iCameraFsm;)V

    .line 4
    invoke-static {}, Lcom/motorola/camera/fsm/camera/StateKey$Key;->values()[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/camera/fsm/Fsm;-><init>(Lcom/motorola/camera/fsm/camera/iFsmLoader;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 5
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/State;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    .line 8
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mDelayStates:Ljava/util/EnumMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 12
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/iFsmBuilder;Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 16
    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public loadState(Lcom/motorola/camera/fsm/camera/StateKey;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object p1, p1, v2

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraFsm$1;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$1;-><init>(Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V

    .line 6
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/State;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Dump ERROR Stack Trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFsm"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mSyncronous:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 7
    iget-object v1, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 8
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/Trigger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    iget-boolean p0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    return p0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 15
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 16
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method
