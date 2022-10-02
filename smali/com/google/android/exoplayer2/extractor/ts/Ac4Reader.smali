.class public final Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public format:Lcom/google/android/exoplayer2/Format;

.field public formatId:Ljava/lang/String;

.field public hasCRC:Z

.field public final headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public final headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWasAC:Z

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
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

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_f

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 7
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v1, v8, :cond_0

    .line 8
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 11
    :cond_2
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 13
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 14
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    const/16 v6, 0x10

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 15
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 16
    iget-object v7, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v8, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v7, v8, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 18
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne v0, v6, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    if-eqz v2, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    const-string v4, "audio/ac4"

    if-eqz v2, :cond_5

    iget v5, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v1, v5, :cond_5

    iget v5, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget v7, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v5, v7, :cond_5

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 23
    :cond_5
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 24
    iput-object v5, v2, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 25
    iput-object v4, v2, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 26
    iput v1, v2, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 27
    iget v4, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 28
    iput v4, v2, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 29
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 30
    iput-object v4, v2, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    .line 32
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 33
    :cond_6
    iget v2, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    const-wide/32 v4, 0xf4240

    .line 34
    iget v0, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v7, v0

    mul-long/2addr v7, v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v0

    div-long/2addr v7, v4

    iput-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleDurationUs:J

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v2, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 37
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    goto/16 :goto_0

    .line 38
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v4, 0x41

    const/16 v5, 0x40

    if-lez v0, :cond_d

    .line 39
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v6, 0xac

    if-nez v0, :cond_9

    .line 40
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v6, :cond_8

    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    goto :goto_2

    .line 41
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v6, :cond_a

    move v6, v2

    goto :goto_4

    :cond_a
    move v6, v3

    .line 42
    :goto_4
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    if-eq v0, v5, :cond_b

    if-ne v0, v4, :cond_7

    :cond_b
    if-ne v0, v4, :cond_c

    move v0, v2

    goto :goto_5

    :cond_c
    move v0, v3

    .line 43
    :goto_5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v3

    :goto_6
    if-eqz v0, :cond_0

    .line 44
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 46
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v6, -0x54

    .line 47
    aput-byte v6, v0, v3

    .line 48
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    move v4, v5

    :goto_7
    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 49
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_0

    :cond_f
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

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

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
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method
