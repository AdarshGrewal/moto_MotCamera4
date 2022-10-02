.class public final Lcom/google/android/play/core/assetpacks/zzah;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final synthetic zza:I

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/play/core/tasks/zzi;

.field public final synthetic zzd:I

.field public final synthetic zze:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;ILjava/lang/String;Lcom/google/android/play/core/tasks/zzi;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzah;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzah;->zza:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzc:Lcom/google/android/play/core/tasks/zzi;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzd:I

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzah;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 3
    iget-object v1, v1, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 4
    check-cast v1, Lcom/google/android/play/core/internal/zzu;

    .line 5
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzc:Ljava/lang/String;

    .line 6
    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzah;->zza:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzb:Ljava/lang/String;

    .line 7
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "session_id"

    .line 8
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "module_name"

    .line 9
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzA()Landroid/os/Bundle;

    move-result-object v2

    .line 11
    new-instance v3, Lcom/google/android/play/core/assetpacks/zzar;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzah;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzc:Lcom/google/android/play/core/tasks/zzi;

    iget v8, p0, Lcom/google/android/play/core/assetpacks/zzah;->zza:I

    iget-object v9, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzb:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/play/core/assetpacks/zzah;->zzd:I

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/play/core/assetpacks/zzar;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;ILjava/lang/String;I)V

    .line 12
    invoke-interface {v1, v0, v4, v2, v3}, Lcom/google/android/play/core/internal/zzu;->zzh(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyModuleCompleted"

    .line 14
    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
