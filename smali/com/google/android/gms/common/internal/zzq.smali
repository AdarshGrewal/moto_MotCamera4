.class public final Lcom/google/android/gms/common/internal/zzq;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field public final zza:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/common/internal/zzm;",
            "Lcom/google/android/gms/common/internal/zzo;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "connectionStatus"
    .end annotation
.end field

.field public final zzb:Landroid/content/Context;

.field public final zzc:Landroid/os/Handler;

.field public final zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field public final zze:J

.field public final zzf:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zzb:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/common/zzh;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/common/internal/zzp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/zzp;-><init>(Lcom/google/android/gms/common/internal/zzq;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/common/zzh;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    .line 4
    sget-object p1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/common/stats/ConnectionTracker;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 6
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    const-string v0, "null reference"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzq;->zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzq;->zze:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzq;->zzf:J

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/internal/zzm;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/zzo;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/internal/zzo;-><init>(Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/internal/zzm;)V

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 5
    invoke-interface {v2, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/zzo;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 10
    iget-object p0, v1, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 11
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 12
    iget-object p0, v1, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 13
    invoke-interface {p0, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget p0, v1, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/zzo;->zza(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p0, v1, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 17
    iget-object p1, v1, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    .line 18
    check-cast p2, Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/common/internal/zze;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 19
    :goto_0
    iget-boolean p0, v1, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    .line 20
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x51

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
