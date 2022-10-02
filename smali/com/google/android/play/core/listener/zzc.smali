.class public abstract Lcom/google/android/play/core/listener/zzc;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/play/core/appupdate/zzy;

.field public final zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/play/core/listener/StateUpdatedListener<",
            "TStateT;>;>;"
        }
    .end annotation
.end field

.field public final zzc:Landroid/content/IntentFilter;

.field public final zzd:Landroid/content/Context;

.field public zze:Lcom/google/android/play/core/listener/zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/listener/zzb;"
        }
    .end annotation
.end field

.field public volatile zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzy;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    iput-object p1, p0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/appupdate/zzy;

    iput-object p2, p0, Lcom/google/android/play/core/listener/zzc;->zzc:Landroid/content/IntentFilter;

    .line 2
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p3, p1

    .line 3
    :cond_0
    iput-object p3, p0, Lcom/google/android/play/core/listener/zzc;->zzd:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/play/core/listener/zzb;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/play/core/listener/zzb;-><init>(Lcom/google/android/play/core/listener/zzc;)V

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    iget-object v1, p0, Lcom/google/android/play/core/listener/zzc;->zzd:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/play/core/listener/zzc;->zzc:Landroid/content/IntentFilter;

    .line 3
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/play/core/listener/zzc;->zzd:Landroid/content/Context;

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    :cond_2
    return-void
.end method

.method public final declared-synchronized zzi(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStateT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/listener/StateUpdatedListener;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/play/core/listener/StateUpdatedListener;->onStateUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
