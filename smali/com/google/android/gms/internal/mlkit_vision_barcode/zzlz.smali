.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;


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

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;

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

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzjy;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzjy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;I)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zza:Lcom/google/firebase/inject/Provider;

    .line 8
    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zzb:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;)Lcom/google/android/datatransport/Event;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;",
            ")",
            "Lcom/google/android/datatransport/Event<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;->zza()I

    move-result p0

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzc:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzc(IZ)[B

    move-result-object p0

    .line 4
    new-instance p1, Lcom/google/android/datatransport/AutoValue_Event;

    sget-object v0, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    invoke-direct {p1, v1, p0, v0}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;->zzc(IZ)[B

    move-result-object p0

    .line 6
    new-instance p1, Lcom/google/android/datatransport/AutoValue_Event;

    sget-object v0, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    invoke-direct {p1, v1, p0, v0}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;->zza()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zza:Lcom/google/firebase/inject/Provider;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/Transport;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zzb:Lcom/google/firebase/inject/Provider;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/Transport;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlz;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlu;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    return-void
.end method
