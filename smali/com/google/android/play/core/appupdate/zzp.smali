.class public final Lcom/google/android/play/core/appupdate/zzp;
.super Lcom/google/android/play/core/appupdate/zzn;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/appupdate/zzn<",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic zzd:Lcom/google/android/play/core/appupdate/zzq;

.field public final zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/zzi<",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzp;->zzd:Lcom/google/android/play/core/appupdate/zzq;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzy;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/zzy;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/appupdate/zzn;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/appupdate/zzy;Lcom/google/android/play/core/tasks/zzi;)V

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzp;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/os/Bundle;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzn;->zzc:Lcom/google/android/play/core/appupdate/zzq;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {v2, v3}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzn;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "onRequestInfo"

    .line 2
    invoke-virtual {v2, v5, v4}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "error.code"

    const/4 v4, -0x2

    .line 3
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    new-instance v5, Lcom/google/android/play/core/install/InstallException;

    .line 5
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 6
    invoke-direct {v5, v1, v3}, Lcom/google/android/play/core/install/InstallException;-><init>(II)V

    invoke-virtual {v0, v5}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    iget-object v4, v0, Lcom/google/android/play/core/appupdate/zzp;->zzd:Lcom/google/android/play/core/appupdate/zzq;

    iget-object v6, v0, Lcom/google/android/play/core/appupdate/zzp;->zze:Ljava/lang/String;

    const/4 v0, -0x1

    const-string/jumbo v5, "version.code"

    .line 7
    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v5, "update.availability"

    .line 8
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v5, "install.status"

    .line 9
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v5, "client.version.staleness"

    .line 10
    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v10, v0

    const-string v0, "in.app.update.priority"

    .line 12
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "bytes.downloaded"

    .line 13
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string/jumbo v0, "total.bytes.to.download"

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v0, "additional.size.required"

    .line 15
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    iget-object v0, v4, Lcom/google/android/play/core/appupdate/zzq;->zzf:Lcom/google/android/play/core/appupdate/zzs;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzs;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v4, "assetpacks"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-static {v3}, Lcom/google/android/play/core/appupdate/zzs;->zzb(Ljava/io/File;)J

    move-result-wide v18

    const-string v0, "blocking.intent"

    .line 19
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/PendingIntent;

    const-string v0, "nonblocking.intent"

    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    const-string v0, "blocking.destructive.intent"

    .line 21
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/PendingIntent;

    const-string v0, "nonblocking.destructive.intent"

    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/PendingIntent;

    .line 23
    new-instance v0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-object v5, v0

    invoke-direct/range {v5 .. v23}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;-><init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 24
    invoke-virtual {v2, v0}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
