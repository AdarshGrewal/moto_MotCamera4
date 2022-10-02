.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfb;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb()V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    .line 2
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzc()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 6
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p0

    .line 8
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;

    .line 9
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
