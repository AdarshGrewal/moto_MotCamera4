.class public final synthetic Lcom/google/android/play/core/assetpacks/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzbb;

.field public final synthetic zzb:Landroid/os/Bundle;

.field public final synthetic zzc:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzbb;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zza:Lcom/google/android/play/core/assetpacks/zzbb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zzb:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zzc:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zza:Lcom/google/android/play/core/assetpacks/zzbb;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zzb:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zzc:Lcom/google/android/play/core/assetpacks/AssetPackState;

    .line 1
    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzbb;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    .line 2
    new-instance v3, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v3, v2, v1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Lcom/google/android/play/core/assetpacks/zzde;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/google/android/play/core/assetpacks/zzde;->zzr(Lcom/google/android/play/core/assetpacks/zzdd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/zzbb;->zzk:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/tasks/zzi;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/tasks/zzi;-><init>(Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p0, v0, Lcom/google/android/play/core/assetpacks/zzbb;->zze:Lcom/google/android/play/core/internal/zzco;

    .line 5
    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzy;

    invoke-interface {p0}, Lcom/google/android/play/core/assetpacks/zzy;->zzf()V

    :cond_0
    return-void
.end method
