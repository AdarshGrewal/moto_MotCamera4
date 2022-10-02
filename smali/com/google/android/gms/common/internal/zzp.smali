.class public final Lcom/google/android/gms/common/internal/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/common/internal/zzq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzm;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/zzo;

    if-eqz p0, :cond_3

    .line 8
    iget v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    const-string v1, "GmsClientSupervisor"

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzm;->zzb:Ljava/lang/String;

    const-string v3, "null reference"

    .line 13
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v3, "unknown"

    .line 14
    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzo;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 16
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzm;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzo;

    if-eqz v3, :cond_6

    .line 23
    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 24
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25
    iget-boolean v4, v3, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    if-eqz v4, :cond_5

    .line 26
    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 27
    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    .line 28
    iget-object v5, v3, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    .line 29
    invoke-virtual {v4, v2, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 30
    iget-object v5, v4, Lcom/google/android/gms/common/internal/zzq;->zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 31
    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzq;->zzb:Landroid/content/Context;

    .line 32
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 34
    :catch_0
    :goto_0
    :try_start_3
    iput-boolean v1, v3, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    const/4 v1, 0x2

    iput v1, v3, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    .line 35
    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 36
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 37
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_6
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
