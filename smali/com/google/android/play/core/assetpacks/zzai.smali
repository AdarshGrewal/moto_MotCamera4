.class public final Lcom/google/android/play/core/assetpacks/zzai;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final synthetic zza:I

.field public final synthetic zzb:Lcom/google/android/play/core/tasks/zzi;

.field public final synthetic zzc:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;ILcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzai;->zzc:Lcom/google/android/play/core/assetpacks/zzaw;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzai;->zza:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzai;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzai;->zzc:Lcom/google/android/play/core/assetpacks/zzaw;

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 3
    iget-object v1, v1, Lcom/google/android/play/core/internal/zzas;->zzo:Landroid/os/IInterface;

    .line 4
    check-cast v1, Lcom/google/android/play/core/internal/zzu;

    .line 5
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzc:Ljava/lang/String;

    .line 6
    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzai;->zza:I

    .line 7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "session_id"

    .line 8
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzA()Landroid/os/Bundle;

    move-result-object v2

    .line 10
    new-instance v4, Lcom/google/android/play/core/assetpacks/zzas;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzai;->zzc:Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzai;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v4, v5, p0}, Lcom/google/android/play/core/assetpacks/zzas;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    .line 11
    invoke-interface {v1, v0, v3, v2, v4}, Lcom/google/android/play/core/internal/zzu;->zzi(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 12
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifySessionFailed"

    .line 13
    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/play/core/appupdate/zzy;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
