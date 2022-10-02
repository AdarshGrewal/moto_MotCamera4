.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;",
        ">;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzh:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/4 v3, 0x1

    .line 3
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "errorCode"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 10
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    .line 12
    iput v1, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 13
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 14
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "hasResult"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 18
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 19
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/4 v3, 0x3

    .line 21
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 22
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 23
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "isColdCall"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 28
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/4 v3, 0x4

    .line 30
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 31
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 32
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 35
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "imageInfo"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 37
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 38
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/4 v3, 0x5

    .line 39
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 40
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "options"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 46
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/4 v3, 0x6

    .line 48
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 49
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 50
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 53
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "detectedBarcodeFormats"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 54
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 55
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/4 v1, 0x7

    .line 57
    iput v1, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 58
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "detectedBarcodeValueTypes"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 63
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 3
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzc:Ljava/lang/Boolean;

    .line 6
    invoke-interface {p2, p0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 7
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    .line 9
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 11
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeo;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 13
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
