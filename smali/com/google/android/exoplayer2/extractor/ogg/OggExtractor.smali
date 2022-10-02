.class public Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# instance fields
.field public output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

.field public streamReaderInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 19
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

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    :cond_0
    const-string v0, "Failed to determine bitstream type"

    .line 5
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 7
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    .line 8
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 9
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 10
    iput-object v7, v6, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 11
    iput-object v2, v6, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 12
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 13
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    .line 14
    :cond_2
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    .line 15
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 17
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v14, 0x2

    if-eqz v2, :cond_c

    if-eq v2, v5, :cond_b

    if-eq v2, v14, :cond_4

    if-ne v2, v9, :cond_3

    goto/16 :goto_5

    .line 18
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 19
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    .line 20
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-ltz v12, :cond_5

    move-object/from16 v12, p2

    .line 21
    iput-wide v2, v12, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    move v4, v5

    goto/16 :goto_9

    :cond_5
    cmp-long v12, v2, v6

    if-gez v12, :cond_6

    const-wide/16 v12, 0x2

    add-long/2addr v2, v12

    neg-long v2, v2

    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 23
    :cond_6
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v2, :cond_7

    .line 24
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 26
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    .line 27
    :cond_7
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    cmp-long v2, v2, v10

    if-gtz v2, :cond_9

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 28
    :cond_8
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    :goto_1
    move v4, v8

    goto/16 :goto_9

    .line 29
    :cond_9
    :goto_2
    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 30
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    .line 31
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v2

    cmp-long v5, v2, v10

    if-ltz v5, :cond_a

    .line 33
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long v10, v8, v2

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v5, v10, v12

    if-ltz v5, :cond_a

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    .line 34
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v10, v5

    div-long v13, v8, v10

    .line 35
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 36
    iget v8, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 37
    invoke-interface {v5, v1, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 38
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v15, 0x1

    .line 39
    iget v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    .line 40
    invoke-interface/range {v12 .. v18}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 41
    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 42
    :cond_a
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    goto/16 :goto_9

    .line 43
    :cond_b
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 44
    iput v14, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto/16 :goto_9

    .line 45
    :cond_c
    :goto_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 46
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    move v2, v4

    goto :goto_4

    .line 47
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v10, v12

    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 48
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    .line 49
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 50
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {v0, v2, v12, v13, v10}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 51
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_3

    :cond_e
    move v2, v5

    :goto_4
    if-nez v2, :cond_f

    :goto_5
    goto :goto_1

    .line 52
    :cond_f
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    iget v8, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    .line 53
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    if-nez v8, :cond_10

    .line 54
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v8, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 55
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    .line 56
    :cond_10
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    if-eqz v2, :cond_11

    .line 57
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    :goto_6
    move v7, v14

    goto :goto_8

    .line 58
    :cond_11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-nez v2, :cond_12

    .line 59
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$1;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_6

    .line 60
    :cond_12
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    .line 61
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 62
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_13

    move/from16 v18, v5

    goto :goto_7

    :cond_13
    move/from16 v18, v4

    .line 63
    :goto_7
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    iget v1, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget v5, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v1, v5

    int-to-long v5, v1

    iget-wide v1, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v8, v3

    move-object v9, v0

    move v7, v14

    move-wide v14, v5

    move-wide/from16 v16, v1

    invoke-direct/range {v8 .. v18}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;JJJJZ)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    .line 65
    :goto_8
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 66
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    .line 67
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 68
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 69
    array-length v3, v2

    const v5, 0xfe01

    if-ne v3, v5, :cond_14

    goto :goto_9

    .line 70
    :cond_14
    iget v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 71
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 72
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 73
    iget v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 74
    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    :goto_9
    return v4
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3
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
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    if-eqz p0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    .line 6
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 7
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    if-eqz p1, :cond_1

    .line 9
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long p1, p1

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    .line 10
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 11
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    sget p4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->startSeek(J)V

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    :cond_1
    :goto_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
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
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
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

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 5
    iget-object v4, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 6
    invoke-interface {p1, v4, v3, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 8
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 13
    :try_start_0
    invoke-static {v1, v2, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move p1, v3

    :goto_1
    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 16
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v4, v0

    if-ge p1, v4, :cond_4

    move p1, v3

    goto :goto_2

    .line 17
    :cond_4
    array-length p1, v0

    new-array p1, p1, [B

    .line 18
    array-length v4, v0

    .line 19
    iget-object v5, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v5, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget v5, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 21
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_5

    .line 22
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    :goto_3
    return v1

    :cond_5
    :goto_4
    return v3
.end method
