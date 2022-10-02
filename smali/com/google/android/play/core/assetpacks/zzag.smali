.class public final Lcom/google/android/play/core/assetpacks/zzag;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:I

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:I

.field public final synthetic zze:Lcom/google/android/play/core/tasks/zzi;

.field public final synthetic zzf:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/play/core/tasks/zzi;I)V
    .locals 1

    iput p8, p0, Lcom/google/android/play/core/assetpacks/zzag;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p8, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzag;->zza:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzc:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzd:I

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzag;->zze:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzag;->zza:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzc:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzd:I

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzag;->zze:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 8

    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzag;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    .line 2
    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 3
    iget-object v2, v2, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 4
    check-cast v2, Lcom/google/android/play/core/internal/zzu;

    .line 5
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzc:Ljava/lang/String;

    .line 6
    iget v3, p0, Lcom/google/android/play/core/assetpacks/zzag;->zza:I

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzc:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzd:I

    .line 7
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/zzaw;->zzk(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzA()Landroid/os/Bundle;

    move-result-object v4

    .line 9
    new-instance v5, Lcom/google/android/play/core/assetpacks/zzaq;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzag;->zze:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v5, v6, p0}, Lcom/google/android/play/core/assetpacks/zzaq;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    .line 10
    invoke-interface {v2, v0, v3, v4, v5}, Lcom/google/android/play/core/internal/zzu;->zzg(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyChunkTransferred"

    .line 12
    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    .line 13
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    .line 14
    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 15
    iget-object v2, v2, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 16
    check-cast v2, Lcom/google/android/play/core/internal/zzu;

    .line 17
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzc:Ljava/lang/String;

    .line 18
    iget v3, p0, Lcom/google/android/play/core/assetpacks/zzag;->zza:I

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzc:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzd:I

    .line 19
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/zzaw;->zzk(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 20
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzA()Landroid/os/Bundle;

    move-result-object v4

    .line 21
    new-instance v5, Lcom/google/android/play/core/assetpacks/zzan;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzf:Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/zzag;->zze:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v5, v6, v7}, Lcom/google/android/play/core/assetpacks/zzan;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    .line 22
    invoke-interface {v2, v0, v3, v4, v5}, Lcom/google/android/play/core/internal/zzu;->zzd(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 23
    sget-object v2, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzb:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzc:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget v4, p0, Lcom/google/android/play/core/assetpacks/zzag;->zzd:I

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget v4, p0, Lcom/google/android/play/core/assetpacks/zzag;->zza:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    .line 26
    invoke-virtual {v2, v1, v3}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzag;->zze:Lcom/google/android/play/core/tasks/zzi;

    new-instance v1, Ljava/lang/RuntimeException;

    .line 27
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
