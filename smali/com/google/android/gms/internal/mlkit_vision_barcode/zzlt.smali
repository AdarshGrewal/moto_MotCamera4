.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# instance fields
.field public final zza:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

.field public final zzb:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    new-instance p2, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    const-string v0, "mlkit:vision"

    .line 3
    invoke-direct {p2, v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/common/internal/service/zao;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/internal/service/zao;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zza:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    return-void
.end method
