.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final zzd:Ljava/lang/Object;


# instance fields
.field public transient zza:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient zzb:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient zzc:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient zze:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient zzf:I

.field public transient zzg:I

.field public transient zzh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient zzi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient zzj:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/16 v0, 0xc

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->size()I

    move-result v3

    const/4 v4, 0x3

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const v4, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    .line 7
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    .line 8
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    .line 9
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 10
    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 11
    :cond_2
    instance-of v1, v0, [S

    if-eqz v1, :cond_3

    .line 12
    check-cast v0, [S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    .line 13
    :cond_3
    check-cast v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    .line 15
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzq(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 2
    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 3
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzi:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzi:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzq(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 4
    aget-object p0, p0, p1

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzh:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzh:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzo()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/16 v7, 0x20

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzo()Z

    move-result v3

    const-string v8, "Arrays already allocated"

    .line 1
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaq;->zzd(ZLjava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    add-int/lit8 v8, v3, 0x1

    .line 2
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v9

    int-to-double v10, v9

    double-to-int v10, v10

    if-le v8, v10, :cond_0

    add-int/2addr v9, v9

    if-gtz v9, :cond_0

    const/high16 v9, 0x40000000    # 2.0f

    .line 4
    :cond_0
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5
    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzd(I)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    add-int/2addr v8, v4

    .line 6
    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v8

    iget v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    and-int/lit8 v9, v9, -0x20

    rsub-int/lit8 v8, v8, 0x20

    and-int/lit8 v8, v8, 0x1f

    or-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    .line 7
    new-array v8, v3, [I

    iput-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    .line 8
    new-array v8, v3, [Ljava/lang/Object;

    iput-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    .line 9
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 10
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    iget-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    iget v10, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    add-int/lit8 v11, v10, 0x1

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;->zza(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzp()I

    move-result v13

    and-int v14, v12, v13

    iget-object v15, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    .line 13
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc(Ljava/lang/Object;I)I

    move-result v15

    const/4 v6, 0x1

    if-nez v15, :cond_5

    if-le v11, v13, :cond_4

    if-ge v13, v7, :cond_3

    const/16 v16, 0x4

    goto :goto_0

    :cond_3
    const/16 v16, 0x2

    :goto_0
    add-int/lit8 v3, v13, 0x1

    mul-int v3, v3, v16

    .line 14
    invoke-virtual {v0, v13, v3, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzr(IIII)I

    move-result v13

    goto/16 :goto_6

    .line 15
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    .line 16
    invoke-static {v3, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :cond_5
    not-int v14, v13

    and-int v7, v12, v14

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_1
    add-int/2addr v15, v4

    .line 17
    aget v19, v3, v15

    and-int v4, v19, v14

    if-ne v4, v7, :cond_7

    .line 18
    aget-object v5, v8, v15

    .line 19
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    aget-object v0, v9, v15

    .line 21
    aput-object v2, v9, v15

    return-object v0

    :cond_7
    :goto_2
    and-int v5, v19, v13

    move/from16 v19, v7

    add-int/lit8 v7, v18, 0x1

    if-nez v5, :cond_f

    const/16 v5, 0x9

    if-lt v7, v5, :cond_b

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzp()I

    move-result v3

    new-instance v4, Ljava/util/LinkedHashMap;

    add-int/2addr v3, v6

    const/high16 v5, 0x3f800000    # 1.0f

    .line 23
    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_4

    :cond_8
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_3
    if-ltz v17, :cond_a

    .line 25
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    .line 26
    aget-object v5, v5, v17

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    aget-object v6, v6, v17

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v17, 0x1

    .line 27
    iget v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    if-ge v5, v6, :cond_9

    move/from16 v17, v5

    goto :goto_3

    :cond_9
    :goto_4
    const/16 v17, -0x1

    goto :goto_3

    .line 28
    :cond_a
    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()V

    .line 30
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    if-le v11, v13, :cond_d

    const/16 v5, 0x20

    if-ge v13, v5, :cond_c

    const/4 v5, 0x4

    goto :goto_5

    :cond_c
    const/4 v5, 0x2

    :goto_5
    add-int/lit8 v3, v13, 0x1

    mul-int/2addr v3, v5

    .line 31
    invoke-virtual {v0, v13, v3, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzr(IIII)I

    move-result v13

    goto :goto_6

    :cond_d
    and-int v5, v11, v13

    or-int/2addr v4, v5

    .line 32
    aput v4, v3, v15

    .line 33
    :goto_6
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    .line 34
    array-length v3, v3

    if-le v11, v3, :cond_e

    const v4, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v5, v3, 0x1

    .line 35
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    or-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_e

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    .line 36
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    .line 37
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 38
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    :cond_e
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    not-int v4, v13

    and-int/2addr v4, v12

    .line 39
    aput v4, v3, v10

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    .line 40
    aput-object v1, v3, v10

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 41
    aput-object v2, v1, v10

    iput v11, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()V

    const/4 v4, 0x0

    return-object v4

    :cond_f
    move v15, v5

    move/from16 v18, v7

    move/from16 v7, v19

    const/4 v4, -0x1

    goto/16 :goto_1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzd:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    :goto_0
    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method public final zzj()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzl()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    return-void
.end method

.method public final zzn(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p1, v0, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    .line 2
    aget-object v4, v3, v0

    .line 3
    aput-object v4, v3, p1

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 4
    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 5
    aput-object v2, v3, v0

    .line 6
    aput-object v2, v5, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    .line 7
    aget v3, v2, v0

    aput v3, v2, p1

    .line 8
    aput v1, v2, v0

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;->zza(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    .line 10
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc(Ljava/lang/Object;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-eq v2, v0, :cond_1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    .line 11
    aget v3, v1, v2

    and-int v4, v3, p2

    if-eq v4, v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    not-int p0, p2

    and-int/2addr p0, v3

    add-int/lit8 p1, p1, 0x1

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    .line 12
    aput p0, v1, v2

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    .line 13
    invoke-static {p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze(Ljava/lang/Object;II)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    .line 14
    aput-object v2, p2, p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 15
    aput-object v2, p2, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    .line 16
    aput v1, p0, p1

    return-void
.end method

.method public final zzo()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzp()I
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    shl-int p0, v0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final zzq(Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzo()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbu;->zza(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzp()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    and-int v4, v0, v2

    .line 2
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc(Ljava/lang/Object;I)I

    move-result v3

    if-eqz v3, :cond_4

    not-int v4, v2

    and-int/2addr v0, v4

    :cond_1
    add-int/2addr v3, v1

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    .line 3
    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    .line 4
    aget-object v6, v6, v3

    .line 5
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    and-int v3, v5, v2

    if-nez v3, :cond_1

    :cond_4
    return v1
.end method

.method public final zzr(IIII)I
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzd(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 2
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze(Ljava/lang/Object;II)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    .line 3
    invoke-static {p3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc(Ljava/lang/Object;I)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 4
    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 5
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc(Ljava/lang/Object;I)I

    move-result v7

    .line 6
    invoke-static {v0, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze(Ljava/lang/Object;II)V

    not-int v2, p2

    and-int/2addr v2, v5

    and-int v5, v7, p2

    or-int/2addr v2, v5

    .line 7
    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    iget p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    and-int/lit8 p3, p3, -0x20

    rsub-int/lit8 p1, p1, 0x20

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    return p2
.end method

.method public final zzs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzd:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzp()I

    move-result v7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v0, p1

    move v2, v7

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzd:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    .line 2
    aget-object v1, v1, p1

    .line 3
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzn(II)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()V

    return-object v1
.end method
