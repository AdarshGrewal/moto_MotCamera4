.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjp;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzb:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzg()V

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjp;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjp;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    move-result-object p0

    return-object p0
.end method

.method public final zzo()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzo()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    return-void
.end method
