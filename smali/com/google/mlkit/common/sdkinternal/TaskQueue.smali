.class public Lcom/google/mlkit/common/sdkinternal/TaskQueue;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"


# instance fields
.field public final zza:Ljava/lang/Object;

.field public zzb:Z

.field public final zzc:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/mlkit/common/sdkinternal/zzr;",
            ">;"
        }
    .end annotation
.end field

.field public final zzd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public submit(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzb:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc:Ljava/util/Queue;

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzr;

    .line 1
    invoke-direct {v1, p1, p2}, Lcom/google/mlkit/common/sdkinternal/zzr;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzb:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/zzm;

    .line 5
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/tasks/zzm;-><init>(Lcom/google/mlkit/common/sdkinternal/TaskQueue;Ljava/lang/Runnable;)V

    .line 6
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc:Ljava/util/Queue;

    .line 1
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzb:Z

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc:Ljava/util/Queue;

    .line 3
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/zzr;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzr;->zza:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Lcom/google/mlkit/common/sdkinternal/zzr;->zzb:Ljava/lang/Runnable;

    .line 6
    new-instance v2, Lcom/google/android/gms/tasks/zzm;

    .line 7
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/tasks/zzm;-><init>(Lcom/google/mlkit/common/sdkinternal/TaskQueue;Ljava/lang/Runnable;)V

    .line 8
    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
