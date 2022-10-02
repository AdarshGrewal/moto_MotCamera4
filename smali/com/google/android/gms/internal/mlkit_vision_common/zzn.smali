.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzn;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
.source "com.google.mlkit:vision-common@@16.5.0"


# instance fields
.field public final transient zza:I

.field public final transient zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzo;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzo;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzb:I

    const-string v1, "index"

    .line 1
    invoke-static {p1, v0, v1}, Landroidx/cardview/R$style;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zza:I

    add-int/2addr p1, p0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzb:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzk;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zza:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzb:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzk;->zzc()I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zza:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zze()[Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzk;->zze()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzo;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzb:I

    .line 1
    invoke-static {p1, p2, v0}, Landroidx/cardview/R$style;->zzc(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzn;->zza:I

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzo;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    move-result-object p0

    return-object p0
.end method
