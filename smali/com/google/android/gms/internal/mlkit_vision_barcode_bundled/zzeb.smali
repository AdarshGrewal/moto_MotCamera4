.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;",
        ">;"
    }
.end annotation


# instance fields
.field public final zza:I

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh<",
            "*>;I",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:I

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:I

    return p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzg()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
