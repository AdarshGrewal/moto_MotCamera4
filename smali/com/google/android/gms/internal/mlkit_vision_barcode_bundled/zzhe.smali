.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;
.super Ljava/util/AbstractList;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;->zzg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhc;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;
    .locals 0

    return-object p0
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    .line 1
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;->zzf(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;->zzh()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
