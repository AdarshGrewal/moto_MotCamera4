.class public final Lcom/google/android/gms/internal/mlkit_common/zzjz;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzjq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzjk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object p0, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/EncodedDestination;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 4
    sget-object p0, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    .line 5
    new-instance p1, Lcom/google/android/datatransport/Encoding;

    const-string p2, "json"

    invoke-direct {p1, p2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    new-instance p0, Lcom/google/firebase/components/Lazy;

    .line 8
    :cond_0
    new-instance p0, Lcom/google/firebase/components/Lazy;

    return-void
.end method
