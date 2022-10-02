.class public final Lcom/google/android/play/core/tasks/zzi;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/play/core/tasks/zzm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/zzm<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/tasks/zzm;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzm;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/Exception;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/zzh;->zzb(Lcom/google/android/play/core/tasks/zzm;)V

    move p0, v1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final zze(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzd:Ljava/lang/Object;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/zzh;->zzb(Lcom/google/android/play/core/tasks/zzm;)V

    move p0, v1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
