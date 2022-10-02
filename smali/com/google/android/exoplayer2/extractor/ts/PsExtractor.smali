.class public final Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# instance fields
.field public final durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

.field public foundAllTracks:Z

.field public foundAudioTrack:Z

.field public foundVideoTrack:Z

.field public hasOutputSeekMap:Z

.field public lastTrackPosition:J

.field public output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

.field public final psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field public final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "seekPosition"
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
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v10

    const-wide/16 v3, -0x1

    cmp-long v3, v10, v3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    move v4, v13

    :goto_0
    const/16 v14, 0x1ba

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_c

    .line 3
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    .line 4
    iget-boolean v7, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isDurationRead:Z

    if-nez v7, :cond_c

    .line 5
    iget-boolean v0, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    const-wide/16 v7, 0x4e20

    if-nez v0, :cond_4

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v9

    .line 7
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v0, v7

    int-to-long v7, v0

    sub-long/2addr v9, v7

    .line 8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    cmp-long v3, v7, v9

    if-eqz v3, :cond_1

    .line 9
    iput-wide v9, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto/16 :goto_6

    .line 10
    :cond_1
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 12
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 13
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 14
    invoke-interface {v1, v2, v13, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 15
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 16
    iget v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 17
    iget v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/lit8 v2, v2, -0x4

    :goto_1
    if-lt v2, v1, :cond_3

    .line 18
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 19
    invoke-virtual {v4, v3, v2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v3

    if-ne v3, v14, :cond_2

    add-int/lit8 v3, v2, 0x4

    .line 20
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 21
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-eqz v3, :cond_2

    move-wide v5, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 22
    :cond_3
    :goto_2
    iput-wide v5, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 23
    iput-boolean v12, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    goto :goto_5

    .line 24
    :cond_4
    iget-wide v9, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    cmp-long v0, v9, v5

    if-nez v0, :cond_5

    .line 25
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    goto/16 :goto_7

    .line 26
    :cond_5
    iget-boolean v0, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    if-nez v0, :cond_9

    .line 27
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v0, v7

    .line 28
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    int-to-long v9, v13

    cmp-long v3, v7, v9

    if-eqz v3, :cond_6

    .line 29
    iput-wide v9, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_6

    .line 30
    :cond_6
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 31
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 32
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 33
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 34
    invoke-interface {v1, v2, v13, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 35
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 36
    iget v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 37
    iget v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    :goto_3
    add-int/lit8 v3, v2, -0x3

    if-ge v1, v3, :cond_8

    .line 38
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 39
    invoke-virtual {v4, v3, v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v3

    if-ne v3, v14, :cond_7

    add-int/lit8 v3, v1, 0x4

    .line 40
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 41
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-eqz v3, :cond_7

    move-wide v5, v7

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 42
    :cond_8
    :goto_4
    iput-wide v5, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 43
    iput-boolean v12, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    :goto_5
    move v12, v13

    :goto_6
    move v13, v12

    goto :goto_7

    .line 44
    :cond_9
    iget-wide v2, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_a

    .line 45
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    goto :goto_7

    .line 46
    :cond_a
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    .line 47
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v7, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    invoke-virtual {v0, v7, v8}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v7

    sub-long/2addr v7, v2

    .line 48
    iput-wide v7, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v7, v2

    if-gez v0, :cond_b

    const/16 v0, 0x41

    const-string v2, "Invalid duration: "

    const-string v3, ". Using TIME_UNSET instead."

    .line 49
    invoke-static {v0, v2, v7, v8, v3}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PsDurationReader"

    .line 50
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-wide v5, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    .line 52
    :cond_b
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    :goto_7
    return v13

    .line 53
    :cond_c
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v4, :cond_e

    .line 54
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    .line 55
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    .line 56
    iget-wide v7, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_d

    .line 57
    new-instance v15, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    .line 58
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    move-object v4, v15

    move-wide v6, v7

    move-wide v8, v10

    .line 59
    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;JJ)V

    iput-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    .line 60
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 61
    iget-object v5, v15, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 62
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    goto :goto_8

    .line 63
    :cond_d
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide/16 v14, 0x0

    .line 64
    invoke-direct {v5, v7, v8, v14, v15}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 65
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 66
    :cond_e
    :goto_8
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 67
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 68
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    if-eqz v3, :cond_10

    .line 69
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v10, v2

    const-wide/16 v2, -0x1

    goto :goto_9

    :cond_10
    const-wide/16 v2, -0x1

    const-wide/16 v10, -0x1

    :goto_9
    cmp-long v2, v10, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_11

    const-wide/16 v4, 0x4

    cmp-long v2, v10, v4

    if-gez v2, :cond_11

    return v3

    .line 70
    :cond_11
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 71
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x4

    .line 72
    invoke-interface {v1, v2, v13, v4, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_12

    return v3

    .line 73
    :cond_12
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 74
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const/16 v5, 0x1b9

    if-ne v2, v5, :cond_13

    return v3

    :cond_13
    const/16 v3, 0x1ba

    if-ne v2, v3, :cond_14

    .line 75
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 76
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v3, 0xa

    .line 77
    invoke-interface {v1, v2, v13, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 78
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 79
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    .line 80
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v13

    :cond_14
    const/16 v3, 0x1bb

    const/4 v5, 0x2

    const/4 v6, 0x6

    if-ne v2, v3, :cond_15

    .line 81
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 82
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 83
    invoke-interface {v1, v2, v13, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 84
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 85
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, v6

    .line 86
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v13

    :cond_15
    and-int/lit16 v3, v2, -0x100

    const/16 v7, 0x8

    shr-int/2addr v3, v7

    if-eq v3, v12, :cond_16

    .line 87
    invoke-interface {v1, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v13

    :cond_16
    and-int/lit16 v2, v2, 0xff

    .line 88
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    .line 89
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v8, :cond_1c

    if-nez v3, :cond_1a

    const/16 v8, 0xbd

    const/4 v9, 0x0

    if-ne v2, v8, :cond_17

    .line 90
    new-instance v8, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    .line 91
    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    .line 92
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 93
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    :goto_a
    move-object v9, v8

    goto :goto_b

    :cond_17
    and-int/lit16 v8, v2, 0xe0

    const/16 v10, 0xc0

    if-ne v8, v10, :cond_18

    .line 94
    new-instance v8, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    .line 95
    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    .line 96
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 97
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_a

    :cond_18
    and-int/lit16 v8, v2, 0xf0

    const/16 v10, 0xe0

    if-ne v8, v10, :cond_19

    .line 98
    new-instance v8, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    .line 99
    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    .line 100
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundVideoTrack:Z

    .line 101
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_a

    :cond_19
    :goto_b
    if-eqz v9, :cond_1a

    .line 102
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v8, 0x100

    const/high16 v10, -0x80000000

    .line 103
    invoke-direct {v3, v10, v2, v8}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 104
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v9, v8, v3}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 105
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-direct {v3, v9, v8}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 106
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :cond_1a
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz v2, :cond_1b

    .line 108
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v10, 0x2000

    add-long/2addr v8, v10

    goto :goto_c

    :cond_1b
    const-wide/32 v8, 0x100000

    .line 109
    :goto_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-lez v2, :cond_1c

    .line 110
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 111
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 112
    :cond_1c
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 113
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 114
    invoke-interface {v1, v2, v13, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 115
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 116
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    add-int/2addr v2, v6

    if-nez v3, :cond_1d

    .line 117
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto/16 :goto_d

    .line 118
    :cond_1d
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 119
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 120
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 121
    invoke-interface {v1, v5, v13, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 122
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 123
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 124
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v13, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 125
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 126
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 127
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    .line 128
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    .line 129
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 130
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 131
    iget-object v6, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-virtual {v1, v6, v13, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 132
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const-wide/16 v6, 0x0

    .line 133
    iput-wide v6, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 134
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v2, :cond_1f

    .line 135
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 136
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v6, v2

    const/16 v2, 0x1e

    shl-long/2addr v6, v2

    .line 137
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 138
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    shl-int/2addr v8, v9

    int-to-long v10, v8

    or-long/2addr v6, v10

    .line 139
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 140
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    int-to-long v10, v8

    or-long/2addr v6, v10

    .line 141
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 142
    iget-boolean v8, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v8, :cond_1e

    iget-boolean v8, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v8, :cond_1e

    .line 143
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 144
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v10, v5

    shl-long/2addr v10, v2

    .line 145
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 146
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v9

    int-to-long v14, v2

    or-long/2addr v10, v14

    .line 147
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 148
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v8, v2

    or-long/2addr v8, v10

    .line 149
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 150
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 151
    iput-boolean v12, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 152
    :cond_1e
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 153
    :cond_1f
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    invoke-interface {v2, v5, v6, v4}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 154
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 155
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 156
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 157
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v1, v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    :goto_d
    return v13
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "timeUs"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    cmp-long p1, v3, p3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    move p1, p2

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->reset(J)V

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_4
    move p1, v2

    .line 6
    :goto_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    .line 8
    iput-boolean v2, p2, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 9
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0xe

    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 1
    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 2
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr p0, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr p0, v4

    const/4 v4, 0x3

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr p0, v6

    const/16 v6, 0x1ba

    if-eq v6, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    .line 3
    aget-byte v6, v0, p0

    and-int/lit16 v6, v6, 0xc4

    const/16 v7, 0x44

    if-eq v6, v7, :cond_1

    return v1

    :cond_1
    const/4 v6, 0x6

    .line 4
    aget-byte v6, v0, v6

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_2

    return v1

    .line 5
    :cond_2
    aget-byte v6, v0, v5

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_3

    return v1

    :cond_3
    const/16 p0, 0x9

    .line 6
    aget-byte p0, v0, p0

    and-int/2addr p0, v2

    if-eq p0, v2, :cond_4

    return v1

    :cond_4
    const/16 p0, 0xc

    .line 7
    aget-byte p0, v0, p0

    and-int/2addr p0, v4

    if-eq p0, v4, :cond_5

    return v1

    :cond_5
    const/16 p0, 0xd

    .line 8
    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x7

    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 10
    invoke-interface {p1, v0, v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 11
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v5

    or-int/2addr p0, p1

    aget-byte p1, v0, v3

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    if-ne v2, p0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method
