.class public final Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;
.super Ljava/lang/Object;
.source "PsDurationReader.java"


# instance fields
.field public durationUs:J

.field public firstScrValue:J

.field public isDurationRead:Z

.field public isFirstScrValueRead:Z

.field public isLastScrValueRead:Z

.field public lastScrValue:J

.field public final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method public static readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetBuffer"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v5, 0x9

    if-ge v2, v5, :cond_0

    return-wide v3

    :cond_0
    new-array v2, v5, [B

    .line 3
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v7, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 6
    aget-byte v0, v2, v8

    and-int/lit16 v0, v0, 0xc4

    const/16 v1, 0x44

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    aget-byte v0, v2, v10

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    aget-byte v0, v2, v9

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    aget-byte v0, v2, v7

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    .line 10
    aget-byte v0, v2, v0

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v8

    :goto_1
    if-nez v0, :cond_6

    return-wide v3

    .line 11
    :cond_6
    aget-byte v0, v2, v8

    int-to-long v0, v0

    const-wide/16 v3, 0x38

    and-long/2addr v0, v3

    shr-long/2addr v0, v5

    const/16 v3, 0x1e

    shl-long/2addr v0, v3

    aget-byte v3, v2, v8

    int-to-long v3, v3

    const-wide/16 v11, 0x3

    and-long/2addr v3, v11

    const/16 v8, 0x1c

    shl-long/2addr v3, v8

    or-long/2addr v0, v3

    aget-byte v3, v2, v6

    int-to-long v3, v3

    const-wide/16 v13, 0xff

    and-long/2addr v3, v13

    const/16 v6, 0x14

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    aget-byte v3, v2, v10

    int-to-long v3, v3

    const-wide/16 v15, 0xf8

    and-long/2addr v3, v15

    shr-long/2addr v3, v5

    const/16 v6, 0xf

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    aget-byte v3, v2, v10

    int-to-long v3, v3

    and-long/2addr v3, v11

    const/16 v6, 0xd

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    aget-byte v3, v2, v5

    int-to-long v3, v3

    and-long/2addr v3, v13

    shl-long/2addr v3, v7

    or-long/2addr v0, v3

    aget-byte v2, v2, v9

    int-to-long v2, v2

    and-long/2addr v2, v15

    shr-long/2addr v2, v5

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isDurationRead:Z

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    return p0
.end method

.method public final peekIntAtPosition([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "position"
        }
    .end annotation

    .line 1
    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method
