.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


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
.field public zza:[Ljava/lang/Object;

.field public zzb:I

.field public zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;-><init>(I)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:[Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzb:I

    return-void
.end method

.method private final zza$com$google$android$gms$internal$mlkit_vision_barcode$zzbv(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzb:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzd(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzb:I

    .line 3
    aput-object p1, v0, v1

    return-object p0
.end method

.method private final zzc$com$google$android$gms$internal$mlkit_vision_barcode$zzbv(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw<",
            "TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzb:I

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzd(I)V

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbx;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbx;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzb:I

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbx;->zza([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzb:I

    return-object p0

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzbv(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    goto :goto_1

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz<",
            "TE;>;"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzbv(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    return-object p0
.end method

.method public final zzd(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:[Ljava/lang/Object;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_2

    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    add-int v1, p1, p1

    :cond_0
    if-gez v1, :cond_1

    const v1, 0x7fffffff

    .line 4
    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzc:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzc:Z

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzc:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzc$com$google$android$gms$internal$mlkit_vision_barcode$zzbv(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzb:I

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzct;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzco;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzco;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzco;-><init>([Ljava/lang/Object;I)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method
