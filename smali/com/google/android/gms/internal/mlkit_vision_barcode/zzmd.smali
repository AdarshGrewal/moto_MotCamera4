.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# static fields
.field public static zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
