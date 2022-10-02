.class public final Lcom/motorola/camera/utility/SynchronizedRunnable;
.super Ljava/lang/Object;
.source "SynchronizedRunnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final lock:Ljava/lang/Object;

.field public final runnable:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->lock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->runnable:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->lock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->runnable:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->$r8$classId:I

    const-string v0, "lock"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->lock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->runnable:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->lock:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object p0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->runnable:Ljava/lang/Object;

    check-cast p0, Landroid/app/job/JobParameters;

    sget v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->$r8$clinit:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->runnable:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->lock:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/OptionalProvider;

    iget-object p0, p0, Lcom/motorola/camera/utility/SynchronizedRunnable;->runnable:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inject/Provider;

    sget v1, Lcom/google/firebase/components/ComponentRuntime;->$r8$clinit:I

    .line 7
    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    sget-object v2, Lcom/google/firebase/components/OptionalProvider$$Lambda$5;->instance:Lcom/google/firebase/components/OptionalProvider$$Lambda$5;

    if-ne v1, v2, :cond_0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 11
    iput-object p0, v0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    check-cast v1, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p0

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
