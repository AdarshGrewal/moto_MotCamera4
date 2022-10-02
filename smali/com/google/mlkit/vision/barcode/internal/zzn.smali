.class public final Lcom/google/mlkit/vision/barcode/internal/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzk;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zza:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzd:I

    return p0
.end method

.method public final zzc()Landroid/graphics/Rect;
    .locals 7

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    .line 1
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 2
    aget-object v5, v5, v4

    .line 3
    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5
    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzo()[B
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzo:[B

    return-object p0
.end method
