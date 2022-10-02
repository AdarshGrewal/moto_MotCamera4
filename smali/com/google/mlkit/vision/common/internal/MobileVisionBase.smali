.class public Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DetectionResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation


# static fields
.field public static final zzb:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field public final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final zzd:Lcom/google/mlkit/common/sdkinternal/MLTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mlkit/common/sdkinternal/MLTask<",
            "TDetectionResultT;",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ">;"
        }
    .end annotation
.end field

.field public final zze:Landroidx/transition/ViewGroupOverlayApi18;

.field public final zzf:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MobileVisionBase"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Lcom/google/mlkit/common/sdkinternal/MLTask;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/common/sdkinternal/MLTask<",
            "TDetectionResultT;",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Lcom/google/mlkit/common/sdkinternal/MLTask;

    .line 2
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(I)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Landroidx/transition/ViewGroupOverlayApi18;

    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    .line 3
    iget-object p0, p1, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    sget-object p0, Lcom/google/mlkit/vision/common/internal/zze;->zza:Lcom/google/mlkit/vision/common/internal/zze;

    .line 6
    iget-object v0, v0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzb;

    .line 7
    invoke-virtual {p1, p2, p0, v0}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p0

    sget-object p1, Lcom/google/mlkit/vision/common/internal/zzb;->zza:Lcom/google/mlkit/vision/common/internal/zzb;

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/zzw;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Landroidx/transition/ViewGroupOverlayApi18;

    .line 2
    invoke-virtual {v0}, Landroidx/transition/ViewGroupOverlayApi18;->cancel()V

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Lcom/google/mlkit/common/sdkinternal/MLTask;

    iget-object v2, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    .line 3
    iget-object v3, v0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-object v1, v0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->taskQueue:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    new-instance v3, Lcom/google/mlkit/common/sdkinternal/zzl;

    .line 5
    invoke-direct {v3, v0}, Lcom/google/mlkit/common/sdkinternal/zzl;-><init>(Lcom/google/mlkit/common/sdkinternal/ModelResource;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->submit(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
