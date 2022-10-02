.class public final Lcom/google/android/gms/common/internal/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/common/internal/zzq;

.field public final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ServiceConnection;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public zzc:I

.field public zzd:Z

.field public zze:Landroid/os/IBinder;

.field public final zzf:Lcom/google/android/gms/common/internal/zzm;

.field public zzg:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/internal/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    new-instance p1, Ljava/util/HashMap;

    .line 1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 7
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 7
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 8

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/common/internal/zzq;->zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzq;->zzb:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    const-string v2, "ConnectionStatusConfig"

    .line 4
    iget-object v3, v1, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lcom/google/android/gms/common/internal/zzm;->zze:Z

    if-eqz v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    .line 5
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v1, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    const-string v6, "serviceActionBundleKey"

    .line 6
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/common/internal/zzm;->zzf:Landroid/net/Uri;

    const-string v7, "serviceIntentCall"

    .line 8
    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 9
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x22

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Dynamic intent resolution failed: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    :goto_0
    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "serviceResponseIntentKey"

    .line 10
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/Intent;

    :goto_1
    if-nez v4, :cond_2

    .line 11
    iget-object v3, v1, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Dynamic lookup for intent failed for action: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 13
    :cond_1
    new-instance v3, Ljava/lang/String;

    .line 14
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    .line 15
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    .line 16
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 17
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    :goto_3
    move-object v1, v4

    .line 18
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    .line 19
    iget v2, v2, Lcom/google/android/gms/common/internal/zzm;->zzd:I

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_5

    goto :goto_5

    .line 22
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.google.android.gms"

    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v4

    .line 25
    iget-object v4, v4, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zza:Landroid/content/Context;

    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 27
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v4, 0x200000

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    const-string p1, "ConnectionTracker"

    const-string v0, "Attempted to bind to a service in a STOPPED package."

    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 29
    :catch_1
    :cond_6
    :goto_5
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 30
    :goto_6
    iput-boolean v3, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    if-eqz v3, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 31
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    const/4 v1, 0x1

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    .line 35
    iget-wide v1, p0, Lcom/google/android/gms/common/internal/zzq;->zzf:J

    .line 36
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_7
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    .line 37
    iget-object v0, p1, Lcom/google/android/gms/common/internal/zzq;->zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 38
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzq;->zzb:Landroid/content/Context;

    .line 39
    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
