.class public final Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;,
        Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;
    }
.end annotation


# instance fields
.field public bytesSinceLastSync:I

.field public final continuityCounters:Landroid/util/SparseIntArray;

.field public final durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

.field public hasOutputSeekMap:Z

.field public id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

.field public final mode:I

.field public output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public final payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

.field public pcrPid:I

.field public pendingSeekToStart:Z

.field public remainingPmts:I

.field public final timestampAdjusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field

.field public final timestampSearchBytes:I

.field public final trackIds:Landroid/util/SparseBooleanArray;

.field public final trackPids:Landroid/util/SparseBooleanArray;

.field public tracksEnded:Z

.field public tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

.field public final tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "defaultTsPayloadReaderFlags",
            "timestampSearchBytes"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampSearchBytes:I

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 9
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 10
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    .line 11
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 12
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 13
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    .line 14
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    invoke-direct {v2, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    const/4 p3, -0x1

    .line 15
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    .line 16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 17
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    move p3, v0

    :goto_2
    if-ge p3, p2, :cond_2

    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance p3, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)V

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 13
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

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    const/16 v1, 0x47

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_18

    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v0, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_13

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    .line 5
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isDurationRead:Z

    if-nez v4, :cond_13

    .line 6
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    if-gtz p0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    goto/16 :goto_c

    .line 8
    :cond_1
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    if-nez v4, :cond_a

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v7

    .line 10
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v9, v4

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v4, v9

    int-to-long v9, v4

    sub-long/2addr v7, v9

    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-eqz v9, :cond_2

    .line 12
    iput-wide v7, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto/16 :goto_b

    .line 13
    :cond_2
    iget-object p2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 14
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 15
    iget-object p2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 16
    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 17
    invoke-interface {p1, p2, v6, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 18
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 19
    iget p2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 20
    iget v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/lit16 v7, v4, -0xbc

    :goto_1
    if-lt v7, p2, :cond_9

    .line 21
    iget-object v8, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v9, -0x4

    move v10, v6

    :goto_2
    const/4 v11, 0x4

    if-gt v9, v11, :cond_6

    mul-int/lit16 v11, v9, 0xbc

    add-int/2addr v11, v7

    if-lt v11, p2, :cond_4

    if-ge v11, v4, :cond_4

    .line 22
    aget-byte v11, v8, v11

    if-eq v11, v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v10, v5

    const/4 v11, 0x5

    if-ne v10, v11, :cond_5

    move v8, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v10, v6

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    move v8, v6

    :goto_4
    if-nez v8, :cond_7

    goto :goto_5

    .line 23
    :cond_7
    invoke-static {p1, v7, p0}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-eqz v10, :cond_8

    move-wide v2, v8

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 24
    :cond_9
    :goto_6
    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 25
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    goto :goto_a

    .line 26
    :cond_a
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_b

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    goto/16 :goto_c

    .line 28
    :cond_b
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v4, :cond_10

    .line 29
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v7, v4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v4, v7

    .line 30
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    int-to-long v9, v6

    cmp-long v7, v7, v9

    if-eqz v7, :cond_c

    .line 31
    iput-wide v9, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_b

    .line 32
    :cond_c
    iget-object p2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 33
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 34
    iget-object p2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 35
    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 36
    invoke-interface {p1, p2, v6, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 37
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 38
    iget p2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 39
    iget v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    :goto_7
    if-ge p2, v4, :cond_f

    .line 40
    iget-object v7, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 41
    aget-byte v7, v7, p2

    if-eq v7, v1, :cond_d

    goto :goto_8

    .line 42
    :cond_d
    invoke-static {p1, p2, p0}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-eqz v9, :cond_e

    move-wide v2, v7

    goto :goto_9

    :cond_e
    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 43
    :cond_f
    :goto_9
    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 44
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    :goto_a
    move v5, v6

    :goto_b
    move v6, v5

    goto :goto_c

    .line 45
    :cond_10
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long p0, v4, v2

    if-nez p0, :cond_11

    .line 46
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    goto :goto_c

    .line 47
    :cond_11
    iget-object p0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    .line 48
    iget-object p0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v7

    sub-long/2addr v7, v4

    .line 49
    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    cmp-long p0, v7, v10

    if-gez p0, :cond_12

    const/16 p0, 0x41

    const-string p2, "Invalid duration: "

    const-string v1, ". Using TIME_UNSET instead."

    .line 50
    invoke-static {p0, p2, v7, v8, v1}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "TsDurationReader"

    .line 51
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    .line 53
    :cond_12
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    :goto_c
    return v6

    .line 54
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_15

    .line 55
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    .line 57
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_14

    .line 58
    new-instance v12, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    .line 59
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 60
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampSearchBytes:I

    move-object v0, v12

    move-wide v2, v4

    move-wide v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;JJII)V

    iput-object v12, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 62
    iget-object v1, v12, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 63
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    goto :goto_d

    .line 64
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    .line 65
    invoke-direct {v1, v4, v5, v10, v11}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 66
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 67
    :cond_15
    :goto_d
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 69
    invoke-virtual {p0, v10, v11, v10, v11}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->seek(JJ)V

    .line 70
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-eqz v1, :cond_17

    .line 71
    iput-wide v10, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 v0, 0x0

    :cond_17
    move v6, v0

    const/4 v5, 0x1

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 73
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 74
    :cond_18
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 75
    iget-object v0, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 76
    iget v1, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    rsub-int v1, v1, 0x24b8

    const/16 v2, 0xbc

    if-ge v1, v2, :cond_1a

    .line 77
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-lez p2, :cond_19

    .line 78
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 79
    iget v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 80
    invoke-static {v0, v1, v0, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    :cond_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 82
    :cond_1a
    :goto_e
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    const/4 v1, -0x1

    if-ge p2, v2, :cond_1c

    .line 83
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 84
    iget p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    rsub-int v3, p2, 0x24b8

    .line 85
    invoke-interface {p1, v0, p2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v3

    if-ne v3, v1, :cond_1b

    move p1, v6

    goto :goto_f

    .line 86
    :cond_1b
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_e

    :cond_1c
    move p1, v5

    :goto_f
    if-nez p1, :cond_1d

    return v1

    .line 87
    :cond_1d
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 88
    iget p2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 89
    iget v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 90
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move v1, p2

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 91
    aget-byte v2, p1, v1

    const/16 v3, 0x47

    if-eq v2, v3, :cond_1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 92
    :cond_1e
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit16 p1, v1, 0xbc

    const/4 v2, 0x0

    if-le p1, v0, :cond_20

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    sub-int/2addr v1, p2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 94
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_21

    const/16 p2, 0x178

    if-gt v1, p2, :cond_1f

    goto :goto_11

    :cond_1f
    const-string p0, "Cannot find sync byte. Most likely not a Transport Stream."

    .line 95
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_20
    const/4 v0, 0x2

    .line 96
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 97
    :cond_21
    :goto_11
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 98
    iget v1, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-le p1, v1, :cond_22

    return v6

    .line 99
    :cond_22
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p2

    const/high16 v3, 0x800000

    and-int/2addr v3, p2

    if-eqz v3, :cond_23

    .line 100
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v6

    :cond_23
    const/high16 v3, 0x400000

    and-int/2addr v3, p2

    if-eqz v3, :cond_24

    move v3, v5

    goto :goto_12

    :cond_24
    move v3, v6

    :goto_12
    or-int/lit8 v3, v3, 0x0

    const v4, 0x1fff00

    and-int/2addr v4, p2

    shr-int/lit8 v4, v4, 0x8

    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_25

    move v7, v5

    goto :goto_13

    :cond_25
    move v7, v6

    :goto_13
    and-int/lit8 v10, p2, 0x10

    if-eqz v10, :cond_26

    move v10, v5

    goto :goto_14

    :cond_26
    move v10, v6

    :goto_14
    if-eqz v10, :cond_27

    .line 101
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    :cond_27
    if-nez v2, :cond_28

    .line 102
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v6

    .line 103
    :cond_28
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v10, v0, :cond_2a

    and-int/lit8 p2, p2, 0xf

    .line 104
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    add-int/lit8 v11, p2, -0x1

    invoke-virtual {v10, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 105
    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4, p2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v10, p2, :cond_29

    .line 106
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v6

    :cond_29
    add-int/2addr v10, v5

    and-int/lit8 v10, v10, 0xf

    if-eq p2, v10, :cond_2a

    .line 107
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->seek()V

    :cond_2a
    if-eqz v7, :cond_2c

    .line 108
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    .line 109
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_2b

    move v7, v0

    goto :goto_15

    :cond_2b
    move v7, v6

    :goto_15
    or-int/2addr v3, v7

    .line 110
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sub-int/2addr p2, v5

    invoke-virtual {v7, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 111
    :cond_2c
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    .line 112
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v7, v0, :cond_2e

    if-nez p2, :cond_2e

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 113
    invoke-virtual {v7, v4, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_16

    :cond_2d
    move v4, v6

    goto :goto_17

    :cond_2e
    :goto_16
    move v4, v5

    :goto_17
    if-eqz v4, :cond_2f

    .line 114
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 115
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v2, v4, v3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 116
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 117
    :cond_2f
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v1, v0, :cond_30

    if-nez p2, :cond_30

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz p2, :cond_30

    const-wide/16 v0, -0x1

    cmp-long p2, v8, v0

    if-eqz p2, :cond_30

    .line 118
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 119
    :cond_30
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v6
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 9
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
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_5

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, p2

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-nez v5, :cond_3

    .line 5
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    cmp-long v2, v5, p3

    if-eqz v2, :cond_2

    move v5, p2

    goto :goto_3

    :cond_2
    move v5, v0

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 6
    invoke-virtual {v4, p3, p4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->reset(J)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    cmp-long p1, p3, v2

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    .line 9
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v0

    .line 11
    :goto_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->seek()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 13
    :cond_7
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
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

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v0, 0x3ac

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, p0, v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    move v0, v1

    :goto_0
    const/16 v2, 0xbc

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_1
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v0

    .line 4
    aget-byte v3, p0, v3

    const/16 v5, 0x47

    if-eq v3, v5, :cond_0

    move v2, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_2

    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
