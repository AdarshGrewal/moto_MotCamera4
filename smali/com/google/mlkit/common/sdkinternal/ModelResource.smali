.class public abstract Lcom/google/mlkit/common/sdkinternal/ModelResource;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"


# instance fields
.field public final taskQueue:Lcom/google/mlkit/common/sdkinternal/TaskQueue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public final zza:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    .line 3
    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->taskQueue:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    return-void
.end method


# virtual methods
.method public callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzw;
    .locals 9
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/tasks/zzb;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/zzb;",
            ")",
            "Lcom/google/android/gms/tasks/zzw;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/zzb;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p0, Lcom/google/android/gms/tasks/zzw;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zze()Z

    return-object p0

    .line 6
    :cond_1
    new-instance v3, Landroidx/transition/ViewGroupOverlayApi18;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(I)V

    .line 7
    new-instance v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    iget-object v0, v3, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzb;

    .line 9
    invoke-direct {v6, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/zzb;)V

    new-instance v7, Lcom/google/mlkit/common/sdkinternal/zzn;

    .line 10
    invoke-direct {v7, p1, p3, v3, v6}, Lcom/google/mlkit/common/sdkinternal/zzn;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/zzb;Landroidx/transition/ViewGroupOverlayApi18;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->taskQueue:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    new-instance v8, Lcom/google/mlkit/common/sdkinternal/zzm;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    move-object v5, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/common/sdkinternal/zzm;-><init>(Lcom/google/mlkit/common/sdkinternal/ModelResource;Lcom/google/android/gms/tasks/zzb;Landroidx/transition/ViewGroupOverlayApi18;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v7, v8}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->submit(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 12
    iget-object p0, v6, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    return-object p0
.end method
