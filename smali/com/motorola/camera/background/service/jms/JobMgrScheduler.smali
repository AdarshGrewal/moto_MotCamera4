.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler;
.super Ljava/lang/Object;
.source "JobMgrScheduler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;,
        Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;,
        Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;,
        Lcom/motorola/camera/background/service/jms/JobMgrScheduler$WhenMappings;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final STARTUP_SCHEDULE_DB_DELAY_MS:J

.field public final coProcActors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lcom/motorola/camera/background/service/jms/WorkerMsg;",
            ">;>;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public mCoProcThreadIndexCount:I

.field public final mCoprcMaxThreads:I

.field public final mCoprocRoutineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

.field public mExecutorActor:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lcom/motorola/camera/background/service/jms/ExecutorMsg;",
            ">;"
        }
    .end annotation
.end field

.field public final mJobChannelCapacity:I

.field public mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public mWorkerActor:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lcom/motorola/camera/background/service/jms/WorkerMsg;",
            ">;"
        }
    .end annotation
.end field

.field public parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/RegisteredProcDef;Landroid/content/Context;)V
    .locals 2

    const-string v0, "identity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    const/4 p2, 0x3

    .line 2
    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprcMaxThreads:I

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoProcThreadIndexCount:I

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprocRoutineMap:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/List;

    const/16 v0, 0x64

    .line 6
    iput v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobChannelCapacity:I

    const/4 v0, 0x0

    .line 7
    invoke-static {v0, p2, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    const-wide/16 v0, 0x7d0

    .line 8
    iput-wide v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->STARTUP_SCHEDULE_DB_DELAY_MS:J

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 10
    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    return-void
.end method

.method public static final access$getCoProcCoroutineIndex(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprocRoutineMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprocRoutineMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoProcThreadIndexCount:I

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprcMaxThreads:I

    rem-int v2, v0, v1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 5
    iput v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoProcThreadIndexCount:I

    if-lt v0, v1, :cond_3

    .line 6
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    const-string v1, "getCoProcCoroutineIndex: Using more than expected number of coroutines "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprocRoutineMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final callProcessMsg(IILcom/motorola/camera/background/common/msg/MsgParameters;)V
    .locals 7

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getClientIntf(I)Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v3, p3, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 3
    iget-object v4, p3, Lcom/motorola/camera/background/common/msg/MsgParameters;->taskId:Lcom/motorola/camera/background/common/TaskId;

    .line 4
    iget-object v5, p3, Lcom/motorola/camera/background/common/msg/MsgParameters;->msg:Ljava/lang/String;

    .line 5
    iget-object v6, p3, Lcom/motorola/camera/background/common/msg/MsgParameters;->retCode:Lcom/motorola/camera/background/common/ReturnCode;

    move v2, p1

    .line 6
    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "callProcessMsg, dead object for remote "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final deinitialize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    .line 5
    invoke-static {v3, v2, v1, v2}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/SendChannel;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p0

    invoke-static {p0, v2, v1, v2}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void

    :cond_1
    const-string p0, "mWorkerActor"

    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getClientIntf(I)Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    :goto_0
    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    return-object p0
.end method

.method public final getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lcom/motorola/camera/background/service/jms/ExecutorMsg;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mExecutorActor:Lkotlinx/coroutines/channels/SendChannel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mExecutorActor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final initialize()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/background/service/jms/JobDatabase;-><init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    .line 4
    iget v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobChannelCapacity:I

    const/4 v6, 0x0

    new-instance v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    const/16 v8, 0xc

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mExecutorActor:Lkotlinx/coroutines/channels/SendChannel;

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    .line 7
    iget v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobChannelCapacity:I

    const/4 v6, 0x0

    new-instance v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;

    invoke-direct {v7, p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    const/16 v8, 0xc

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/SendChannel;

    .line 9
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprcMaxThreads:I

    const/4 v2, 0x1

    if-gt v2, v1, :cond_2

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 10
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/List;

    .line 11
    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/CompletableJob;

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 12
    new-instance v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;

    invoke-direct {v10, p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    const/16 v11, 0xc

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v5

    .line 13
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final isCoProcReady(Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isReady()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onStartUp()I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    sget-object v2, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-string v4, "context"

    .line 4
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "time_out"

    const-string v5, "id"

    const-string/jumbo v6, "uri"

    .line 6
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    .line 7
    sget-object v6, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    .line 8
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v6, v1

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    move v6, v8

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_5

    .line 11
    :cond_3
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12
    sget-object v6, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    const-string v6, "cursor"

    .line 13
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    .line 14
    invoke-static {v5, v4, v9, v10}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v6, v9, v2

    if-gez v6, :cond_4

    move v6, v8

    goto :goto_4

    :cond_4
    move v6, v7

    :goto_4
    if-eqz v6, :cond_3

    .line 15
    invoke-static {v5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorCOLUMN_id(Landroid/database/Cursor;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    .line 16
    invoke-static {v5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorCOLUMN_uri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "parse(cursorCOLUMN_uri(cursor))"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v9, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    :goto_5
    if-nez v5, :cond_6

    goto :goto_6

    .line 19
    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_7
    :goto_6
    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->STARTUP_SCHEDULE_DB_DELAY_MS:J

    .line 21
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->scheduleUnfinishedJobRequest(Ljava/lang/Integer;J)I

    move-result p0

    return p0
.end method

.method public final processControlMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 2
    iget-wide v1, v0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 3
    iget-object v3, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    .line 4
    iget v0, v0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 5
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 6
    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_0

    .line 8
    sget-object p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    const-string p1, "executorActor: Invalid msg: "

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    if-eqz v3, :cond_4

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    if-nez v0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iput-boolean v3, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->mCancelPending:Z

    :goto_0
    if-eqz v3, :cond_4

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->transitionAndProcess(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;)V

    .line 14
    :cond_4
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final processRequestMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Object;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez v9, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 2
    :cond_0
    monitor-enter v9

    :try_start_0
    const-string v2, "newJob"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v10, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iget-object v2, v9, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v10, v2, v9}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V

    .line 4
    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 5
    iget-wide v12, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 7
    sget-object v4, Lcom/motorola/camera/background/service/jms/Transaction;->Companion:Lcom/motorola/camera/background/service/jms/Transaction;

    const-wide/16 v42, 0x0

    cmp-long v4, v2, v42

    const-wide v5, 0x7fffffffffffffffL

    if-lez v4, :cond_1

    .line 8
    sget-wide v4, Lcom/motorola/camera/background/service/jms/Transaction;->DEFAULT_TIMEOUT_MS:J

    .line 9
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    move-wide/from16 v38, v4

    goto :goto_0

    :cond_1
    move-wide/from16 v38, v5

    .line 10
    :goto_0
    iget-wide v14, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->timeStamp:J

    .line 11
    invoke-virtual {v10}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->getStateMachine()Lcom/tinder/StateMachine;

    move-result-object v2

    .line 12
    iget-object v2, v2, Lcom/tinder/StateMachine;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "stateRef.get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    .line 15
    sget v2, Lcom/motorola/camera/background/service/jms/JobDatabase;->DEFAULT_NUM_RETRIES:I

    .line 16
    invoke-virtual {v9, v12, v13}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_getJob(J)Lcom/motorola/camera/background/service/jms/Transaction;

    move-result-object v11

    const/16 v16, -0x1

    const/4 v8, 0x1

    if-eqz v11, :cond_4

    .line 17
    iget-object v3, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->retrySource:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    .line 18
    sget-object v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;->COPROC:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    if-ne v3, v4, :cond_2

    .line 19
    iget-wide v3, v11, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    goto :goto_2

    .line 20
    :cond_2
    iget v2, v11, Lcom/motorola/camera/background/service/jms/Transaction;->retryCount:I

    add-int/lit8 v7, v2, -0x1

    .line 21
    iput v7, v11, Lcom/motorola/camera/background/service/jms/Transaction;->retryCount:I

    .line 22
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 23
    new-instance v4, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;

    const/16 v17, 0x0

    move-object v2, v4

    move-object v3, v9

    move-object/from16 v44, v4

    move-wide v4, v12

    move-object/from16 v18, v6

    move v6, v7

    move/from16 v19, v7

    move-object/from16 v7, v18

    move-object/from16 v20, v11

    move v11, v8

    move-object/from16 v8, v17

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    move-object/from16 v3, v44

    invoke-static {v2, v3, v11, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v18

    .line 24
    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, -0x1

    move-wide v4, v2

    move v8, v11

    move/from16 v41, v19

    move-object/from16 v11, v20

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    move/from16 v2, v19

    goto :goto_1

    :cond_4
    move-object/from16 v20, v11

    :goto_1
    const-wide/16 v3, -0x1

    :goto_2
    const/4 v8, 0x0

    move/from16 v41, v2

    move-wide v4, v3

    :goto_3
    if-eqz v11, :cond_6

    cmp-long v2, v4, v42

    if-ltz v2, :cond_5

    goto :goto_4

    :cond_5
    move v2, v8

    move-wide/from16 v44, v12

    goto/16 :goto_7

    .line 25
    :cond_6
    :goto_4
    new-instance v8, Lcom/motorola/camera/background/service/jms/Transaction;

    .line 26
    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 27
    iget v3, v2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 28
    iget v6, v2, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    .line 29
    iget v7, v2, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    move-wide/from16 v17, v14

    .line 30
    iget-wide v14, v2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    move-wide/from16 v19, v14

    .line 31
    iget-wide v14, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 32
    iget v11, v2, Lcom/motorola/camera/background/common/TaskId;->priority:I

    move-wide/from16 v21, v14

    .line 33
    iget-boolean v14, v2, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    .line 34
    iget-object v2, v2, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    .line 35
    iget-object v15, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    if-nez v15, :cond_7

    move/from16 v27, v16

    goto :goto_5

    .line 36
    :cond_7
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v27, v15

    .line 37
    :goto_5
    iget-object v15, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 38
    iget v15, v15, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    move/from16 v16, v14

    .line 39
    iget-object v14, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    .line 40
    sget-object v23, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual/range {v23 .. v23}, Lcom/motorola/camera/background/common/ReturnCode;->getReturnCode()I

    move-result v31

    move/from16 v24, v11

    .line 41
    iget-object v11, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 42
    iget v11, v11, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    move-object/from16 v25, v14

    .line 43
    iget-object v14, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    .line 44
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/camera/background/common/ReturnCode;->getReturnCode()I

    move-result v35

    const/16 v40, 0x1

    const/16 v23, 0x0

    move-object/from16 v34, v14

    move/from16 v28, v16

    move-wide/from16 v16, v17

    move-object/from16 v30, v25

    move-wide/from16 v25, v21

    move-wide/from16 v20, v19

    move/from16 v14, v23

    move/from16 v33, v11

    move-object v11, v8

    move-wide/from16 v44, v12

    move/from16 v29, v15

    move-wide/from16 v15, v16

    move/from16 v17, v3

    move/from16 v18, v6

    move/from16 v19, v7

    move-wide/from16 v22, v25

    move/from16 v25, v28

    move-object/from16 v26, v2

    move/from16 v28, p1

    move/from16 v32, p1

    .line 45
    invoke-direct/range {v11 .. v41}, Lcom/motorola/camera/background/service/jms/Transaction;-><init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V

    cmp-long v2, v4, v42

    if-ltz v2, :cond_8

    const-string/jumbo v2, "transaction"

    .line 46
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 48
    new-instance v12, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;

    const/4 v13, 0x0

    move-object v2, v12

    move-object v3, v9

    move-object v6, v8

    move-object v7, v11

    move-object v14, v8

    move-object v8, v13

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/Transaction;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v12, v2, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-boolean v2, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_6

    :cond_8
    move-object v14, v8

    const-string v2, "job"

    .line 50
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v8, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v9

    move-wide/from16 v4, v44

    move-object v6, v14

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/Transaction;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v8, v2, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object v11, v14

    :goto_7
    if-eqz v2, :cond_9

    .line 52
    iget-object v3, v9, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/Map;

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    invoke-direct {v5, v11, v10}, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;-><init>(Lcom/motorola/camera/background/service/jms/Transaction;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_9
    monitor-exit v9

    :goto_8
    if-eqz v2, :cond_d

    .line 54
    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 55
    iget-wide v2, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 56
    iget-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez v4, :cond_a

    goto :goto_9

    :cond_a
    new-instance v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;

    move/from16 v6, p1

    invoke-direct {v5, v6, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    invoke-virtual {v4, v2, v3, v5}, Lcom/motorola/camera/background/service/jms/JobDatabase;->transitionAndProcess(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;)V

    .line 57
    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-nez v1, :cond_b

    goto :goto_b

    .line 58
    :cond_b
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_a

    :cond_c
    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->pendingJobCount()I

    move-result v0

    :goto_a
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->updateProgress(III)V

    .line 59
    :goto_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 60
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catchall_0
    move-exception v0

    .line 61
    monitor-exit v9

    throw v0
.end method

.method public final processResultMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->Companion:Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;

    .line 2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 3
    sget-object v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/Map;

    .line 4
    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;)V

    invoke-virtual {p0, p3, p4, v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->transitionAndProcess(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;)V

    goto :goto_1

    .line 6
    :cond_2
    sget-object p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    .line 7
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string p1, "Invalid caller: not registered "

    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final scheduleUnfinishedJobRequest(Ljava/lang/Integer;J)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeInvalidJobs(J)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    monitor-enter v0

    if-eqz p1, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->getUnfinishedCoProcJobs(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_1
    move-object v1, p1

    goto :goto_2

    .line 7
    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;

    invoke-direct {v2, v0, p1, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, p1, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->sortRequests(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v0

    goto :goto_1

    :goto_2
    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 11
    new-instance v8, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-wide v3, p2

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;-><init>(JLcom/motorola/camera/background/service/jms/JobMgrScheduler;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move-object v5, v8

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    if-nez v1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    .line 12
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    if-lez p1, :cond_4

    .line 13
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->start()Z

    :cond_4
    return p1

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    throw p0
.end method

.method public final workerProcessControlMsg(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;
    .locals 7

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 2
    iget-wide v0, v0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 3
    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 5
    sget-object p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 7
    iget v0, v0, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "workerProcessControlMsg: Unknown msg code: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_0
    move-object v4, p0

    goto :goto_5

    .line 10
    :cond_0
    sget-object v6, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_2

    move v3, v4

    :cond_2
    :goto_1
    if-eqz v3, :cond_9

    .line 13
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    .line 14
    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->isCoProcReady(Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-interface {v0, v4}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->start(Z)Z

    .line 16
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->isCoProcReady(Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    .line 17
    :cond_5
    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v0

    .line 18
    :goto_3
    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 20
    iget v1, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 21
    iput v1, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    if-nez v0, :cond_6

    goto :goto_4

    .line 22
    :cond_6
    invoke-interface {v0}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 23
    iget v1, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 24
    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 25
    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    move-object v5, v6

    .line 26
    invoke-interface/range {v0 .. v5}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;

    :goto_4
    move-object p0, v6

    goto :goto_0

    .line 27
    :cond_8
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    .line 28
    :cond_9
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    .line 29
    :goto_5
    new-instance p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    .line 30
    iget v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->callerID:I

    .line 31
    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 32
    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    const/4 v5, 0x0

    move-object v0, p0

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/ReturnCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public final workerProcessRequest(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;
    .locals 10

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 2
    iget-wide v0, v0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 3
    sget-object v8, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_d

    .line 6
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    .line 7
    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->isCoProcReady(Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-interface {v0, v4}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->start(Z)Z

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->isCoProcReady(Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    .line 10
    :cond_4
    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v0

    .line 11
    :goto_3
    iget-object v5, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 13
    iget v1, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 14
    iput v1, v5, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez v1, :cond_5

    goto :goto_6

    .line 16
    :cond_5
    iget-wide v6, v5, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 17
    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    if-nez v1, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    iget-boolean v1, v1, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->mCancelPending:Z

    if-ne v1, v4, :cond_7

    move v1, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v3

    :goto_5
    if-nez v1, :cond_8

    move v3, v4

    :cond_8
    :goto_6
    if-eqz v3, :cond_b

    if-nez v0, :cond_9

    goto :goto_7

    .line 20
    :cond_9
    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 21
    iget v3, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 22
    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 23
    iget-object v6, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    move-object v7, v8

    .line 24
    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 25
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    const-string v1, "Binder for coproc is dead, maybe process died?"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 26
    :cond_b
    sget-object v8, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_7

    .line 27
    :cond_c
    sget-object v8, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_7

    .line 28
    :cond_d
    sget-object v8, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_7
    move-object v4, v8

    .line 29
    new-instance p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    .line 30
    iget v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->callerID:I

    .line 31
    sget-object v2, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 32
    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    const/4 v5, 0x0

    move-object v0, p0

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/ReturnCode;Ljava/lang/String;)V

    return-object p0
.end method
