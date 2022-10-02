.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public zza:Z

.field public zzb:Z

.field public zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zza:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zzb:Z

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zza:Z

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;->zzb:Z

    .line 9
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
