.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzly;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 1
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "proto"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlw;

    const-string v2, "FIREBASE_ML_SDK"

    .line 3
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->getTransport(Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object p0

    return-object p0
.end method
