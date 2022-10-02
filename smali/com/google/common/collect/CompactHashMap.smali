.class public Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CompactHashMap$ValuesView;,
        Lcom/google/common/collect/CompactHashMap$MapEntry;,
        Lcom/google/common/collect/CompactHashMap$EntrySetView;,
        Lcom/google/common/collect/CompactHashMap$KeySetView;,
        Lcom/google/common/collect/CompactHashMap$Itr;
    }
.end annotation

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
.field public static final synthetic $r8$clinit:I


# instance fields
.field public transient entries:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient keySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient keys:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient loadFactor:F

.field public transient modCount:I

.field public transient size:I

.field public transient table:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient threshold:I

.field public transient values:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    return-void
.end method

.method public static access$000(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getHash(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static swapNext(JI)J
    .locals 4

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 6
    iput v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public final hashTableMask()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v2

    and-int/2addr v2, v0

    aget v1, v1, v2

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v2, v2, v1

    .line 4
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    long-to-int v1, v2

    goto :goto_0

    :cond_1
    return v2
.end method

.method public init(IF)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Initial capacity must be non-negative"

    .line 1
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    move v1, v0

    :cond_1
    const-string v2, "Illegal load factor"

    .line 2
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    float-to-double v1, p2

    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    int-to-double v5, v4

    mul-double/2addr v1, v5

    double-to-int v1, v1

    if-le v3, v1, :cond_3

    shl-int/lit8 v1, v4, 0x1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    :goto_1
    move v4, v1

    .line 5
    :cond_3
    new-array v1, v4, [I

    const/4 v2, -0x1

    .line 6
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 7
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    .line 8
    iput p2, p0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    .line 9
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 10
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 11
    new-array p1, p1, [J

    const-wide/16 v1, -0x1

    .line 12
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 13
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    int-to-float p1, v4

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 14
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v3

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v4

    and-int/2addr v4, v3

    .line 6
    iget v5, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 7
    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v7, v6, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 8
    aput v5, v6, v4

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    aget-wide v9, v0, v7

    .line 10
    invoke-static {v9, v10}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v4

    if-ne v4, v3, :cond_1

    aget-object v4, v1, v7

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    aget-object p0, v2, v7

    .line 12
    aput-object p2, v2, v7

    return-object p0

    :cond_1
    long-to-int v4, v9

    if-ne v4, v8, :cond_9

    .line 13
    invoke-static {v9, v10, v5}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v1

    aput-wide v1, v0, v7

    :goto_1
    const v0, 0x7fffffff

    if-eq v5, v0, :cond_8

    add-int/lit8 v1, v5, 0x1

    .line 14
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    array-length v2, v2

    const/4 v4, 0x1

    if-le v1, v2, :cond_4

    ushr-int/lit8 v6, v2, 0x1

    .line 15
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v2

    if-gez v6, :cond_2

    move v6, v0

    :cond_2
    if-eq v6, v2, :cond_4

    .line 16
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 17
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 19
    array-length v7, v2

    .line 20
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    if-le v6, v7, :cond_3

    const-wide/16 v9, -0x1

    .line 21
    invoke-static {v2, v7, v6, v9, v10}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 22
    :cond_3
    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 23
    :cond_4
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    int-to-long v6, v3

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    const-wide v9, 0xffffffffL

    or-long/2addr v6, v9

    aput-wide v6, v2, v5

    .line 24
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 25
    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object p2, p1, v5

    .line 26
    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 27
    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    if-lt v5, p1, :cond_7

    .line 28
    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length p2, p1

    mul-int/lit8 p2, p2, 0x2

    .line 29
    array-length p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    if-lt p1, v1, :cond_5

    .line 30
    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    goto :goto_3

    :cond_5
    int-to-float p1, p2

    .line 31
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p1, v4

    .line 32
    new-array v0, p2, [I

    .line 33
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([II)V

    .line 34
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    add-int/2addr p2, v8

    const/4 v2, 0x0

    .line 35
    :goto_2
    iget v5, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v2, v5, :cond_6

    .line 36
    aget-wide v5, v1, v2

    .line 37
    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v5

    and-int v6, v5, p2

    .line 38
    aget v7, v0, v6

    .line 39
    aput v2, v0, v6

    int-to-long v5, v5

    shl-long/2addr v5, v3

    int-to-long v7, v7

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    .line 40
    aput-wide v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 41
    :cond_6
    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    .line 42
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    .line 43
    :cond_7
    :goto_3
    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    move v7, v4

    goto/16 :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

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
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    and-int/2addr v0, p2

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_0
    move v4, v3

    .line 4
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v5

    if-ne v5, p2, :cond_5

    .line 5
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6
    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    if-ne v4, v3, :cond_1

    .line 7
    iget-object p2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v4, v1

    long-to-int v4, v4

    aput v4, p2, v0

    goto :goto_1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v5, p2, v4

    aget-wide v7, p2, v1

    long-to-int v0, v7

    invoke-static {v5, v6, v0}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v5

    aput-wide v5, p2, v4

    .line 9
    :goto_1
    iget p2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/2addr p2, v3

    const-wide/16 v3, -0x1

    if-ge v1, p2, :cond_4

    .line 10
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v5, v0, p2

    aput-object v5, v0, v1

    .line 11
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v6, v5, p2

    aput-object v6, v5, v1

    .line 12
    aput-object v2, v0, p2

    .line 13
    aput-object v2, v5, p2

    .line 14
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v5, v0, p2

    .line 15
    aput-wide v5, v0, v1

    .line 16
    aput-wide v3, v0, p2

    .line 17
    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v2

    and-int/2addr v0, v2

    .line 18
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v3, v2, v0

    if-ne v3, p2, :cond_2

    .line 19
    aput v1, v2, v0

    goto :goto_3

    .line 20
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v0, v3

    long-to-int v2, v4

    if-ne v2, p2, :cond_3

    .line 21
    invoke-static {v4, v5, v1}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v1

    aput-wide v1, v0, v3

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_2

    .line 22
    :cond_4
    iget-object p2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object v2, p2, v1

    .line 23
    iget-object p2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object v2, p2, v1

    .line 24
    iget-object p2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aput-wide v3, p2, v1

    .line 25
    :goto_3
    iget p2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 26
    iget p2, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    return-object p1

    .line 27
    :cond_5
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v4, v1

    long-to-int v4, v4

    if-ne v4, v3, :cond_6

    return-object v2

    :cond_6
    move v9, v4

    move v4, v1

    move v1, v9

    goto/16 :goto_0
.end method

.method public size()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return p0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
