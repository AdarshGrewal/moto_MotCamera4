.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;",
        ">;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzh:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzi:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzj:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzk:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;

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

    const-string v4, "durationMs"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v4, "errorCode"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 18
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

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
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v4, "autoManageModelOnBackground"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v4, "autoManageModelOnLowMemory"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v4, "isNnApiEnabled"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 54
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 55
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/4 v3, 0x7

    .line 57
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 58
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 62
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "eventsCount"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 63
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 64
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 65
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/16 v3, 0x8

    .line 66
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 67
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 68
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 71
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "otherErrors"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 72
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzi:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 73
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 74
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/16 v3, 0x9

    .line 75
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 76
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 77
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 80
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "remoteConfigValueForAcceleration"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 81
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzj:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 82
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 83
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    const/16 v1, 0xa

    .line 84
    iput v1, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 85
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 89
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "isAccelerated"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 90
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzk:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;->zza:Ljava/lang/Long;

    .line 3
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 5
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;->zzc:Ljava/lang/Boolean;

    .line 7
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;->zzd:Ljava/lang/Boolean;

    .line 9
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzix;->zze:Ljava/lang/Boolean;

    .line 11
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 p1, 0x0

    .line 12
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 13
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzi:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 14
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzj:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 15
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgc;->zzk:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 16
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
