.class public final Lcom/google/android/play/core/internal/zzao;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/internal/zzao;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/core/internal/zzao;->zza:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/zzar;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/internal/zzao;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/internal/zzao;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6

    iget v0, p0, Lcom/google/android/play/core/internal/zzao;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/internal/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 2
    iget-object v2, v0, Lcom/google/android/play/core/internal/zzas;->zzj:Lcom/google/android/play/core/internal/zzan;

    .line 3
    iget-object v3, p0, Lcom/google/android/play/core/internal/zzao;->zza:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/google/android/play/core/internal/zzan;->zza(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 4
    iput-object v2, v0, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 5
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/internal/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 6
    iget-object v2, v0, Lcom/google/android/play/core/internal/zzas;->zzc:Lcom/google/android/play/core/appupdate/zzy;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "linkToDeath"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object v2, v0, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 7
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/play/core/internal/zzas;->zzl:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzas;->zzc:Lcom/google/android/play/core/appupdate/zzy;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "linkToDeath failed"

    .line 8
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/internal/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 10
    iput-boolean v1, v0, Lcom/google/android/play/core/internal/zzas;->zzh:Z

    .line 11
    iget-object v0, v0, Lcom/google/android/play/core/internal/zzas;->zze:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 13
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/internal/zzar;

    iget-object p0, p0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 14
    iget-object p0, p0, Lcom/google/android/play/core/internal/zzas;->zze:Ljava/util/List;

    .line 15
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 16
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzaw;

    .line 17
    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/zzaw;->zzg:Lcom/google/android/play/core/internal/zzas;

    .line 18
    iget-object v2, v2, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 19
    check-cast v2, Lcom/google/android/play/core/internal/zzu;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzaw;

    .line 20
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzc:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzA()Landroid/os/Bundle;

    move-result-object v3

    .line 22
    new-instance v4, Lcom/google/android/play/core/assetpacks/zzap;

    iget-object v5, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object p0, p0, Lcom/google/android/play/core/internal/zzao;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v4, v5, p0}, Lcom/google/android/play/core/assetpacks/zzap;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/play/core/internal/zzu;->zzf(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 23
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "keepAlive"

    .line 24
    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
