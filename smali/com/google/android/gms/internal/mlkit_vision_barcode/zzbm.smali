.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzq(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 8
    aget-object p0, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzo()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzp()I

    move-result v0

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 7
    iget-object v5, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    .line 8
    iget-object v6, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    iget-object v7, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    iget-object v8, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    move v4, v0

    .line 9
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 10
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzn(II)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    add-int/2addr p1, v2

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->size()I

    move-result p0

    return p0
.end method
