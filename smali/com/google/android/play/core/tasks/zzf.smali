.class public final Lcom/google/android/play/core/tasks/zzf;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/tasks/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/zzg<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field public final zza:Ljava/util/concurrent/Executor;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:Lcom/google/android/play/core/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/OnSuccessListener<",
            "-TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/OnSuccessListener<",
            "-TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/zzf;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzf;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zzf;->zzc:Lcom/google/android/play/core/tasks/OnSuccessListener;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/play/core/tasks/zzm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/zzm;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/zzm;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzf;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzf;->zzc:Lcom/google/android/play/core/tasks/OnSuccessListener;

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzf;->zza:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zzk;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzk;-><init>(Lcom/google/android/play/core/tasks/zzf;Lcom/google/android/play/core/tasks/zzm;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
