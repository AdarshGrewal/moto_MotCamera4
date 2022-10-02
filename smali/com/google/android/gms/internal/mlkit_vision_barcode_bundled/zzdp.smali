.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

.field public static volatile zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;


# instance fields
.field public final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzd:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 1
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
