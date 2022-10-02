.class public final Lcom/google/android/play/core/appupdate/zzf;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/appupdate/AppUpdateManager;


# instance fields
.field public final zza:Lcom/google/android/play/core/appupdate/zzq;

.field public final zzb:Lcom/google/android/play/core/appupdate/zzb;

.field public final zzc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/appupdate/zzb;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzf;->zza:Lcom/google/android/play/core/appupdate/zzq;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzf;->zzb:Lcom/google/android/play/core/appupdate/zzb;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzf;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final completeUpdate()Lcom/google/android/play/core/tasks/zzm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/zzm;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzf;->zza:Lcom/google/android/play/core/appupdate/zzq;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzf;->zzc:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzq;->zzj()Lcom/google/android/play/core/tasks/zzm;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "completeUpdate(%s)"

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lcom/google/android/play/core/tasks/zzi;

    .line 4
    invoke-direct {v1}, Lcom/google/android/play/core/tasks/zzi;-><init>()V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    new-instance v3, Lcom/google/android/play/core/appupdate/zzm;

    .line 5
    invoke-direct {v3, v0, v1, v1, p0}, Lcom/google/android/play/core/appupdate/zzm;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/android/play/core/internal/zzas;->zzq(Lcom/google/android/play/core/internal/zzah;Lcom/google/android/play/core/tasks/zzi;)V

    .line 6
    iget-object p0, v1, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    :goto_0
    return-object p0
.end method

.method public final getAppUpdateInfo()Lcom/google/android/play/core/tasks/zzm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/zzm;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzf;->zza:Lcom/google/android/play/core/appupdate/zzq;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzf;->zzc:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzq;->zzj()Lcom/google/android/play/core/tasks/zzm;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "requestUpdateInfo(%s)"

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lcom/google/android/play/core/tasks/zzi;

    .line 4
    invoke-direct {v1}, Lcom/google/android/play/core/tasks/zzi;-><init>()V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    new-instance v3, Lcom/google/android/play/core/appupdate/zzl;

    .line 5
    invoke-direct {v3, v0, v1, p0, v1}, Lcom/google/android/play/core/appupdate/zzl;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;Lcom/google/android/play/core/tasks/zzi;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/android/play/core/internal/zzas;->zzq(Lcom/google/android/play/core/internal/zzah;Lcom/google/android/play/core/tasks/zzi;)V

    .line 6
    iget-object p0, v1, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    :goto_0
    return-object p0
.end method

.method public final declared-synchronized registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzf;->zzb:Lcom/google/android/play/core/appupdate/zzb;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, v0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string v2, "registerListener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    iget-object v1, v0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->defaultOptions(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p3, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zza(Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzo:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iput-boolean v1, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzo:Z

    .line 5
    invoke-virtual {p1, p0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zza(Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p3

    move v4, p4

    .line 6
    invoke-virtual/range {v2 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    move p2, v1

    :cond_3
    :goto_1
    return p2
.end method

.method public final declared-synchronized unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzf;->zzb:Lcom/google/android/play/core/appupdate/zzb;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, v0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string/jumbo v2, "unregisterListener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    iget-object v1, v0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
