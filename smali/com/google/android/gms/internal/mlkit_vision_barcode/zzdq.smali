.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

.field public final zzc:Ljava/lang/Boolean;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;",
            ">;"
        }
    .end annotation
.end field

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzc:Ljava/lang/Boolean;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzd:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zze:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzc:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzc:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzc:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
