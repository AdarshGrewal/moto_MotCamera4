.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;

.field public final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzb:Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzc:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/zzm;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zza:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzc:I

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;I)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzb:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/TransportContext;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzc:I

    .line 1
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    add-int/lit8 p0, p0, 0x1

    invoke-interface {v0, v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public zzc(IZ)[B
    .locals 8

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/play/core/assetpacks/zzm;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2
    iput-object v2, p2, Lcom/google/android/play/core/assetpacks/zzm;->zzi:Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/play/core/assetpacks/zzm;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iput-object v2, p2, Lcom/google/android/play/core/assetpacks/zzm;->zzg:Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zza:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    .line 7
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;

    .line 8
    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;-><init>(Lcom/google/android/play/core/assetpacks/zzm;)V

    .line 9
    iput-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;->zza:Ljava/lang/Object;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzji;

    .line 12
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzji;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;)V

    .line 13
    new-instance p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzht;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 14
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzht;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzht;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 15
    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    .line 16
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 17
    :try_start_1
    new-instance v0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 18
    iget-object v4, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/Map;

    .line 19
    iget-object v5, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/Map;

    .line 20
    iget-object v6, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 21
    iget-boolean v7, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    move-object v2, v0

    move-object v3, p2

    .line 22
    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 24
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 25
    iget-object p0, v0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    :catch_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "utf-8"

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzji;

    .line 29
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzji;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzil;)V

    .line 30
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;-><init>()V

    .line 31
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzht;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 32
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzht;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzht;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 33
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;->zzc:Ljava/util/Map;

    .line 34
    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;->zzd:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;->zze:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 35
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 36
    :try_start_3
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;

    invoke-direct {v2, v1, p2, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V

    .line 37
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 38
    :catch_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Failed to covert logging to UTF-8 byte array"

    .line 40
    invoke-direct {p1, p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
