.class public final Lcom/google/android/play/core/appupdate/zzl;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Lcom/google/android/play/core/tasks/zzi;

.field public final synthetic zzc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzl;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzl;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzl;->zza:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzl;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;Ljava/util/List;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzl;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzl;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzl;->zza:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzl;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 9

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzl;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzl;->zzc:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/play/core/appupdate/zzq;

    iget-object v3, v3, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 2
    iget-object v3, v3, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 3
    check-cast v3, Lcom/google/android/play/core/internal/zzp;

    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/appupdate/zzq;

    .line 4
    iget-object v4, v4, Lcom/google/android/play/core/appupdate/zzq;->zzd:Ljava/lang/String;

    .line 5
    check-cast v0, Lcom/google/android/play/core/appupdate/zzq;

    iget-object v5, p0, Lcom/google/android/play/core/appupdate/zzl;->zza:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-static {v0, v5}, Lcom/google/android/play/core/appupdate/zzq;->zzb(Lcom/google/android/play/core/appupdate/zzq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v5, Lcom/google/android/play/core/appupdate/zzp;

    iget-object v6, p0, Lcom/google/android/play/core/appupdate/zzl;->zzc:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/play/core/appupdate/zzq;

    iget-object v7, p0, Lcom/google/android/play/core/appupdate/zzl;->zzb:Lcom/google/android/play/core/tasks/zzi;

    iget-object v8, p0, Lcom/google/android/play/core/appupdate/zzl;->zza:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/play/core/appupdate/zzp;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;)V

    .line 7
    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/play/core/internal/zzp;->zzd(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v3, Lcom/google/android/play/core/appupdate/zzq;->zzb:Lcom/google/android/play/core/appupdate/zzy;

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    iget-object v4, p0, Lcom/google/android/play/core/appupdate/zzl;->zza:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v1, "requestUpdateInfo(%s)"

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/play/core/appupdate/zzy;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzl;->zzb:Lcom/google/android/play/core/tasks/zzi;

    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    :goto_0
    return-void

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzl;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    sget-object v3, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Landroid/os/Bundle;

    .line 14
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "module_name"

    .line 15
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzl;->zzc:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzaw;

    .line 18
    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 19
    iget-object v4, v4, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 20
    check-cast v4, Lcom/google/android/play/core/internal/zzu;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzaw;

    .line 21
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzc:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzA()Landroid/os/Bundle;

    move-result-object v5

    .line 23
    new-instance v6, Lcom/google/android/play/core/assetpacks/zzam;

    iget-object v7, p0, Lcom/google/android/play/core/appupdate/zzl;->zzc:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object v8, p0, Lcom/google/android/play/core/appupdate/zzl;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v6, v7, v8}, Lcom/google/android/play/core/assetpacks/zzam;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    .line 24
    invoke-interface {v4, v0, v3, v5, v6}, Lcom/google/android/play/core/internal/zzu;->zzc(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 25
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzl;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    aput-object p0, v2, v1

    const-string p0, "cancelDownloads(%s)"

    .line 27
    invoke-virtual {v3, v0, p0, v2}, Lcom/google/android/play/core/appupdate/zzy;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
