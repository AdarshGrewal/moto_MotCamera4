.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzid;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;


# instance fields
.field public zza:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/Transport<",
            "[B>;>;"
        }
    .end annotation
.end field

.field public final zzb:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/Transport<",
            "[B>;>;"
        }
    .end annotation
.end field

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    .line 1
    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/EncodedDestination;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    .line 5
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "json"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzib;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzib;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zza:Lcom/google/firebase/inject/Provider;

    .line 8
    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzic;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzic;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzb:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;Landroidx/fragment/app/FragmentStore;)Lcom/google/android/datatransport/Event;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;",
            "Landroidx/fragment/app/FragmentStore;",
            ")",
            "Lcom/google/android/datatransport/Event<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;->zza()I

    move-result p0

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4
    iput-object v3, v0, Lcom/google/android/play/core/assetpacks/zzm;->zzi:Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzm;

    .line 6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iput-object v3, v0, Lcom/google/android/play/core/assetpacks/zzm;->zzg:Ljava/lang/Object;

    .line 8
    iget-object v3, p1, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 9
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;

    .line 10
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;-><init>(Lcom/google/android/play/core/assetpacks/zzm;)V

    .line 11
    iput-object v4, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Ljava/lang/Object;

    .line 12
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    if-nez p0, :cond_1

    iget-object p0, p1, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;

    .line 14
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)V

    .line 15
    new-instance p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzel;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 16
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzel;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzel;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 17
    iput-boolean v1, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    .line 18
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    :try_start_1
    new-instance v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 20
    iget-object v5, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/Map;

    .line 21
    iget-object v6, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/Map;

    .line 22
    iget-object v7, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 23
    iget-boolean v8, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    move-object v3, v1

    move-object v4, v0

    .line 24
    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V

    .line 25
    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 26
    invoke-virtual {v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 27
    iget-object p0, v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "utf-8"

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p1, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;

    .line 31
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)V

    .line 32
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzab;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzab;-><init>()V

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzel;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 34
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzel;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzel;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzab;->zzc:Ljava/util/Map;

    .line 36
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzab;->zzd:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzab;->zze:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 37
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 38
    :try_start_3
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    invoke-direct {v3, v2, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V

    .line 39
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_common/zzz;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 40
    :catch_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 41
    :goto_1
    new-instance p1, Lcom/google/android/datatransport/AutoValue_Event;

    sget-object v0, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    return-object p1

    :catch_2
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 43
    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final zza(Landroidx/fragment/app/FragmentStore;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;->zza()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zza:Lcom/google/firebase/inject/Provider;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/Transport;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;Landroidx/fragment/app/FragmentStore;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzb:Lcom/google/firebase/inject/Provider;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/Transport;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;Landroidx/fragment/app/FragmentStore;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    return-void
.end method
