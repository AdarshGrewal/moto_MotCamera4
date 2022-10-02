.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzm;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzr;
.source "com.google.mlkit:vision-common@@16.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzo<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final zza$com$google$android$gms$internal$mlkit_vision_common$zzh:I

.field public zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzo<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;-><init>()V

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zza$com$google$android$gms$internal$mlkit_vision_common$zzh:I

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "index"

    .line 6
    invoke-static {p2, v0, p1}, Landroidx/cardview/R$style;->zzd(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zza$com$google$android$gms$internal$mlkit_vision_common$zzh:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb:I

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 6
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final nextIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb:I

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzo;

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 6
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->zzb:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
