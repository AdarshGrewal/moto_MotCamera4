.class public final Lcom/google/android/datatransport/cct/CctTransportBackend;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/TransportBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;,
        Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    }
.end annotation


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final connectivityManager:Landroid/net/ConnectivityManager;

.field public final dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

.field public final endPoint:Ljava/net/URL;

.field public final readTimeout:I

.field public final uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final wallTimeClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    .line 3
    const-class v1, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    sget-object v2, Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$BatchedLogRequestEncoder;->INSTANCE:Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$BatchedLogRequestEncoder;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 4
    const-class v1, Lcom/google/android/datatransport/cct/internal/AutoValue_BatchedLogRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 5
    const-class v1, Lcom/google/android/datatransport/cct/internal/LogRequest;

    sget-object v2, Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$LogRequestEncoder;->INSTANCE:Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$LogRequestEncoder;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 6
    const-class v1, Lcom/google/android/datatransport/cct/internal/AutoValue_LogRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 7
    const-class v1, Lcom/google/android/datatransport/cct/internal/ClientInfo;

    sget-object v2, Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$ClientInfoEncoder;->INSTANCE:Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$ClientInfoEncoder;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 8
    const-class v1, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 9
    const-class v1, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    sget-object v2, Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$AndroidClientInfoEncoder;->INSTANCE:Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$AndroidClientInfoEncoder;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 10
    const-class v1, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 11
    const-class v1, Lcom/google/android/datatransport/cct/internal/LogEvent;

    sget-object v2, Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$LogEventEncoder;->INSTANCE:Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$LogEventEncoder;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 12
    const-class v1, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 13
    const-class v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    sget-object v2, Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$NetworkConnectionInfoEncoder;->INSTANCE:Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder$NetworkConnectionInfoEncoder;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 14
    const-class v1, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    .line 16
    new-instance v1, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;

    invoke-direct {v1, v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;-><init>(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)V

    .line 17
    iput-object v1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

    .line 18
    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 20
    sget-object p1, Lcom/google/android/datatransport/cct/CCTDestination;->DEFAULT_END_POINT:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->parseUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->endPoint:Ljava/net/URL;

    .line 21
    iput-object p3, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 22
    iput-object p2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->wallTimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    const p1, 0x9c40

    .line 23
    iput p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->readTimeout:I

    return-void
.end method

.method public static parseUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid url: "

    invoke-static {v2, p0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public decorate(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->toBuilder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sdk-version"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    const-string v3, "model"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    const-string v3, "hardware"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    const-string v3, "device"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    const-string v3, "product"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    const-string v3, "os-uild"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    const-string v3, "manufacturer"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    const-string v3, "fingerprint"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 19
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tz-offset"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 22
    sget-object v2, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->NONE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    move v2, v1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "net-type"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 25
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->UNKNOWN_MOBILE_SUBTYPE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 27
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->COMBINED:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    const/16 v0, 0x64

    goto :goto_2

    .line 28
    :cond_2
    sget-object v3, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->valueMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    .line 29
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mobile-subtype"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v3

    const-string v4, "country"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v3

    const-string v4, "locale"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    .line 35
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v3

    const-string v4, "mcc_mnc"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "CctTransportBackend"

    const-string v2, "Unable to find version code for package"

    .line 41
    invoke-static {v0, v2, p0}, Landroidx/fragment/R$anim;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->getAutoMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "application_build"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object p0

    return-object p0
.end method

.method public send(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .locals 34

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    move-object/from16 v3, p1

    check-cast v3, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;

    .line 3
    iget-object v4, v3, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->events:Ljava/lang/Iterable;

    .line 4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "CctTransportBackend"

    const/4 v7, 0x0

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 14
    sget-object v18, Lcom/google/android/datatransport/cct/internal/QosTier;->DEFAULT:Lcom/google/android/datatransport/cct/internal/QosTier;

    .line 15
    iget-object v9, v0, Lcom/google/android/datatransport/cct/CctTransportBackend;->wallTimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 16
    invoke-interface {v9}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v9

    .line 17
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 18
    iget-object v10, v0, Lcom/google/android/datatransport/cct/CctTransportBackend;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 19
    invoke-interface {v10}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v10

    .line 20
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 21
    sget-object v11, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->ANDROID_FIREBASE:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    const-string v12, "sdk-version"

    .line 22
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v12, "model"

    .line 23
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v12, "hardware"

    .line 24
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v12, "device"

    .line 25
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v12, "product"

    .line 26
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v12, "os-uild"

    .line 27
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v12, "manufacturer"

    .line 28
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v12, "fingerprint"

    .line 29
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v12, "country"

    .line 30
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v12, "locale"

    .line 31
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v12, "mcc_mnc"

    .line 32
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v12, "application_build"

    .line 33
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 34
    new-instance v8, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;

    const/16 v32, 0x0

    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v32}, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$1;)V

    .line 35
    new-instance v14, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;

    invoke-direct {v14, v11, v8, v7}, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;-><init>(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$1;)V

    .line 36
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v7

    move-object v15, v8

    goto :goto_2

    .line 38
    :catch_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v15, v7

    move-object/from16 v16, v8

    .line 39
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v11, "Missing required properties:"

    const-string v12, ""

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 41
    invoke-virtual {v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-result-object v13

    move-object/from16 v20, v2

    .line 42
    iget-object v2, v13, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    move-object/from16 v17, v5

    .line 43
    new-instance v5, Lcom/google/android/datatransport/Encoding;

    move-object/from16 v19, v12

    const-string v12, "proto"

    invoke-direct {v5, v12}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v5}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    iget-object v2, v13, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    .line 46
    new-instance v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;

    invoke-direct {v5}, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;-><init>()V

    .line 47
    iput-object v2, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->sourceExtension:[B

    goto :goto_4

    .line 48
    :cond_2
    new-instance v5, Lcom/google/android/datatransport/Encoding;

    const-string v12, "json"

    invoke-direct {v5, v12}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v5}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 50
    new-instance v2, Ljava/lang/String;

    .line 51
    iget-object v5, v13, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    const-string v12, "UTF-8"

    .line 52
    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-direct {v2, v5, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 53
    new-instance v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;

    invoke-direct {v5}, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;-><init>()V

    .line 54
    iput-object v2, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->sourceExtensionJsonProto3:Ljava/lang/String;

    .line 55
    :goto_4
    invoke-virtual {v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    move-result-wide v12

    .line 56
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventTimeMs:Ljava/lang/Long;

    .line 57
    invoke-virtual {v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    move-result-wide v12

    .line 58
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventUptimeMs:Ljava/lang/Long;

    .line 59
    invoke-virtual {v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v12, "tz-offset"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    const-wide/16 v12, 0x0

    goto :goto_5

    .line 60
    :cond_3
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 61
    :goto_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->timezoneOffsetSeconds:Ljava/lang/Long;

    const-string v2, "net-type"

    .line 62
    invoke-virtual {v8, v2}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 63
    sget-object v12, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const-string v12, "mobile-subtype"

    .line 64
    invoke-virtual {v8, v12}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v12

    .line 65
    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->valueMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 66
    new-instance v13, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo;

    move-object/from16 v21, v1

    const/4 v1, 0x0

    invoke-direct {v13, v2, v12, v1}, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo;-><init>(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$1;)V

    .line 67
    iput-object v13, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->networkConnectionInfo:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    .line 68
    invoke-virtual {v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v1

    .line 70
    iput-object v1, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventCode:Ljava/lang/Integer;

    .line 71
    :cond_4
    iget-object v1, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventTimeMs:Ljava/lang/Long;

    if-nez v1, :cond_5

    const-string v12, " eventTimeMs"

    goto :goto_6

    :cond_5
    move-object/from16 v12, v19

    .line 72
    :goto_6
    iget-object v1, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventUptimeMs:Ljava/lang/Long;

    if-nez v1, :cond_6

    const-string v1, " eventUptimeMs"

    .line 73
    invoke-static {v12, v1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 74
    :cond_6
    iget-object v1, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->timezoneOffsetSeconds:Ljava/lang/Long;

    if-nez v1, :cond_7

    const-string v1, " timezoneOffsetSeconds"

    .line 75
    invoke-static {v12, v1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 76
    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 77
    new-instance v1, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent;

    iget-object v2, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventTimeMs:Ljava/lang/Long;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    iget-object v2, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventCode:Ljava/lang/Integer;

    iget-object v8, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->eventUptimeMs:Ljava/lang/Long;

    .line 79
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    iget-object v8, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->sourceExtension:[B

    iget-object v11, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->sourceExtensionJsonProto3:Ljava/lang/String;

    iget-object v12, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->timezoneOffsetSeconds:Ljava/lang/Long;

    .line 80
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    iget-object v5, v5, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;->networkConnectionInfo:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    const/16 v33, 0x0

    move-object/from16 v22, v1

    move-object/from16 v25, v2

    move-object/from16 v28, v8

    move-object/from16 v29, v11

    move-object/from16 v32, v5

    invoke-direct/range {v22 .. v33}, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$1;)V

    .line 81
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 82
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11, v12}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v21, v1

    .line 83
    invoke-static {v6}, Landroidx/fragment/R$anim;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    const-string v2, "Received event of unsupported encoding %s. Skipping..."

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move-object/from16 v5, v17

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto/16 :goto_3

    :cond_a
    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v19, v12

    if-nez v9, :cond_b

    const-string v12, " requestTimeMs"

    goto :goto_8

    :cond_b
    move-object/from16 v12, v19

    :goto_8
    if-nez v10, :cond_c

    const-string v1, " requestUptimeMs"

    .line 84
    invoke-static {v12, v1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 85
    :cond_c
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 86
    new-instance v1, Lcom/google/android/datatransport/cct/internal/AutoValue_LogRequest;

    .line 87
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 88
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/16 v19, 0x0

    move-object v9, v1

    move-wide v10, v5

    move-object/from16 v17, v7

    invoke-direct/range {v9 .. v19}, Lcom/google/android/datatransport/cct/internal/AutoValue_LogRequest;-><init>(JJLcom/google/android/datatransport/cct/internal/ClientInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/google/android/datatransport/cct/internal/QosTier;Lcom/google/android/datatransport/cct/internal/AutoValue_LogRequest$1;)V

    .line 89
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto/16 :goto_1

    .line 90
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11, v12}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v21, v1

    .line 91
    new-instance v1, Lcom/google/android/datatransport/cct/internal/AutoValue_BatchedLogRequest;

    invoke-direct {v1, v4}, Lcom/google/android/datatransport/cct/internal/AutoValue_BatchedLogRequest;-><init>(Ljava/util/List;)V

    .line 92
    iget-object v2, v0, Lcom/google/android/datatransport/cct/CctTransportBackend;->endPoint:Ljava/net/URL;

    .line 93
    iget-object v3, v3, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->extras:[B

    if-eqz v3, :cond_10

    .line 94
    :try_start_1
    move-object/from16 v3, p1

    check-cast v3, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;

    .line 95
    iget-object v3, v3, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->extras:[B

    .line 96
    invoke-static {v3}, Lcom/google/android/datatransport/cct/CCTDestination;->fromByteArray([B)Lcom/google/android/datatransport/cct/CCTDestination;

    move-result-object v3

    .line 97
    iget-object v4, v3, Lcom/google/android/datatransport/cct/CCTDestination;->apiKey:Ljava/lang/String;

    if-eqz v4, :cond_f

    goto :goto_9

    :cond_f
    move-object v4, v7

    .line 98
    :goto_9
    iget-object v3, v3, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 99
    invoke-static {v3}, Lcom/google/android/datatransport/cct/CctTransportBackend;->parseUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 100
    :catch_1
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v0

    return-object v0

    :cond_10
    move-object v4, v7

    :cond_11
    :goto_a
    const/4 v3, 0x5

    const-wide/16 v8, -0x1

    .line 101
    :try_start_2
    new-instance v5, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    invoke-direct {v5, v2, v1, v4}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;-><init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;Ljava/lang/String;)V

    .line 102
    new-instance v1, Landroidx/lifecycle/MethodCallsLogger;

    invoke-direct {v1, v0}, Landroidx/lifecycle/MethodCallsLogger;-><init>(Lcom/google/android/datatransport/cct/CctTransportBackend;)V

    .line 103
    :cond_12
    invoke-virtual {v1, v5}, Landroidx/lifecycle/MethodCallsLogger;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    move-object v2, v0

    check-cast v2, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 105
    iget-object v4, v2, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->redirectUrl:Ljava/net/URL;

    if-eqz v4, :cond_13

    const-string v10, "Following redirect to: %s"

    .line 106
    invoke-static {v6, v10, v4}, Landroidx/fragment/R$anim;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    iget-object v2, v2, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->redirectUrl:Ljava/net/URL;

    .line 108
    new-instance v4, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    iget-object v10, v5, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->requestBody:Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    iget-object v5, v5, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->apiKey:Ljava/lang/String;

    invoke-direct {v4, v2, v10, v5}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;-><init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;Ljava/lang/String;)V

    move-object v5, v4

    goto :goto_b

    :cond_13
    move-object v5, v7

    :goto_b
    if-eqz v5, :cond_14

    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x1

    if-ge v3, v2, :cond_12

    .line 109
    :cond_14
    check-cast v0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 110
    iget v1, v0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_15

    .line 111
    iget-wide v0, v0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->nextRequestMillis:J

    .line 112
    new-instance v2, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;

    sget-object v3, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    return-object v2

    :cond_15
    const/16 v0, 0x1f4

    if-ge v1, v0, :cond_17

    const/16 v0, 0x194

    if-ne v1, v0, :cond_16

    goto :goto_c

    .line 113
    :cond_16
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v0

    return-object v0

    .line 114
    :cond_17
    :goto_c
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v1, v21

    :try_start_3
    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v1, v21

    :goto_d
    const-string v2, "Could not make request to the backend"

    .line 115
    invoke-static {v6, v2, v0}, Landroidx/fragment/R$anim;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    return-object v0
.end method
