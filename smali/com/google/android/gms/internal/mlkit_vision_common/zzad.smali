.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzad;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public zza:Z

.field public zzb:Z

.field public zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzb:Z

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:Z

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzb:Z

    .line 9
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
