.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# static fields
.field public static final zza:Ljava/nio/charset/Charset;

.field public static final zzc:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zza:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzc:[B

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static zza(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method public static zzc(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzU()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
