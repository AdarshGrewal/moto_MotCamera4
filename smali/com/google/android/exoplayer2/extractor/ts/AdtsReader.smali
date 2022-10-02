.class public final Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field public static final ID3_IDENTIFIER:[B


# instance fields
.field public final adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public bytesRead:I

.field public currentFrameVersion:I

.field public currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public currentSampleDuration:J

.field public final exposeId3:Z

.field public firstFrameSampleRateIndex:I

.field public firstFrameVersion:I

.field public formatId:Ljava/lang/String;

.field public foundFirstFrame:Z

.field public hasCrc:Z

.field public hasOutputFormat:Z

.field public final id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final language:Ljava/lang/String;

.field public matchState:I

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public timeUs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exposeId3",
            "language"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    .line 10
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    return-void
.end method

.method public static isAdtsSyncWord(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidateSyncWord"
        }
    .end annotation

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 4
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_27

    .line 5
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    const/16 v3, 0xd

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_d

    if-eq v2, v10, :cond_9

    const/16 v4, 0xa

    if-eq v2, v9, :cond_8

    if-eq v2, v7, :cond_3

    if-ne v2, v8, :cond_2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 8
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 9
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    if-ne v3, v8, :cond_0

    .line 10
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    .line 11
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 12
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    goto :goto_0

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 15
    :cond_3
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    const/4 v11, 0x5

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    move v2, v11

    .line 16
    :goto_1
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v12, v12, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 18
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    if-nez v2, :cond_6

    .line 19
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v10

    if-eq v2, v9, :cond_5

    const/16 v4, 0x3d

    .line 20
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but assuming AAC LC."

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AdtsReader"

    .line 21
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    .line 22
    :cond_5
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 23
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 24
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    new-array v13, v9, [B

    shl-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v14, v12, 0x1

    and-int/2addr v14, v6

    or-int/2addr v2, v14

    int-to-byte v2, v2

    aput-byte v2, v13, v5

    shl-int/lit8 v2, v12, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x78

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v13, v10

    .line 25
    invoke-static {v13}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v2

    .line 26
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 27
    iput-object v6, v4, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const-string v6, "audio/mp4a-latm"

    .line 28
    iput-object v6, v4, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 29
    iget-object v6, v2, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 30
    iput-object v6, v4, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 31
    iget v6, v2, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 32
    iput v6, v4, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 33
    iget v2, v2, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 34
    iput v2, v4, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 35
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 36
    iput-object v2, v4, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 37
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 38
    iput-object v2, v4, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    const-wide/32 v6, 0x3d090000

    .line 40
    iget v4, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v12, v4

    div-long/2addr v6, v12

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 41
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 42
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    goto :goto_2

    .line 43
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 44
    :goto_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 45
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    sub-int/2addr v2, v9

    sub-int/2addr v2, v11

    .line 46
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, -0x2

    .line 47
    :cond_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 48
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 49
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 50
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 51
    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 52
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    goto/16 :goto_0

    .line 53
    :cond_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 54
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 55
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 57
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 58
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 59
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/2addr v3, v4

    .line 60
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 61
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 62
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const-wide/16 v4, 0x0

    .line 63
    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 64
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    goto/16 :goto_0

    .line 65
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    .line 66
    :cond_a
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v3, v2, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 67
    iget-object v6, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 68
    iget v11, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 69
    aget-byte v6, v6, v11

    aput-byte v6, v3, v5

    .line 70
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 71
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 72
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v3, v4, :cond_b

    if-eq v2, v3, :cond_b

    .line 73
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    goto/16 :goto_0

    .line 75
    :cond_b
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v3, :cond_c

    .line 76
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 77
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentFrameVersion:I

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 78
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 79
    :cond_c
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 80
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    goto/16 :goto_0

    .line 81
    :cond_d
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 82
    iget v11, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 83
    iget v12, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    :goto_3
    if-ge v11, v12, :cond_26

    add-int/lit8 v13, v11, 0x1

    .line 84
    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    .line 85
    iget v14, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_20

    int-to-byte v14, v11

    and-int/lit16 v14, v14, 0xff

    const v16, 0xff00

    or-int v14, v14, v16

    .line 86
    invoke-static {v14}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 87
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v14, :cond_1d

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 88
    invoke-virtual {v1, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 89
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v15, v15, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->tryRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v15

    if-nez v15, :cond_e

    goto/16 :goto_5

    .line 90
    :cond_e
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v15, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 91
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v15, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 92
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameVersion:I

    if-eq v5, v4, :cond_f

    if-eq v15, v5, :cond_f

    goto/16 :goto_5

    .line 93
    :cond_f
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v5, v4, :cond_12

    .line 94
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-virtual {v0, v1, v5, v10}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->tryRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_4

    .line 95
    :cond_10
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 96
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 97
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v5, v9, :cond_11

    goto/16 :goto_5

    :cond_11
    add-int/lit8 v5, v14, 0x2

    .line 98
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 99
    :cond_12
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-virtual {v0, v1, v5, v8}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->tryRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_4

    .line 100
    :cond_13
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0xe

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 101
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-ge v5, v6, :cond_14

    goto :goto_5

    .line 102
    :cond_14
    iget-object v9, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 103
    iget v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/2addr v14, v5

    if-lt v14, v3, :cond_15

    goto :goto_4

    .line 104
    :cond_15
    aget-byte v5, v9, v14

    if-ne v5, v4, :cond_17

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v3, :cond_16

    goto :goto_4

    .line 105
    :cond_16
    aget-byte v3, v9, v14

    and-int/lit16 v3, v3, 0xff

    or-int v3, v3, v16

    .line 106
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 107
    aget-byte v3, v9, v14

    and-int/lit8 v3, v3, 0x8

    shr-int/2addr v3, v7

    if-ne v3, v15, :cond_1c

    goto :goto_4

    .line 108
    :cond_17
    aget-byte v5, v9, v14

    const/16 v15, 0x49

    if-eq v5, v15, :cond_18

    goto :goto_5

    :cond_18
    add-int/lit8 v5, v14, 0x1

    if-ne v5, v3, :cond_19

    goto :goto_4

    .line 109
    :cond_19
    aget-byte v5, v9, v5

    const/16 v15, 0x44

    if-eq v5, v15, :cond_1a

    goto :goto_5

    :cond_1a
    add-int/lit8 v14, v14, 0x2

    if-ne v14, v3, :cond_1b

    goto :goto_4

    .line 110
    :cond_1b
    aget-byte v3, v9, v14

    const/16 v5, 0x33

    if-ne v3, v5, :cond_1c

    :goto_4
    move v3, v10

    goto :goto_6

    :cond_1c
    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_20

    :cond_1d
    and-int/lit8 v2, v11, 0x8

    shr-int/2addr v2, v7

    .line 111
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentFrameVersion:I

    and-int/lit8 v2, v11, 0x1

    if-nez v2, :cond_1e

    move v2, v10

    goto :goto_7

    :cond_1e
    const/4 v2, 0x0

    .line 112
    :goto_7
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    .line 113
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v2, :cond_1f

    .line 114
    iput v10, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    const/4 v2, 0x0

    .line 115
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    goto :goto_8

    :cond_1f
    const/4 v2, 0x0

    .line 116
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 117
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 118
    :goto_8
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    .line 119
    :cond_20
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    or-int v5, v11, v3

    const/16 v9, 0x149

    if-eq v5, v9, :cond_25

    const/16 v9, 0x1ff

    if-eq v5, v9, :cond_24

    const/16 v9, 0x344

    if-eq v5, v9, :cond_23

    const/16 v9, 0x433

    if-eq v5, v9, :cond_22

    const/16 v5, 0x100

    if-eq v3, v5, :cond_21

    .line 120
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    const/4 v3, 0x2

    const/4 v5, 0x0

    goto :goto_a

    :cond_21
    const/4 v3, 0x2

    const/4 v5, 0x0

    goto :goto_9

    :cond_22
    const/4 v3, 0x2

    .line 121
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 122
    sget-object v2, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v2, v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    const/4 v5, 0x0

    .line 123
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 124
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 125
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_23
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v9, 0x400

    .line 126
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_9

    :cond_24
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v9, 0x200

    .line 127
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_9

    :cond_25
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v9, 0x300

    .line 128
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    :goto_9
    move v11, v13

    :goto_a
    move v9, v3

    const/16 v3, 0xd

    goto/16 :goto_3

    .line 129
    :cond_26
    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_27
    return-void
.end method

.method public final continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "targetLength"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 3
    iget-object v2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v2, v3, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 5
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    if-ne p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
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

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const-string p2, "application/id3"

    .line 11
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    .line 13
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    :goto_0
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
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    return-void
.end method

.method public final setFindingSampleState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    const/16 v0, 0x100

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    return-void
.end method

.method public final tryRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "targetLength"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p0

    const/4 v0, 0x0

    if-ge p0, p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {p0, v1, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr p0, p3

    iput p0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 p0, 0x1

    return p0
.end method
