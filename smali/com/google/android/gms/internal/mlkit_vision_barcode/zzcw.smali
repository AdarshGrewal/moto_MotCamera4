.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# instance fields
.field public final zza:I

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/mlkit_vision_barcode/zzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;

    return-void
.end method


# virtual methods
.method public final annotationType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zza:I

    .line 3
    iget v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zza:I

    if-ne v1, v3, :cond_2

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zza:I

    const v1, 0xde0d66

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    const v1, 0x79ad669e

    xor-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@com.google.firebase.encoders.proto.Protobuf"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(tag="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zza:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "intEncoding="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
