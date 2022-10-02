.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Provider;,
        Landroidx/work/Configuration$Builder;
    }
.end annotation


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mInputMergerFactory:Landroidx/work/InputMergerFactory;

.field public final mLoggingLevel:I

.field public final mMaxJobSchedulerId:I

.field public final mMaxSchedulerLimit:I

.field public final mRunnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

.field public final mTaskExecutor:Ljava/util/concurrent/Executor;

.field public final mWorkerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/work/Configuration;->createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/work/Configuration;->createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 4
    sget-object p1, Landroidx/work/WorkerFactory;->TAG:Ljava/lang/String;

    .line 5
    new-instance p1, Landroidx/work/WorkerFactory$1;

    invoke-direct {p1}, Landroidx/work/WorkerFactory$1;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    .line 7
    new-instance p1, Landroidx/work/InputMergerFactory$1;

    invoke-direct {p1}, Landroidx/work/InputMergerFactory$1;-><init>()V

    .line 8
    iput-object p1, p0, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 9
    new-instance p1, Landroidx/work/impl/DefaultRunnableScheduler;

    invoke-direct {p1}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>()V

    iput-object p1, p0, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

    const/4 p1, 0x4

    .line 10
    iput p1, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    const p1, 0x7fffffff

    .line 11
    iput p1, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    const/16 p1, 0x14

    .line 12
    iput p1, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    return-void
.end method


# virtual methods
.method public final createDefaultExecutor(Z)Ljava/util/concurrent/Executor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTaskExecutor"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    new-instance v1, Landroidx/work/Configuration$1;

    invoke-direct {v1, p0, p1}, Landroidx/work/Configuration$1;-><init>(Landroidx/work/Configuration;Z)V

    .line 3
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
