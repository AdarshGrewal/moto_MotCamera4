.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzat;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 3
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 3
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isShutdown()Z
    .locals 0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p0

    return p0
.end method

.method public final isTerminated()Z
    .locals 0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    return p0
.end method

.method public final shutdown()V
    .locals 0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 3
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 5
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 2
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
