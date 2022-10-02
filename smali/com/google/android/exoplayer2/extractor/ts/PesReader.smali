.class public final Lcom/google/android/exoplayer2/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;


# instance fields
.field public bytesRead:I

.field public dataAlignmentIndicator:Z

.field public dtsFlag:Z

.field public extendedHeaderLength:I

.field public payloadSize:I

.field public final pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public ptsFlag:Z

.field public final reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

.field public seenFirstDts:Z

.field public state:I

.field public timeUs:J

.field public timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const-string v1, "PesReader"

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v2, :cond_0

    const/16 v6, 0x3b

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unexpected start indicator: expected "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " more bytes"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    const-string v0, "Unexpected start indicator reading extended header"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_13

    .line 11
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_12

    const/4 v6, 0x0

    if-eq v0, v5, :cond_c

    if-eq v0, v4, :cond_8

    if-ne v0, v3, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 13
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-ne v7, v2, :cond_5

    goto :goto_2

    :cond_5
    sub-int v6, v0, v7

    :goto_2
    if-lez v6, :cond_6

    sub-int/2addr v0, v6

    .line 14
    iget v6, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v6, v0

    .line 15
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 16
    :cond_6
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v6, p1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 17
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v6, v2, :cond_4

    sub-int/2addr v6, v0

    .line 18
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-nez v6, :cond_4

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 20
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_8
    const/16 v0, 0xa

    .line 22
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 24
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 27
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_a

    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x1e

    shl-long/2addr v6, v0

    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v9, v0

    or-long/2addr v6, v9

    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v9, v0

    or-long/2addr v6, v9

    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 35
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v9, v0

    const/16 v0, 0x1e

    shl-long/2addr v9, v0

    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v11, v0

    or-long/2addr v9, v11

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v11, v0

    or-long v8, v9, v11

    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 44
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 45
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 46
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    :goto_3
    or-int/2addr p2, v2

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v0, v2, v3, p2}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    const/4 v3, 0x3

    .line 48
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    const/4 v2, -0x1

    goto/16 :goto_1

    .line 49
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/16 v2, 0x9

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x18

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-eq v0, v5, :cond_d

    const/16 v6, 0x29

    const-string v7, "Unexpected start code prefix: "

    .line 52
    invoke-static {v6, v7, v0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    move v6, v2

    goto :goto_5

    .line 54
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 56
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 57
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 58
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 59
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    .line 60
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    .line 61
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 62
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v0, :cond_e

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_4

    :cond_e
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v6

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-gez v0, :cond_f

    const/16 v6, 0x2f

    const-string v7, "Found negative packet payload size: "

    .line 65
    invoke-static {v6, v7, v0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_4

    :cond_f
    const/4 v0, -0x1

    :goto_4
    move v6, v5

    :goto_5
    if-eqz v6, :cond_10

    move v2, v4

    .line 67
    :cond_10
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_6

    :cond_11
    const/4 v0, -0x1

    :goto_6
    move v2, v0

    goto/16 :goto_1

    .line 68
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_13
    return-void
.end method

.method public final continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 5
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

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 4
    iget-object v3, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v3, v4, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestampAdjuster",
            "extractorOutput",
            "idGenerator"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final seek()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method

.method public final setState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    return-void
.end method
