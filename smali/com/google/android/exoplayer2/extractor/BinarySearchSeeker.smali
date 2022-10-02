.class public abstract Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;
    }
.end annotation


# instance fields
.field public final minimumSearchRange:I

.field public final seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field public seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

.field public final timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seekTimestampConverter",
            "timestampSeeker",
            "durationUs",
            "floorTimePosition",
            "ceilingTimePosition",
            "floorBytePosition",
            "ceilingBytePosition",
            "approxBytesPerFrame",
            "minimumSearchRange"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 2
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    move/from16 v1, p15

    .line 3
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->minimumSearchRange:I

    .line 4
    new-instance v15, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V

    iput-object v15, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-void
.end method


# virtual methods
.method public handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "seekPositionHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 2
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 4
    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 5
    iget-wide v8, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    sub-long/2addr v6, v4

    .line 6
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->minimumSearchRange:I

    int-to-long v10, v10

    cmp-long v6, v6, v10

    const/4 v7, 0x0

    if-gtz v6, :cond_0

    .line 7
    invoke-virtual {v0, v7, v4, v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 8
    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 9
    :cond_0
    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 11
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 12
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 13
    iget-wide v5, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    .line 14
    invoke-interface {v4, v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;->searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v4

    .line 15
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    const/4 v6, -0x3

    if-eq v5, v6, :cond_5

    const/4 v6, -0x2

    if-eq v5, v6, :cond_4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    if-nez v5, :cond_2

    .line 16
    iget-wide v5, v4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    .line 17
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    const/4 v3, 0x1

    .line 18
    iget-wide v5, v4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    .line 19
    invoke-virtual {v0, v3, v5, v6}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 20
    iget-wide v3, v4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    .line 21
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid case"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_3
    iget-wide v8, v4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    .line 24
    iget-wide v12, v4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    .line 25
    iput-wide v8, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 26
    iput-wide v12, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 27
    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v10, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v14, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 28
    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    goto :goto_0

    .line 29
    :cond_4
    iget-wide v8, v4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    .line 30
    iget-wide v12, v4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    .line 31
    iput-wide v8, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 32
    iput-wide v12, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 33
    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v10, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v14, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    move-wide/from16 v16, v4

    .line 34
    invoke-static/range {v6 .. v17}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    goto/16 :goto_0

    .line 35
    :cond_5
    invoke-virtual {v0, v7, v8, v9}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 36
    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public final isSeeking()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final markSeekOperationFinished(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "foundTargetFrame",
            "resultPosition"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    return-void
.end method

.method public final seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "position",
            "seekPositionHolder"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide p0

    cmp-long p0, p2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iput-wide p2, p4, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 p0, 0x1

    return p0
.end method

.method public final setSeekTargetUs(J)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v1, :cond_0

    .line 2
    iget-wide v4, v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v14, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 4
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide v4

    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 6
    iget-wide v6, v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    .line 7
    iget-wide v8, v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    .line 8
    iget-wide v10, v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    .line 9
    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    move-wide v15, v12

    .line 10
    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    move-object v1, v14

    move-wide/from16 v2, p1

    move-wide/from16 v17, v12

    move-wide v12, v15

    move-object v0, v14

    move-wide/from16 v14, v17

    .line 11
    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    .line 12
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    return-void
.end method

.method public final skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-ltz p0, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long p0, p2, v0

    if-gtz p0, :cond_0

    long-to-int p0, p2

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
