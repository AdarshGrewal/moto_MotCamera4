.class public final Lcom/google/android/exoplayer2/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public format:Lcom/google/android/exoplayer2/Format;

.field public formatId:Ljava/lang/String;

.field public final headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public syncBytes:I

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
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_19

    .line 3
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v2, :cond_15

    if-eq v2, v6, :cond_3

    if-ne v2, v7, :cond_2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 6
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 7
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    if-ne v3, v9, :cond_0

    .line 8
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v6, v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 10
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v2, v5

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    .line 11
    :cond_1
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 13
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 14
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    iget v10, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    const/16 v11, 0x12

    rsub-int/lit8 v10, v10, 0x12

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 16
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 17
    iget-object v12, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v13, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v12, v13, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 19
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    if-ne v2, v11, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    if-eqz v2, :cond_0

    .line 20
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 21
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 22
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    const/16 v10, 0xe

    const/4 v13, -0x2

    const/16 v14, 0x1f

    const/4 v11, -0x1

    if-nez v9, :cond_d

    .line 23
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 24
    aget-byte v8, v2, v4

    const/16 v3, 0x7f

    if-ne v8, v3, :cond_5

    .line 25
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    goto/16 :goto_7

    .line 26
    :cond_5
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 27
    aget-byte v8, v3, v4

    if-eq v8, v13, :cond_7

    aget-byte v8, v3, v4

    if-ne v8, v11, :cond_6

    goto :goto_2

    :cond_6
    move v8, v4

    goto :goto_3

    :cond_7
    :goto_2
    move v8, v6

    :goto_3
    if-eqz v8, :cond_8

    move v8, v4

    .line 28
    :goto_4
    array-length v13, v3

    sub-int/2addr v13, v6

    if-ge v8, v13, :cond_8

    .line 29
    aget-byte v13, v3, v8

    add-int/lit8 v16, v8, 0x1

    .line 30
    aget-byte v17, v3, v16

    aput-byte v17, v3, v8

    .line 31
    aput-byte v13, v3, v16

    add-int/lit8 v8, v8, 0x2

    goto :goto_4

    .line 32
    :cond_8
    new-instance v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v8, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 33
    aget-byte v13, v3, v4

    if-ne v13, v14, :cond_a

    .line 34
    new-instance v13, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 35
    :goto_5
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v14

    const/16 v12, 0x10

    if-lt v14, v12, :cond_a

    .line 36
    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 37
    invoke-virtual {v13, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    and-int/lit16 v12, v12, 0x3fff

    .line 38
    iget v14, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v14, v14, 0x8

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 39
    iget v7, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v18, v7, 0x8

    sub-int v18, v18, v14

    const v19, 0xff00

    shr-int v7, v19, v7

    shl-int v19, v6, v18

    add-int/lit8 v19, v19, -0x1

    or-int v7, v7, v19

    .line 40
    iget-object v4, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v11, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v21, v4, v11

    and-int v7, v7, v21

    int-to-byte v7, v7

    aput-byte v7, v4, v11

    rsub-int/lit8 v7, v14, 0xe

    ushr-int v14, v12, v7

    .line 41
    aget-byte v21, v4, v11

    shl-int v14, v14, v18

    or-int v14, v14, v21

    int-to-byte v14, v14

    aput-byte v14, v4, v11

    add-int/2addr v11, v6

    :goto_6
    if-le v7, v5, :cond_9

    .line 42
    iget-object v4, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    add-int/lit8 v14, v11, 0x1

    add-int/lit8 v7, v7, -0x8

    ushr-int v5, v12, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    move v11, v14

    const/16 v5, 0x8

    goto :goto_6

    :cond_9
    rsub-int/lit8 v4, v7, 0x8

    .line 43
    iget-object v5, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    aget-byte v14, v5, v11

    shl-int v21, v6, v4

    const/16 v20, -0x1

    add-int/lit8 v21, v21, -0x1

    and-int v14, v14, v21

    int-to-byte v14, v14

    aput-byte v14, v5, v11

    shl-int v7, v6, v7

    sub-int/2addr v7, v6

    and-int/2addr v7, v12

    .line 44
    aget-byte v12, v5, v11

    shl-int v4, v7, v4

    or-int/2addr v4, v12

    int-to-byte v4, v4

    aput-byte v4, v5, v11

    .line 45
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 46
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v7, 0x2

    const/4 v11, -0x1

    goto :goto_5

    .line 47
    :cond_a
    array-length v4, v3

    .line 48
    iput-object v3, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v3, 0x0

    .line 49
    iput v3, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 50
    iput v3, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 51
    iput v4, v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    move-object v3, v8

    :goto_7
    const/16 v4, 0x3c

    .line 52
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v4, 0x6

    .line 53
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 54
    sget-object v4, Lcom/google/android/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v4, v4, v5

    const/4 v5, 0x4

    .line 55
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 56
    sget-object v5, Lcom/google/android/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v5, v5, v7

    const/4 v7, 0x5

    .line 57
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 58
    sget-object v7, Lcom/google/android/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v11, v7

    if-lt v8, v11, :cond_b

    const/4 v7, -0x1

    const/4 v8, 0x2

    goto :goto_8

    .line 59
    :cond_b
    aget v7, v7, v8

    mul-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x2

    div-int/2addr v7, v8

    :goto_8
    const/16 v11, 0xa

    .line 60
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 61
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-lez v3, :cond_c

    move v3, v6

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    add-int/2addr v4, v3

    .line 62
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 63
    iput-object v9, v3, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const-string v8, "audio/vnd.dts"

    .line 64
    iput-object v8, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 65
    iput v7, v3, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 66
    iput v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 67
    iput v5, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    const/4 v4, 0x0

    .line 68
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 69
    iput-object v15, v3, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 70
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 71
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    .line 72
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 v3, 0x0

    goto :goto_a

    :cond_d
    move v3, v4

    .line 73
    :goto_a
    aget-byte v4, v2, v3

    const/4 v3, 0x7

    const/4 v5, -0x2

    if-eq v4, v5, :cond_10

    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_e

    const/4 v4, 0x5

    .line 74
    aget-byte v5, v2, v4

    const/4 v4, 0x3

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0xc

    const/4 v5, 0x6

    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x4

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    aget-byte v7, v2, v3

    goto :goto_c

    :cond_e
    const/4 v4, 0x3

    const/4 v5, 0x6

    const/4 v8, 0x4

    .line 75
    aget-byte v7, v2, v5

    and-int/2addr v4, v7

    shl-int/lit8 v4, v4, 0xc

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    const/16 v5, 0x8

    aget-byte v5, v2, v5

    goto :goto_b

    :cond_f
    const/4 v4, 0x3

    const/4 v8, 0x4

    .line 76
    aget-byte v5, v2, v3

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0xc

    const/4 v5, 0x6

    aget-byte v7, v2, v5

    and-int/lit16 v5, v7, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    const/16 v5, 0x9

    aget-byte v5, v2, v5

    :goto_b
    const/16 v7, 0x3c

    and-int/2addr v5, v7

    const/4 v7, 0x2

    shr-int/2addr v5, v7

    or-int/2addr v4, v5

    add-int/2addr v4, v6

    move v5, v6

    goto :goto_d

    :cond_10
    const/4 v8, 0x4

    .line 77
    aget-byte v4, v2, v8

    const/4 v5, 0x3

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0xc

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-byte v7, v2, v5

    :goto_c
    and-int/lit16 v5, v7, 0xf0

    shr-int/2addr v5, v8

    or-int/2addr v4, v5

    add-int/2addr v4, v6

    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_11

    mul-int/lit8 v4, v4, 0x10

    .line 78
    div-int/2addr v4, v10

    .line 79
    :cond_11
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    const-wide/32 v4, 0xf4240

    const/4 v7, 0x0

    .line 80
    aget-byte v8, v2, v7

    const/4 v7, -0x2

    if-eq v8, v7, :cond_14

    const/4 v7, -0x1

    if-eq v8, v7, :cond_13

    const/16 v7, 0x1f

    if-eq v8, v7, :cond_12

    const/4 v7, 0x4

    .line 81
    aget-byte v3, v2, v7

    and-int/2addr v3, v6

    const/4 v8, 0x6

    shl-int/2addr v3, v8

    const/4 v9, 0x5

    aget-byte v2, v2, v9

    goto :goto_f

    :cond_12
    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x5

    .line 82
    aget-byte v9, v2, v9

    and-int/2addr v3, v9

    shl-int/2addr v3, v7

    aget-byte v2, v2, v8

    goto :goto_e

    :cond_13
    const/4 v7, 0x4

    .line 83
    aget-byte v8, v2, v7

    and-int/2addr v8, v3

    shl-int/lit8 v7, v8, 0x4

    aget-byte v2, v2, v3

    move v3, v7

    :goto_e
    const/16 v7, 0x3c

    and-int/2addr v2, v7

    goto :goto_10

    :cond_14
    const/4 v3, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    .line 84
    aget-byte v3, v2, v3

    and-int/2addr v3, v6

    shl-int/2addr v3, v8

    aget-byte v2, v2, v7

    :goto_f
    and-int/lit16 v2, v2, 0xfc

    :goto_10
    const/4 v7, 0x2

    shr-int/2addr v2, v7

    or-int/2addr v2, v3

    add-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    mul-long/2addr v2, v4

    .line 85
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 86
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 87
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v4, 0x12

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v2, 0x2

    .line 88
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 89
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_18

    .line 90
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    or-int/2addr v2, v4

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    const v4, 0x7ffe8001

    if-eq v2, v4, :cond_17

    const v4, -0x180fe80

    if-eq v2, v4, :cond_17

    const v4, 0x1fffe800

    if-eq v2, v4, :cond_17

    const v4, -0xe0ff18

    if-ne v2, v4, :cond_16

    goto :goto_11

    :cond_16
    const/4 v4, 0x0

    goto :goto_12

    :cond_17
    :goto_11
    move v4, v6

    :goto_12
    if-eqz v4, :cond_15

    .line 92
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 93
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x0

    .line 94
    aput-byte v4, v3, v5

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 95
    aput-byte v4, v3, v6

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x2

    .line 96
    aput-byte v4, v3, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x3

    .line 97
    aput-byte v2, v3, v4

    const/4 v2, 0x4

    .line 98
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    const/4 v7, 0x0

    .line 99
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    move v4, v6

    goto :goto_13

    :cond_18
    const/4 v7, 0x0

    move v4, v7

    :goto_13
    if-eqz v4, :cond_0

    .line 100
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    :cond_19
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

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

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
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    return-void
.end method
