.class public final Lcom/google/photos/vision/barhopper/zzaf;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy<",
        "Lcom/google/photos/vision/barhopper/zzag;",
        "Lcom/google/photos/vision/barhopper/zzaf;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/photos/vision/barhopper/zzag;->zza()Lcom/google/photos/vision/barhopper/zzag;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjn;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    return-void
.end method
