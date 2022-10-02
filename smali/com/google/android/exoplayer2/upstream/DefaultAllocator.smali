.class public final Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"


# instance fields
.field public allocatedCount:I

.field public availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

.field public availableCount:I

.field public final individualAllocationSize:I

.field public final singleAllocationReleaseHolder:[Lcom/google/android/exoplayer2/upstream/Allocation;

.field public targetBufferSize:I

.field public final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trimOnReset",
            "individualAllocationSize"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 5
    iput v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/16 p1, 0x64

    new-array p1, p1, [Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    new-array p1, v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lcom/google/android/exoplayer2/upstream/Allocation;

    return-void
.end method


# virtual methods
.method public declared-synchronized release([Lcom/google/android/exoplayer2/upstream/Allocation;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allocations"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 2
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    array-length v3, p1

    add-int/2addr v0, v3

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 5
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetBufferSize"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trim()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
