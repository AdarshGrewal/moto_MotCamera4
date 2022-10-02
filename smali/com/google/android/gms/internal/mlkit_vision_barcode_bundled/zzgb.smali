.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgf;

.field public zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgf;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgf;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;

    .line 2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;

    :cond_0
    return v0

    .line 4
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 5
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgf;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgf;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgf;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdc;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
