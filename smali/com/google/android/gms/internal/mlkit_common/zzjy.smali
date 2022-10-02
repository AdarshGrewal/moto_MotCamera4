.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzjy;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;I)V
    .locals 1

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjy;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjy;->$r8$classId:I

    const-string v1, "FIREBASE_ML_SDK"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 2
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v2, "proto"

    invoke-direct {v0, v2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzjw;->zza:Lcom/google/android/gms/internal/mlkit_common/zzjw;

    .line 4
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->getTransport(Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object p0

    return-object p0

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 6
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v2, "json"

    invoke-direct {v0, v2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;

    .line 8
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->getTransport(Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
