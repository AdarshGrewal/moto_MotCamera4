.class public final Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;
.super Ljms/IJobMgrService$Stub;
.source "JobMgrServiceImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;,
        Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;,
        Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$WatchDogTask;,
        Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobMgrServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobMgrServiceImpl.kt\ncom/motorola/camera/background/service/jms/JobMgrServiceImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,577:1\n477#2,7:578\n*S KotlinDebug\n*F\n+ 1 JobMgrServiceImpl.kt\ncom/motorola/camera/background/service/jms/JobMgrServiceImpl\n*L\n517#1:578,7\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

.field public static final TAG:Ljava/lang/String;

.field public static final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;


# instance fields
.field public actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

.field public final context:Landroid/content/Context;

.field public mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;",
            ">;"
        }
    .end annotation
.end field

.field public mCoProcMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/background/common/RegisteredProcDef;",
            "Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;",
            ">;"
        }
    .end annotation
.end field

.field public mProduct:Ljava/lang/String;

.field public final mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

.field public mSchedulerMsgChannel:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lcom/motorola/camera/background/service/jms/ExecutorMsg;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I

.field public mStaticConfig:[B

.field public final messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->PROCESS_MANAGER_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljms/IJobMgrService$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    const/4 p2, 0x2

    .line 3
    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    .line 6
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    .line 7
    new-instance p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-direct {p2, p0, v0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/RegisteredProcDef;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 8
    new-instance p1, Lcom/motorola/camera/background/common/SimpleWatchDog;

    const-wide/16 v0, 0x7530

    new-instance p2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$WatchDogTask;

    invoke-direct {p2, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$WatchDogTask;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V

    const-string v2, "JMS Watchdog"

    invoke-direct {p1, v2, v0, v1, p2}, Lcom/motorola/camera/background/common/SimpleWatchDog;-><init>(Ljava/lang/String;JLjava/lang/Runnable;)V

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    return-void
.end method

.method public static final access$checkWatchDog(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Lcom/motorola/camera/background/common/SimpleWatchDog;->isTimerCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Lcom/motorola/camera/background/common/SimpleWatchDog;

    const-wide/16 v1, 0x7530

    new-instance v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$WatchDogTask;

    invoke-direct {v3, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$WatchDogTask;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V

    const-string v4, "JMS Watchdog"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/motorola/camera/background/common/SimpleWatchDog;-><init>(Ljava/lang/String;JLjava/lang/Runnable;)V

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/SimpleWatchDog;->reset()V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->scheduleKeepAliveJob()V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0
.end method

.method public static final access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    .line 5
    iget-object v3, v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->type:Lcom/motorola/camera/background/common/ClientType;

    .line 7
    sget-object v4, Lcom/motorola/camera/background/common/ClientType;->COPROC:Lcom/motorola/camera/background/common/ClientType;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_5

    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1, p1}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isMsgTypeSupported(Lcom/motorola/camera/background/common/msg/MsgType;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-object p0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    goto :goto_3

    .line 14
    :cond_4
    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findValidCoProc: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".id does not support "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method


# virtual methods
.method public final cancelKeepAliveJob()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$3;

    const/4 v1, 0x1

    const-string v2, "JobMgrKeepAliveJob"

    invoke-direct {v0, p0, v2, v1}, Landroidx/work/impl/utils/CancelWorkRunnable$3;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V

    .line 5
    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    check-cast p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 6
    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanUp()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->cleanUp()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized deinitialize()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/SimpleWatchDog;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/SimpleWatchDog;->timerCancel()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->pendingJobCount()I

    move-result v2

    :goto_0
    if-gtz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->cancelKeepAliveJob()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->deinitialize()V

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->deinitializeCoProcs()V

    .line 10
    iput v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_2
    :try_start_1
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "deinitialize: service already deinitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final deinitializeCoProcs()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 3
    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4
    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    if-nez v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v4, v4, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-nez v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v4}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->stop()V

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eq v3, v0, :cond_5

    .line 7
    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deinitializeCoProcs, deinit count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    :goto_0
    return-object p0
.end method

.method public final getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    return p0
.end method

.method public declared-synchronized initialize(Ljava/lang/String;[B)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "staticConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mProduct:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mStaticConfig:[B

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->scheduleKeepAliveJob()V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->initialize()V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mSchedulerMsgChannel:Lkotlinx/coroutines/channels/SendChannel;

    .line 9
    iput v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mProduct:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mStaticConfig:[B

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getBgServiceMlModels()Landroid/os/Bundle;

    move-result-object p2

    .line 12
    sget-object v8, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    .line 13
    sget-object v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, v8

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->registerCoProc(Lcom/motorola/camera/background/common/RegisteredProcDef;Ljava/lang/String;[BLcom/motorola/camera/background/common/Priority;Landroid/os/Bundle;)I

    .line 14
    sget-object v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->SAVE_IMAGE_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, v8

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->registerCoProc(Lcom/motorola/camera/background/common/RegisteredProcDef;Ljava/lang/String;[BLcom/motorola/camera/background/common/Priority;Landroid/os/Bundle;)I

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->onStartUp()I

    move-result p1

    if-gtz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->cancelKeepAliveJob()V

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-gtz p1, :cond_1

    .line 18
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->PENDING_JOBS:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    const-string p1, "mStaticConfig"

    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "mProduct"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_4
    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "initialize: service already initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V

    return-object v0
.end method

.method public numPendingJobs()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->pendingJobCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public declared-synchronized registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)I
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "procIntf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    .line 4
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    monitor-exit p0

    return v2

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    sget-object v7, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;-><init>(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;Lcom/motorola/camera/background/common/Priority;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return p3

    .line 8
    :cond_2
    :try_start_2
    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "registerClient: service not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final registerCoProc(Lcom/motorola/camera/background/common/RegisteredProcDef;Ljava/lang/String;[BLcom/motorola/camera/background/common/Priority;Landroid/os/Bundle;)I
    .locals 13

    move-object v9, p0

    move-object v10, p1

    .line 1
    iget v0, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v11, 0x1

    const/4 v1, -0x1

    if-ne v0, v11, :cond_4

    .line 2
    iget-object v0, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    if-ne v2, v10, :cond_0

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 5
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerCoproc: Invalid coproc "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    new-instance v12, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    iget-object v2, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    sget-object v4, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v5, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    invoke-direct {v5, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Landroid/content/Context;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Ljava/lang/String;[BLandroid/os/Bundle;)V

    goto :goto_0

    .line 7
    :cond_3
    new-instance v12, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;

    iget-object v1, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    sget-object v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v4, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    invoke-direct {v4, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V

    move-object v0, v12

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;-><init>(Landroid/content/Context;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Ljms/IJobMgrService;)V

    .line 8
    :goto_0
    iget-object v0, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/Map;

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-direct {v1, p1, v2, v12, v3}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;-><init>(Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;Lcom/motorola/camera/background/common/Priority;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v12, v11}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->start(Z)Z

    const/4 v0, 0x0

    return v0

    .line 10
    :cond_4
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerCoProc: service not initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final scheduleKeepAliveJob()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lcom/motorola/camera/background/service/jms/JobMgrKeepAliveJob;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    iget-object v2, v0, Landroidx/work/WorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    sub-long/2addr v3, v1

    iget-object v1, v0, Landroidx/work/WorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-wide v1, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    .line 6
    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v2

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 11
    new-instance p0, Landroidx/work/impl/WorkContinuationImpl;

    const/4 v6, 0x0

    const-string v3, "JobMgrKeepAliveJob"

    move-object v1, p0

    .line 12
    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 13
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/Operation;

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "beginUniqueWork needs at least one OneTimeWorkRequest."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized setPriority(ILcom/motorola/camera/background/common/Priority;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "priority"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iput-object p2, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    sget-object p2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "setPriority: unknown id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "setPriority: service not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterClient(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterClient: unknown id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unregisterClient: service not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateProgress(III)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 2
    iget-object p0, v1, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-boolean v0, v1, Lcom/motorola/camera/background/service/jms/JobMgrService;->mForegroundService:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v1, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    .line 5
    sget-object v2, Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;->INITIALIZED:Lcom/motorola/camera/background/service/jms/JobMgrService$STATE;

    if-ne v0, v2, :cond_0

    .line 6
    iget-boolean v0, v1, Lcom/motorola/camera/background/service/jms/JobMgrService;->mIsServiceRunning:Z

    if-eqz v0, :cond_0

    .line 7
    new-instance v6, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;IIILkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p2, v6, p1, p2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
