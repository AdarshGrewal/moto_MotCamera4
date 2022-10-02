.class public final Lcom/google/android/exoplayer2/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# instance fields
.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field public final prefixFlags:[Z

.field public final prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field public sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

.field public final seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

.field public final seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field public final suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field public totalBytesWritten:J

.field public final vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seiReader"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 27
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
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_39

    .line 4
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 5
    iget v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 6
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 7
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 8
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    :goto_1
    if-ge v2, v3, :cond_38

    .line 9
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v4, v2, v3, v5}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 10
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    return-void

    :cond_0
    add-int/lit8 v6, v5, 0x3

    .line 11
    aget-byte v7, v4, v6

    and-int/lit8 v7, v7, 0x7e

    shr-int/lit8 v7, v7, 0x1

    sub-int v8, v5, v2

    if-lez v8, :cond_1

    .line 12
    invoke-virtual {v0, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    :cond_1
    sub-int v2, v3, v5

    .line 13
    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v11, v2

    sub-long/2addr v9, v11

    const/4 v5, 0x0

    if-gez v8, :cond_2

    neg-int v8, v8

    goto :goto_2

    :cond_2
    move v8, v5

    .line 14
    :goto_2
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    .line 15
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    .line 16
    iget-boolean v15, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-eqz v15, :cond_3

    iget-boolean v15, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v15, :cond_3

    .line 17
    iget-boolean v14, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v14, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 18
    iput-boolean v5, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    goto :goto_3

    .line 19
    :cond_3
    iget-boolean v5, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    if-nez v5, :cond_4

    iget-boolean v5, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v5, :cond_6

    :cond_4
    if-eqz v14, :cond_5

    .line 20
    iget-boolean v5, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v5, :cond_5

    .line 21
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    sub-long v14, v9, v14

    long-to-int v5, v14

    add-int/2addr v5, v2

    .line 22
    invoke-virtual {v13, v5}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 23
    :cond_5
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iput-wide v14, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 24
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v14, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    .line 25
    iget-boolean v5, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v5, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v5, 0x1

    .line 26
    iput-boolean v5, v13, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 27
    :cond_6
    :goto_3
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v5, :cond_28

    .line 28
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 29
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 30
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 31
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 32
    iget-boolean v13, v5, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v13, :cond_28

    .line 33
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 34
    iget-boolean v14, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v14, :cond_28

    .line 35
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 36
    iget-boolean v15, v14, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v15, :cond_28

    .line 37
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    move/from16 v16, v3

    .line 38
    iget v3, v5, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v17, v4

    iget v4, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v4, v3

    move/from16 v18, v6

    iget v6, v14, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v4, v6

    new-array v4, v4, [B

    .line 39
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v6, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object v3, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v6, v5, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move/from16 v20, v7

    iget v7, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget-object v3, v14, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v6, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v5, v6

    iget v6, v14, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v5, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v6, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-direct {v3, v5, v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BII)V

    const/16 v2, 0x2c

    .line 43
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x3

    .line 44
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 45
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    const/16 v6, 0x58

    .line 46
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v6, 0x8

    .line 47
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v5, :cond_9

    .line 48
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_7

    add-int/lit8 v7, v7, 0x59

    .line 49
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_8

    add-int/lit8 v7, v7, 0x8

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 50
    :cond_9
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v6, 0x2

    if-lez v5, :cond_a

    rsub-int/lit8 v7, v5, 0x8

    mul-int/2addr v7, v6

    .line 51
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 52
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 53
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v7

    if-ne v7, v2, :cond_b

    .line 54
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 55
    :cond_b
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v2

    .line 56
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v14

    .line 57
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 58
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v21

    .line 59
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v22

    .line 60
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v23

    .line 61
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v24

    move-wide/from16 v25, v9

    const/4 v9, 0x1

    if-eq v7, v9, :cond_d

    if-ne v7, v6, :cond_c

    goto :goto_5

    :cond_c
    move v10, v9

    goto :goto_6

    :cond_d
    :goto_5
    move v10, v6

    :goto_6
    if-ne v7, v9, :cond_e

    goto :goto_7

    :cond_e
    const/4 v6, 0x1

    :goto_7
    add-int v21, v21, v22

    mul-int v21, v21, v10

    sub-int v2, v2, v21

    add-int v23, v23, v24

    mul-int v23, v23, v6

    sub-int v14, v14, v23

    goto :goto_8

    :cond_f
    move-wide/from16 v25, v9

    .line 62
    :goto_8
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 63
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 64
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v6

    .line 65
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    goto :goto_9

    :cond_10
    move v7, v5

    :goto_9
    if-gt v7, v5, :cond_11

    .line 66
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 67
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 68
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 69
    :cond_11
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 70
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 71
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 72
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 73
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 74
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 75
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    const/4 v7, 0x4

    if-eqz v5, :cond_17

    .line 76
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v7, :cond_17

    const/4 v7, 0x0

    :goto_b
    const/4 v9, 0x6

    if-ge v7, v9, :cond_16

    .line 77
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-nez v9, :cond_12

    .line 78
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-wide/from16 v21, v11

    goto :goto_d

    :cond_12
    const/16 v9, 0x40

    shl-int/lit8 v10, v5, 0x1

    add-int/lit8 v10, v10, 0x4

    move-wide/from16 v21, v11

    const/4 v11, 0x1

    shl-int v10, v11, v10

    .line 79
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-le v5, v11, :cond_13

    .line 80
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    :cond_13
    const/4 v10, 0x0

    :goto_c
    if-ge v10, v9, :cond_14

    .line 81
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_14
    :goto_d
    const/4 v9, 0x3

    if-ne v5, v9, :cond_15

    goto :goto_e

    :cond_15
    const/4 v9, 0x1

    :goto_e
    add-int/2addr v7, v9

    move-wide/from16 v11, v21

    goto :goto_b

    :cond_16
    move-wide/from16 v21, v11

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x4

    goto :goto_a

    :cond_17
    move-wide/from16 v21, v11

    const/4 v5, 0x2

    .line 82
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 83
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v5, 0x8

    .line 84
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 85
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 86
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 87
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 88
    :cond_18
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_f
    if-ge v7, v5, :cond_1f

    if-eqz v7, :cond_19

    .line 89
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v9

    :cond_19
    if-eqz v9, :cond_1c

    .line 90
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 91
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    const/4 v11, 0x0

    :goto_10
    if-gt v11, v10, :cond_1b

    .line 92
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 93
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1b
    move/from16 v24, v5

    goto :goto_13

    .line 94
    :cond_1c
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v10

    .line 95
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v11

    add-int v12, v10, v11

    const/16 v23, 0x0

    move/from16 v24, v5

    move/from16 v5, v23

    :goto_11
    if-ge v5, v10, :cond_1d

    .line 96
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 97
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    :goto_12
    if-ge v5, v11, :cond_1e

    .line 98
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 99
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_1e
    move v10, v12

    :goto_13
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v24

    goto :goto_f

    .line 100
    :cond_1f
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    .line 101
    :goto_14
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v7

    if-ge v5, v7, :cond_20

    add-int/lit8 v7, v6, 0x4

    add-int/lit8 v7, v7, 0x1

    .line 102
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_20
    const/4 v5, 0x2

    .line 103
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x18

    if-eqz v6, :cond_27

    .line 105
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_23

    const/16 v6, 0x8

    .line 106
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/16 v9, 0xff

    if-ne v6, v9, :cond_21

    const/16 v6, 0x10

    .line 107
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 108
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    if-eqz v9, :cond_23

    if-eqz v6, :cond_23

    int-to-float v5, v9

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_15

    .line 109
    :cond_21
    sget-object v9, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v10, v9

    if-ge v6, v10, :cond_22

    .line 110
    aget v5, v9, v6

    goto :goto_15

    :cond_22
    const/16 v9, 0x2e

    const-string v10, "Unexpected aspect_ratio_idc value: "

    const-string v11, "H265Reader"

    .line 111
    invoke-static {v9, v10, v6, v11}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    .line 112
    :cond_23
    :goto_15
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 113
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 114
    :cond_24
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v6, 0x4

    .line 115
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 116
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 117
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 118
    :cond_25
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 119
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 120
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    .line 121
    :cond_26
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 122
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_27

    mul-int/lit8 v14, v14, 0x2

    .line 123
    :cond_27
    iget-object v6, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v9, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v10, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BII)V

    .line 124
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 125
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildHevcCodecStringFromSps(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v6, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 127
    iput-object v1, v6, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const-string/jumbo v1, "video/hevc"

    .line 128
    iput-object v1, v6, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 129
    iput-object v3, v6, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 130
    iput v2, v6, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 131
    iput v14, v6, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 132
    iput v5, v6, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 133
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 134
    iput-object v1, v6, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 135
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 136
    invoke-interface {v15, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 v1, 0x1

    .line 137
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    goto :goto_16

    :cond_28
    move/from16 v19, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v20, v7

    move-wide/from16 v25, v9

    move-wide/from16 v21, v11

    .line 138
    :goto_16
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_29

    .line 139
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    .line 140
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v3, v4, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 141
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 142
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 143
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-wide/from16 v4, v21

    invoke-static {v4, v5, v3, v1}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    goto :goto_17

    :cond_29
    move-wide/from16 v4, v21

    .line 144
    :goto_17
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 145
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    .line 146
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v3, v6, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 147
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 148
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 149
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v4, v5, v2, v1}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 150
    :cond_2a
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    .line 151
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    const/4 v5, 0x0

    .line 152
    iput-boolean v5, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 153
    iput-boolean v5, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 154
    iput-wide v1, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 155
    iput v5, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    move-wide/from16 v9, v25

    .line 156
    iput-wide v9, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    const/16 v1, 0x20

    move/from16 v2, v20

    if-lt v2, v1, :cond_2c

    const/16 v5, 0x28

    if-ne v2, v5, :cond_2b

    goto :goto_18

    :cond_2b
    const/4 v5, 0x0

    goto :goto_19

    :cond_2c
    :goto_18
    const/4 v5, 0x1

    :goto_19
    if-nez v5, :cond_33

    .line 157
    iget-boolean v5, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v5, :cond_2e

    iget-boolean v5, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-nez v5, :cond_2e

    if-eqz v4, :cond_2d

    move/from16 v4, v19

    .line 158
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    :cond_2d
    const/4 v4, 0x0

    .line 159
    iput-boolean v4, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    goto :goto_1a

    :cond_2e
    const/4 v4, 0x0

    :goto_1a
    if-gt v1, v2, :cond_2f

    const/16 v1, 0x23

    if-le v2, v1, :cond_30

    :cond_2f
    const/16 v1, 0x27

    if-ne v2, v1, :cond_31

    :cond_30
    const/4 v1, 0x1

    goto :goto_1b

    :cond_31
    move v1, v4

    :goto_1b
    if-eqz v1, :cond_32

    .line 160
    iget-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    iput-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 161
    iput-boolean v5, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    goto :goto_1c

    :cond_32
    const/4 v5, 0x1

    goto :goto_1c

    :cond_33
    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_1c
    const/16 v1, 0x10

    if-lt v2, v1, :cond_34

    const/16 v1, 0x15

    if-gt v2, v1, :cond_34

    move v1, v5

    goto :goto_1d

    :cond_34
    move v1, v4

    .line 162
    :goto_1d
    iput-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez v1, :cond_35

    const/16 v1, 0x9

    if-gt v2, v1, :cond_36

    :cond_35
    move v4, v5

    .line 163
    :cond_36
    iput-boolean v4, v3, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 164
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v1, :cond_37

    .line 165
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 166
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 167
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 168
    :cond_37
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 169
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    move-object/from16 v1, p1

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v2, v18

    goto/16 :goto_1

    :cond_38
    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_39
    return-void
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

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final nalUnitData([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataArray",
            "offset",
            "limit"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x2

    .line 3
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_1

    .line 4
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 5
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    goto :goto_1

    :cond_1
    sub-int v1, p3, p2

    add-int/2addr v1, v2

    .line 6
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 7
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 12
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

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
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 9
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    :cond_0
    return-void
.end method
