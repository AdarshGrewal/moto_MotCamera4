.class public abstract Lcom/google/android/play/core/internal/zzx;
.super Lcom/google/android/play/core/internal/zzl;
.source "com.google.android.play:core@@1.10.2"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/play/core/internal/zzl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p4, :cond_5

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    return v1

    .line 1
    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/play/core/internal/zzm;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    .line 4
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 5
    instance-of p3, p2, Lcom/google/android/play/core/internal/zzz;

    if-eqz p3, :cond_2

    .line 6
    move-object p3, p2

    check-cast p3, Lcom/google/android/play/core/internal/zzz;

    goto :goto_0

    :cond_2
    new-instance p3, Lcom/google/android/play/core/internal/zzz;

    .line 7
    invoke-direct {p3, p1}, Lcom/google/android/play/core/internal/zzz;-><init>(Landroid/os/IBinder;)V

    .line 8
    :goto_0
    check-cast p0, Lcom/google/android/play/core/assetpacks/zzb;

    .line 9
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p4, "clearAssetPackStorage AIDL call"

    invoke-virtual {p1, p4, p2}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Lcom/google/android/play/core/internal/zzch;->zzb(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    .line 11
    invoke-static {p1}, Lcom/google/android/play/core/internal/zzch;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzd:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzL()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzQ(Ljava/io/File;)Z

    .line 14
    new-instance p0, Landroid/os/Bundle;

    .line 15
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {p3}, Lcom/google/android/play/core/internal/zzk;->zza()Landroid/os/Parcel;

    move-result-object p1

    .line 17
    sget p2, Lcom/google/android/play/core/internal/zzm;->$r8$clinit:I

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p0, 0x4

    .line 20
    invoke-virtual {p3, p0, p1}, Lcom/google/android/play/core/internal/zzk;->zzb(ILandroid/os/Parcel;)V

    goto/16 :goto_5

    .line 21
    :cond_4
    :goto_1
    new-instance p0, Landroid/os/Bundle;

    .line 22
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, p0}, Lcom/google/android/play/core/internal/zzz;->zzd(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 23
    :cond_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/core/internal/zzm;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    const-string p3, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    .line 25
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 26
    instance-of v2, p3, Lcom/google/android/play/core/internal/zzz;

    if-eqz v2, :cond_7

    .line 27
    check-cast p3, Lcom/google/android/play/core/internal/zzz;

    goto :goto_2

    :cond_7
    new-instance p3, Lcom/google/android/play/core/internal/zzz;

    .line 28
    invoke-direct {p3, p2}, Lcom/google/android/play/core/internal/zzz;-><init>(Landroid/os/IBinder;)V

    .line 29
    :goto_2
    check-cast p0, Lcom/google/android/play/core/assetpacks/zzb;

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    const-string/jumbo v2, "updateServiceState AIDL call"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v2, v3}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    .line 32
    invoke-static {p2}, Lcom/google/android/play/core/internal/zzch;->zzb(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    .line 33
    invoke-static {p2}, Lcom/google/android/play/core/internal/zzch;->zza(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_4

    :cond_8
    const-string p2, "action_type"

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    .line 35
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/zzci;->zzb:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/zzci;->zzb:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne p2, v0, :cond_e

    :try_start_2
    const-string p2, "notification_channel_name"

    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez p2, :cond_9

    :try_start_3
    const-string p2, "File downloads by Play"

    .line 39
    :cond_9
    new-instance p3, Landroid/app/NotificationChannel;

    const-string v2, "playcore-assetpacks-service-notification-channel"

    invoke-direct {p3, v2, p2, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zza:Landroid/app/NotificationManager;

    .line 40
    invoke-virtual {p2, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    .line 41
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zze:Lcom/google/android/play/core/assetpacks/zzl;

    .line 42
    invoke-virtual {p2, v0}, Lcom/google/android/play/core/assetpacks/zzl;->zzg(Z)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    const-string p3, "notification_title"

    .line 43
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "notification_subtext"

    .line 44
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v2, "notification_timeout"

    const-wide/32 v3, 0x927c0

    .line 45
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "notification_on_click_intent"

    .line 46
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 47
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    const-string v7, "playcore-assetpacks-service-notification-channel"

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5, v2, v3}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 49
    instance-of v3, v4, Landroid/app/PendingIntent;

    if-eqz v3, :cond_a

    .line 50
    check-cast v4, Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_a
    const v3, 0x1080081

    .line 51
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    if-nez p3, :cond_b

    const-string p3, "Downloading additional file"

    .line 53
    :cond_b
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    if-nez p4, :cond_c

    const-string p4, "Transferring"

    .line 54
    :cond_c
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string p3, "notification_color"

    .line 55
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_d

    .line 56
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 57
    :cond_d
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 58
    iput-object p1, p2, Lcom/google/android/play/core/assetpacks/zzci;->zze:Landroid/app/Notification;

    .line 59
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    const-class p3, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

    .line 60
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    .line 61
    invoke-virtual {p2, p1, p3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 62
    :try_start_5
    monitor-exit p0

    throw p1

    :cond_e
    if-ne p2, p4, :cond_10

    .line 63
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zze:Lcom/google/android/play/core/assetpacks/zzl;

    .line 64
    invoke-virtual {p1, v1}, Lcom/google/android/play/core/assetpacks/zzl;->zzg(Z)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    .line 65
    iget-object p2, p1, Lcom/google/android/play/core/assetpacks/zzci;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const-string p3, "Stopping foreground installation service."

    new-array p4, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Lcom/google/android/play/core/appupdate/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p2, p1, Lcom/google/android/play/core/assetpacks/zzci;->zzc:Landroid/content/Context;

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p2, p1, Lcom/google/android/play/core/assetpacks/zzci;->zzd:Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

    if-eqz p2, :cond_f

    .line 67
    monitor-enter p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 68
    :try_start_6
    invoke-virtual {p2, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 69
    invoke-virtual {p2}, Landroid/app/Service;->stopSelf()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p2

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p2

    throw p1

    .line 70
    :cond_f
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzci;->zzd()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 71
    monitor-exit p0

    goto :goto_5

    :cond_10
    :try_start_8
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    new-array p4, v0, [Ljava/lang/Object;

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    const-string p2, "Unknown action type received: %d"

    invoke-virtual {p1, p2, p4}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Landroid/os/Bundle;

    .line 73
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, p1}, Lcom/google/android/play/core/internal/zzz;->zzd(Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit p0

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 74
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1

    .line 75
    :cond_11
    :goto_4
    new-instance p1, Landroid/os/Bundle;

    .line 76
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, p1}, Lcom/google/android/play/core/internal/zzz;->zzd(Landroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit p0

    :goto_5
    return v0

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
