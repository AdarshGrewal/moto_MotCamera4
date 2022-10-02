.class public Lcom/google/android/play/core/assetpacks/zzal;
.super Lcom/google/android/play/core/internal/zzv;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/internal/zzv;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/play/core/tasks/zzi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/zzi<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic zzb:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/zzi<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzal;->zzb:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzv;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzal;->zza:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method


# virtual methods
.method public zzd(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzal;->zzb:Lcom/google/android/play/core/assetpacks/zzaw;

    .line 2
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzal;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    const-string v0, "error_code"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/appupdate/zzy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzal;->zza:Lcom/google/android/play/core/tasks/zzi;

    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    .line 7
    invoke-direct {v0, p1, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void
.end method

.method public zze(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzal;->zzb:Lcom/google/android/play/core/assetpacks/zzaw;

    .line 2
    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 3
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzal;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    .line 4
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "onGetChunkFileDescriptor"

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzg(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzal;->zzb:Lcom/google/android/play/core/assetpacks/zzaw;

    .line 2
    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 3
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzal;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    .line 4
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onGetSessionStates"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzh(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzal;->zzb:Lcom/google/android/play/core/assetpacks/zzaw;

    .line 2
    iget-object p2, p2, Lcom/google/android/play/core/assetpacks/zzaw;->zzf:Lcom/google/android/play/core/internal/zzas;

    .line 3
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzal;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p2, p0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    .line 4
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzaw;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "keep_alive"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "onKeepAlive(%b)"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/core/appupdate/zzy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
