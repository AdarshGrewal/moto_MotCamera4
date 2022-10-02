.class public final Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public format:Lcom/google/android/exoplayer2/Format;

.field public formatId:Ljava/lang/String;

.field public final headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public final headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWas0B:Z

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

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

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
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_3d

    .line 3
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    const/16 v3, 0xb

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_37

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 6
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 7
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v3, v10, :cond_0

    .line 8
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 10
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    .line 11
    :cond_2
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 12
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 13
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    const/16 v9, 0x80

    rsub-int v8, v8, 0x80

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 15
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 16
    iget-object v10, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v11, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v10, v11, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 18
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne v2, v9, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    move v2, v5

    :goto_1
    if-eqz v2, :cond_0

    .line 19
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 20
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v7

    const/16 v8, 0x28

    .line 22
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v8, 0x5

    .line 23
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/16 v11, 0xa

    if-le v10, v11, :cond_5

    move v10, v6

    goto :goto_2

    :cond_5
    move v10, v5

    .line 24
    :goto_2
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/4 v7, -0x1

    const/16 v12, 0x8

    const/4 v13, 0x3

    if-eqz v10, :cond_2f

    const/16 v10, 0x10

    .line 25
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 26
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    if-eqz v15, :cond_8

    if-eq v15, v6, :cond_7

    if-eq v15, v4, :cond_6

    goto :goto_3

    :cond_6
    move v7, v4

    goto :goto_3

    :cond_7
    move v7, v6

    goto :goto_3

    :cond_8
    move v7, v5

    .line 27
    :goto_3
    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    add-int/2addr v3, v6

    mul-int/2addr v3, v4

    .line 29
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    if-ne v15, v13, :cond_9

    .line 30
    sget-object v16, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v17

    aget v16, v16, v17

    move v9, v13

    const/4 v5, 0x6

    goto :goto_4

    .line 31
    :cond_9
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 32
    sget-object v17, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v17, v17, v16

    .line 33
    sget-object v18, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v18, v18, v15

    move/from16 v9, v16

    move/from16 v5, v17

    move/from16 v16, v18

    :goto_4
    mul-int/lit16 v14, v5, 0x100

    .line 34
    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 35
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v20

    .line 36
    sget-object v21, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v21, v21, v4

    add-int v21, v21, v20

    .line 37
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 39
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_a
    if-nez v4, :cond_b

    .line 40
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 41
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 42
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_b
    if-ne v7, v6, :cond_c

    .line 43
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 44
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 45
    :cond_c
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    const/4 v11, 0x4

    if-eqz v10, :cond_25

    const/4 v10, 0x2

    if-le v4, v10, :cond_d

    .line 46
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_d
    and-int/lit8 v19, v4, 0x1

    if-eqz v19, :cond_e

    if-le v4, v10, :cond_e

    const/4 v10, 0x6

    .line 47
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_5

    :cond_e
    const/4 v10, 0x6

    :goto_5
    and-int/lit8 v18, v4, 0x4

    if-eqz v18, :cond_f

    .line 48
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_f
    if-eqz v20, :cond_10

    .line 49
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 50
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_10
    if-nez v7, :cond_25

    .line 51
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x6

    .line 52
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_6

    :cond_11
    const/4 v10, 0x6

    :goto_6
    if-nez v4, :cond_12

    .line 53
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 54
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 55
    :cond_12
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 56
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_13
    const/4 v10, 0x2

    .line 57
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    if-ne v12, v6, :cond_14

    .line 58
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    move v6, v10

    goto/16 :goto_9

    :cond_14
    if-ne v12, v10, :cond_15

    const/16 v10, 0xc

    .line 59
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_8

    :cond_15
    if-ne v12, v13, :cond_20

    .line 60
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 61
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 62
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 63
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 64
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 65
    :cond_16
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 66
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 67
    :cond_17
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 68
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 69
    :cond_18
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 70
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 71
    :cond_19
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 72
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 73
    :cond_1a
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 74
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 75
    :cond_1b
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 76
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 77
    :cond_1c
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 78
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 79
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 80
    :cond_1d
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 81
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 82
    :cond_1e
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 83
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 84
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1f

    const/4 v12, 0x7

    .line 85
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 86
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1f

    const/16 v12, 0x8

    .line 87
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_7

    :cond_1f
    const/16 v12, 0x8

    :goto_7
    const/4 v6, 0x2

    add-int/2addr v10, v6

    mul-int/2addr v10, v12

    .line 88
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 89
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    goto :goto_9

    :cond_20
    :goto_8
    const/4 v6, 0x2

    :goto_9
    if-ge v4, v6, :cond_22

    .line 90
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    const/16 v10, 0xe

    if-eqz v6, :cond_21

    .line 91
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_21
    if-nez v4, :cond_22

    .line 92
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 93
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 94
    :cond_22
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_25

    if-nez v9, :cond_23

    .line 95
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_b

    :cond_23
    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_25

    .line 96
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 97
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 98
    :cond_25
    :goto_b
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 99
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v5, 0x2

    if-ne v4, v5, :cond_26

    .line 100
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_26
    const/4 v6, 0x6

    if-lt v4, v6, :cond_27

    .line 101
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 102
    :cond_27
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v5, 0x8

    .line 103
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_c

    :cond_28
    const/16 v5, 0x8

    :goto_c
    if-nez v4, :cond_29

    .line 104
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 105
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_29
    if-ge v15, v13, :cond_2a

    .line 106
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    :cond_2a
    if-nez v7, :cond_2b

    if-eq v9, v13, :cond_2b

    .line 107
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    :cond_2b
    const/4 v4, 0x2

    if-ne v7, v4, :cond_2d

    if-eq v9, v13, :cond_2c

    .line 108
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2c
    const/4 v4, 0x6

    .line 109
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_d

    :cond_2d
    const/4 v4, 0x6

    .line 110
    :goto_d
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 111
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    const/16 v4, 0x8

    .line 112
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-ne v2, v5, :cond_2e

    const-string v2, "audio/eac3-joc"

    goto :goto_e

    :cond_2e
    const-string v2, "audio/eac3"

    :goto_e
    move/from16 v7, v16

    goto :goto_11

    :cond_2f
    const/16 v3, 0x20

    .line 113
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x2

    .line 114
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-ne v4, v13, :cond_30

    const/4 v3, 0x0

    goto :goto_f

    :cond_30
    const-string v3, "audio/ac3"

    :goto_f
    const/4 v5, 0x6

    .line 115
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 116
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v5

    const/16 v6, 0x8

    .line 117
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 118
    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_31

    const/4 v8, 0x1

    if-eq v6, v8, :cond_31

    const/4 v8, 0x2

    .line 119
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_10

    :cond_31
    const/4 v8, 0x2

    :goto_10
    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_32

    .line 120
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_32
    if-ne v6, v8, :cond_33

    .line 121
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 122
    :cond_33
    sget-object v8, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v9, v8

    if-ge v4, v9, :cond_34

    aget v7, v8, v4

    :cond_34
    const/16 v14, 0x600

    .line 123
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 124
    sget-object v4, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v4, v4, v6

    add-int v21, v4, v2

    move-object v2, v3

    move v3, v5

    :goto_11
    move/from16 v4, v21

    .line 125
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v5, :cond_35

    iget v6, v5, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v4, v6, :cond_35

    iget v6, v5, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v7, v6, :cond_35

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 126
    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 127
    :cond_35
    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->formatId:Ljava/lang/String;

    .line 128
    iput-object v6, v5, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 129
    iput-object v2, v5, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 130
    iput v4, v5, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 131
    iput v7, v5, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 132
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    .line 133
    iput-object v2, v5, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 134
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    .line 135
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 136
    :cond_36
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    const-wide/32 v2, 0xf4240

    int-to-long v4, v14

    mul-long/2addr v4, v2

    .line 137
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    .line 138
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 139
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v4, 0x80

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v2, 0x2

    .line 140
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto/16 :goto_0

    .line 141
    :cond_37
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/16 v4, 0x77

    if-lez v2, :cond_3c

    .line 142
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    if-nez v2, :cond_39

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v3, :cond_38

    const/4 v2, 0x1

    goto :goto_13

    :cond_38
    const/4 v2, 0x0

    :goto_13
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_12

    .line 144
    :cond_39
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v4, :cond_3a

    const/4 v5, 0x0

    .line 145
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    const/4 v5, 0x1

    goto :goto_15

    :cond_3a
    if-ne v2, v3, :cond_3b

    const/4 v5, 0x1

    goto :goto_14

    :cond_3b
    const/4 v5, 0x0

    .line 146
    :goto_14
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_12

    :cond_3c
    const/4 v5, 0x0

    :goto_15
    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 147
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 148
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 149
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    .line 150
    aput-byte v3, v5, v6

    .line 151
    aput-byte v4, v5, v2

    const/4 v2, 0x2

    .line 152
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    goto/16 :goto_0

    :cond_3d
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

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

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
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    return-void
.end method
