.class public final Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field public formatId:Ljava/lang/String;

.field public frameBytesRead:I

.field public frameDurationUs:J

.field public frameSize:I

.field public hasOutputFormat:Z

.field public final header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

.field public final headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWasFF:Z

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public state:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 4
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, -0x1

    .line 5
    aput-byte v2, v1, v0

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_c

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 7
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge v2, v7, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 10
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    .line 11
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 12
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 16
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 17
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v4, v6, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 18
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge v4, v5, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 22
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    goto/16 :goto_0

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    .line 24
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v4, :cond_6

    const-wide/32 v6, 0xf4240

    .line 25
    iget v4, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v8, v4

    mul-long/2addr v8, v6

    iget v4, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v6, v4

    div-long/2addr v8, v6

    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 26
    new-instance v6, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 27
    iput-object v7, v6, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 28
    iget-object v7, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 29
    iput-object v7, v6, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/16 v7, 0x1000

    .line 30
    iput v7, v6, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 31
    iget v0, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    .line 32
    iput v0, v6, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 33
    iput v4, v6, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 35
    iput-object v0, v6, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 36
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 37
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 38
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    .line 39
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 41
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    goto/16 :goto_0

    .line 42
    :cond_7
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 43
    iget v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 44
    iget v5, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    :goto_1
    if-ge v4, v5, :cond_b

    .line 45
    aget-byte v6, v0, v4

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_8

    move v6, v3

    goto :goto_2

    :cond_8
    move v6, v1

    .line 46
    :goto_2
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v7, :cond_9

    aget-byte v7, v0, v4

    const/16 v8, 0xe0

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_9

    move v7, v3

    goto :goto_3

    :cond_9
    move v7, v1

    .line 47
    :goto_3
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v7, :cond_a

    add-int/lit8 v5, v4, 0x1

    .line 48
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 49
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 50
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 51
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 52
    aget-byte v0, v0, v4

    aput-byte v0, v1, v3

    .line 53
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 54
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    :cond_b
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extractorOutput",
            "idGenerator"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pesTimeUs",
            "flags"
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method
