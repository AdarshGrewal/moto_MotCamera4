.class public final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

.field public final track:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "track"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p0, v1, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeThrowError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p0, v1, p0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    throw p0

    .line 7
    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    check-cast v1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatHolder",
            "buffer",
            "readFlags"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v1, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    and-int/lit8 v4, p3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 5
    :goto_0
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iput-boolean v5, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z

    .line 8
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v8

    const/4 v9, -0x5

    const/4 v10, -0x4

    const/4 v11, 0x4

    if-nez v8, :cond_6

    if-nez v3, :cond_5

    .line 9
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq v3, v4, :cond_4

    .line 11
    :cond_3
    invoke-virtual {v1, v3, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v1

    goto :goto_5

    .line 13
    :cond_4
    monitor-exit v1

    goto :goto_2

    .line 14
    :cond_5
    :goto_1
    :try_start_1
    iput v11, p2, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit v1

    goto :goto_3

    .line 16
    :cond_6
    :try_start_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v4, :cond_a

    .line 17
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq v3, v4, :cond_7

    goto :goto_4

    .line 18
    :cond_7
    iget p1, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->mayReadSample(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 20
    iput-boolean v6, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    monitor-exit v1

    :goto_2
    move v9, v2

    goto :goto_5

    .line 22
    :cond_8
    :try_start_3
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v3, v3, p1

    .line 23
    iput v3, p2, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    .line 24
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v3, v3, p1

    iput-wide v3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 25
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    cmp-long v3, v3, v8

    if-gez v3, :cond_9

    const/high16 v3, -0x80000000

    .line 26
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/decoder/Buffer;->addFlag(I)V

    .line 27
    :cond_9
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget v3, v3, p1

    iput v3, v7, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 28
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v3, v3, p1

    iput-wide v3, v7, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 29
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aget-object p1, v3, p1

    iput-object p1, v7, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    monitor-exit v1

    :goto_3
    move v9, v10

    goto :goto_5

    .line 31
    :cond_a
    :goto_4
    :try_start_4
    invoke-virtual {v1, v3, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    monitor-exit v1

    :goto_5
    if-ne v9, v10, :cond_e

    .line 33
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result p1

    if-nez p1, :cond_e

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_b

    move v5, v6

    :cond_b
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_d

    if-eqz v5, :cond_c

    .line 34
    iget-object p1, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    iget-object p3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    .line 35
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3, p2, p3, p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readSampleData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_6

    .line 36
    :cond_c
    iget-object p1, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    iget-object p3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    .line 37
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3, p2, p3, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readSampleData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    :cond_d
    :goto_6
    if-nez v5, :cond_e

    .line 38
    iget p1, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr p1, v6

    iput p1, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    :cond_e
    if-ne v9, v2, :cond_f

    .line 39
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_f
    move v2, v9

    :goto_7
    return v2

    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v1

    throw p0
.end method

.method public skipData(J)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v1, v1, p0

    .line 5
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v4

    .line 8
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v5, v5, v4

    cmp-long v5, p1, v5

    if-gez v5, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v5, p1, v5

    if-lez v5, :cond_2

    if-eqz v3, :cond_2

    .line 10
    iget p1, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget p2, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr p1, p2

    monitor-exit v1

    goto :goto_2

    .line 11
    :cond_2
    :try_start_1
    iget v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v5, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int v5, v3, v5

    const/4 v8, 0x1

    move-object v3, v1

    move-wide v6, p1

    .line 12
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 13
    monitor-exit v1

    goto :goto_1

    .line 14
    :cond_3
    monitor-exit v1

    goto :goto_2

    .line 15
    :cond_4
    :goto_0
    monitor-exit v1

    :goto_1
    move p1, v2

    .line 16
    :goto_2
    monitor-enter v1

    if-ltz p1, :cond_5

    .line 17
    :try_start_2
    iget p2, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr p2, p1

    iget v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-gt p2, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 18
    iget p2, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr p2, p1

    iput p2, v1, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit v1

    if-nez p1, :cond_6

    .line 20
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_6
    move v2, p1

    :goto_3
    return v2

    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v1

    throw p0

    :catchall_1
    move-exception p0

    .line 22
    monitor-exit v1

    throw p0
.end method
