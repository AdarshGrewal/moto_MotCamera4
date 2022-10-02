.class public final Lcom/google/android/play/core/appupdate/zzm;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Lcom/google/android/play/core/tasks/zzi;

.field public final synthetic zzb:Ljava/lang/Object;

.field public final synthetic zzc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzm;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Lcom/google/android/play/core/tasks/zzi;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;Ljava/util/Map;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzm;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 7

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzm;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/play/core/appupdate/zzq;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 2
    iget-object v2, v2, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 3
    check-cast v2, Lcom/google/android/play/core/internal/zzp;

    check-cast v0, Lcom/google/android/play/core/appupdate/zzq;

    .line 4
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzq;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/play/core/appupdate/zzq;->zzi()Landroid/os/Bundle;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/google/android/play/core/appupdate/zzo;

    iget-object v5, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/play/core/appupdate/zzq;

    iget-object v6, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/appupdate/zzo;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;)V

    .line 7
    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/play/core/internal/zzp;->zzc(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v2, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    iget-object v4, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "completeUpdate(%s)"

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Lcom/google/android/play/core/tasks/zzi;

    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    :goto_0
    return-void

    .line 11
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzaw;

    .line 12
    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 13
    iget-object v2, v2, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 14
    check-cast v2, Lcom/google/android/play/core/internal/zzu;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzaw;

    .line 15
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzc:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    .line 17
    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/zzaw;->zzn(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/zzao;

    iget-object v5, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object v6, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/zzao;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    .line 18
    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/play/core/internal/zzu;->zze(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 19
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "syncPacks"

    .line 20
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Lcom/google/android/play/core/tasks/zzi;

    new-instance v1, Ljava/lang/RuntimeException;

    .line 21
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
