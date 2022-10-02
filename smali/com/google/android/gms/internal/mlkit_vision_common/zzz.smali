.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzz;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoderContext;


# static fields
.field public static final zza:Ljava/nio/charset/Charset;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public zze:Ljava/io/OutputStream;

.field public final zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final zzh:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_common/zzad;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/nio/charset/Charset;

    .line 2
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/4 v3, 0x1

    .line 4
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object v0

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "key"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 11
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/4 v1, 0x2

    .line 13
    iput v1, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 14
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "value"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 19
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzd:Lcom/google/firebase/encoders/ObjectEncoder;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzi:Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzf:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzg:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzh:Lcom/google/firebase/encoders/ObjectEncoder;

    return-void
.end method

.method public static zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    .line 1
    iget-object p0, p0, Lcom/google/firebase/encoders/FieldDescriptor;->properties:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    if-eqz p0, :cond_0

    .line 3
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zza:I

    return p0

    .line 4
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzj(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/android/gms/internal/mlkit_vision_common/zzs;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    .line 1
    iget-object p0, p0, Lcom/google/firebase/encoders/FieldDescriptor;->properties:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzm(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze(Lcom/google/firebase/encoders/FieldDescriptor;JZ)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    return-object p0
.end method

.method public final add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public final zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 2
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    return-object p0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 7
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    .line 8
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    .line 9
    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 10
    check-cast p2, Ljava/util/Collection;

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 12
    invoke-virtual {p0, p1, p3, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    goto :goto_0

    :cond_3
    return-object p0

    .line 13
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 14
    check-cast p2, Ljava/util/Map;

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzd:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 16
    invoke-virtual {p0, v0, p1, p3, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzk(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    goto :goto_1

    :cond_5
    return-object p0

    .line 17
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 18
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    if-eqz p3, :cond_7

    const-wide/16 p2, 0x0

    cmpl-double p2, v0, p2

    if-nez p2, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v2

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    const/16 p2, 0x8

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzm(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    return-object p0

    .line 22
    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 23
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p3, :cond_9

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_9

    goto :goto_3

    .line 24
    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    const/4 p3, 0x4

    .line 26
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzm(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-object p0

    .line 27
    :cond_a
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_b

    .line 28
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze(Lcom/google/firebase/encoders/FieldDescriptor;JZ)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    return-object p0

    .line 29
    :cond_b
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 30
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    return-object p0

    .line 32
    :cond_c
    instance-of v0, p2, [B

    if-eqz v0, :cond_e

    .line 33
    check-cast p2, [B

    if-eqz p3, :cond_d

    array-length p3, p2

    if-nez p3, :cond_d

    return-object p0

    .line 34
    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    array-length p1, p2

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzf:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 38
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzk(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    return-object p0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzg:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 40
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ValueEncoder;

    if-eqz v0, :cond_10

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzi:Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    .line 42
    iput-boolean v1, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:Z

    iput-object p1, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iput-boolean p3, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzb:Z

    .line 43
    invoke-interface {v0, p2, v2}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 44
    :cond_10
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzv;

    if-eqz v0, :cond_11

    .line 45
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzv;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzv;->zza()I

    move-result p2

    .line 46
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    return-object p0

    .line 47
    :cond_11
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    .line 48
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 49
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    return-object p0

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzh:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 50
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzk(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    return-object p0
.end method

.method public final zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 1
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzj(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object p1

    .line 2
    iget-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zza:I

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    const/4 p3, 0x4

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzm(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 7
    :cond_3
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zza:I

    shl-int/lit8 p1, p1, 0x3

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    add-int p1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p1, p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    goto :goto_1

    .line 10
    :cond_4
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zza:I

    shl-int/lit8 p1, p1, 0x3

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    :goto_1
    return-object p0
.end method

.method public final zze(Lcom/google/firebase/encoders/FieldDescriptor;JZ)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 1
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzj(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object p1

    .line 2
    iget-object p4, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    .line 3
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zza:I

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    const/16 p4, 0x8

    .line 6
    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzm(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 7
    :cond_3
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zza:I

    shl-int/lit8 p1, p1, 0x3

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    add-long v0, p2, p2

    const/16 p1, 0x3f

    shr-long p1, p2, p1

    xor-long/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzo(J)V

    goto :goto_1

    .line 10
    :cond_4
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zza:I

    shl-int/lit8 p1, p1, 0x3

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzo(J)V

    :goto_1
    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzf:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p0}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0xf

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No encoder for "

    invoke-static {v1, v0, p1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzk(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "TT;>;",
            "Lcom/google/firebase/encoders/FieldDescriptor;",
            "TT;Z)",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzz;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-interface {p1, p3, p0}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    goto :goto_1

    .line 5
    :goto_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_0

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-nez p4, :cond_0

    return-object p0

    .line 7
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzn(I)V

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzo(J)V

    .line 10
    invoke-interface {p1, p3, p0}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_3
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    .line 12
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 13
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzn(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final zzo(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zze:Ljava/io/OutputStream;

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
