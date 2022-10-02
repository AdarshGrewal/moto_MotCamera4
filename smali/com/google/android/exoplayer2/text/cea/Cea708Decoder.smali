.class public final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;
    }
.end annotation


# instance fields
.field public final ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

.field public cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

.field public currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

.field public currentWindow:I

.field public lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public previousSequenceNumber:I

.field public final selectedServiceNumber:I

.field public final serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accessibilityChannel",
            "initializationData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    .line 5
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v1, :cond_1

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    aget-byte p2, p2, p1

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    const/16 p2, 0x8

    new-array v0, p2, [Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_3

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    new-instance v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    return-void
.end method


# virtual methods
.method public createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 2
    new-instance p0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    .line 7
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    .line 8
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 10
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 12
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/16 v2, 0x47

    const-string v3, "Sequence number discontinuity. previous="

    const-string v8, " current="

    invoke-static {v2, v3, v1, v8, v0}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_4
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    .line 15
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 16
    iget-object p1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v0, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v0

    goto :goto_2

    :cond_6
    if-ne v1, v7, :cond_7

    move v3, v4

    .line 17
    :cond_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 20
    :cond_8
    iget-object p1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v5, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 21
    iput v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v2

    .line 22
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/2addr p1, v7

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final finalizeCurrentPacket()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v2, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget v3, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    const-string v5, "Cea708Decoder"

    if-eq v2, v3, :cond_1

    .line 3
    iget v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    const/16 v6, 0x73

    const-string v7, "DtvCcPacket ended prematurely; size is "

    const-string v8, ", but current index is "

    invoke-static {v6, v7, v3, v8, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (sequence number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v6, 0x2c

    const/4 v7, 0x7

    const/4 v8, 0x6

    if-ne v1, v7, :cond_2

    .line 8
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ge v1, v7, :cond_2

    const-string v9, "Invalid extended service number: "

    .line 10
    invoke-static {v6, v9, v1, v5}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    :cond_2
    if-nez v3, :cond_3

    if-eqz v1, :cond_39

    const/16 v2, 0x3b

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "serviceNumber is non-zero ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when blockSize is 0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 13
    :cond_3
    iget v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v1, v3, :cond_4

    goto/16 :goto_12

    :cond_4
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    if-lez v3, :cond_38

    .line 15
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v9, 0x17

    const/16 v10, 0x9f

    const/16 v11, 0x18

    const/16 v12, 0x7f

    const/16 v13, 0x10

    const/16 v14, 0x1f

    if-eq v3, v13, :cond_20

    const/16 v15, 0xa

    if-gt v3, v14, :cond_9

    if-eqz v3, :cond_34

    if-eq v3, v2, :cond_8

    if-eq v3, v6, :cond_7

    packed-switch v3, :pswitch_data_0

    const/16 v8, 0x11

    if-lt v3, v8, :cond_5

    if-gt v3, v9, :cond_5

    const/16 v8, 0x37

    const-string v9, "Currently unsupported COMMAND_EXT1 Command: "

    .line 16
    invoke-static {v8, v9, v3, v5}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    .line 17
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_f

    .line 18
    :pswitch_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v3, v15}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_f

    .line 19
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto/16 :goto_f

    :cond_5
    if-lt v3, v11, :cond_6

    if-gt v3, v14, :cond_6

    const/16 v6, 0x36

    const-string v8, "Currently unsupported COMMAND_P16 Command: "

    .line 20
    invoke-static {v6, v8, v3, v5}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    .line 21
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_f

    :cond_6
    const-string v6, "Invalid C0 command: "

    .line 22
    invoke-static {v14, v6, v3, v5}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_f

    .line 23
    :cond_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 24
    iget-object v6, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_34

    .line 25
    iget-object v3, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_f

    .line 26
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    goto/16 :goto_f

    :cond_9
    if-gt v3, v12, :cond_b

    if-ne v3, v12, :cond_a

    .line 27
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v3, 0x266b

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_1

    .line 28
    :cond_a
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_f

    :cond_b
    if-gt v3, v10, :cond_1d

    const/4 v1, 0x4

    packed-switch v3, :pswitch_data_1

    :pswitch_2
    const/4 v1, 0x1

    const-string v6, "Invalid C1 command: "

    .line 29
    invoke-static {v14, v6, v3}, Landroidx/cardview/R$style$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_3
    add-int/lit16 v3, v3, -0x98

    .line 30
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v9, v9, v3

    .line 31
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 32
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    .line 33
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 34
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 35
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 36
    iget-object v13, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v13

    .line 37
    iget-object v14, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v14, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 38
    iget-object v14, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v14, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 39
    iget-object v14, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v14, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 40
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v15, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 41
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v15, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 42
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v15, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 43
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 44
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 45
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v15, 0x1

    .line 46
    iput-boolean v15, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    .line 47
    iput-boolean v10, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    .line 48
    iput-boolean v11, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowLock:Z

    .line 49
    iput v12, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    .line 50
    iput-boolean v13, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    .line 51
    iput v7, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    .line 52
    iput v6, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    .line 53
    iput v14, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    .line 54
    iget v6, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    add-int/2addr v1, v15

    if-eq v6, v1, :cond_e

    .line 55
    iput v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    :goto_2
    if-eqz v11, :cond_c

    .line 56
    iget-object v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v6, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v1, v6, :cond_d

    :cond_c
    iget-object v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v6, 0xf

    if-lt v1, v6, :cond_e

    .line 58
    :cond_d
    iget-object v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_e
    if-eqz v8, :cond_f

    .line 59
    iget v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    if-eq v1, v8, :cond_f

    .line 60
    iput v8, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    add-int/lit8 v8, v8, -0x1

    .line 61
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    aget v1, v1, v8

    sget-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v6, v6, v8

    sget-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v6, v6, v8

    sget-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v6, v6, v8

    sget-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v6, v6, v8

    .line 62
    iput v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 63
    iput v6, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    :cond_f
    if-eqz v2, :cond_10

    .line 64
    iget v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    if-eq v1, v2, :cond_10

    .line 65
    iput v2, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    add-int/lit8 v2, v2, -0x1

    .line 66
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v1, v1, v2

    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v1, v1, v2

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(ZZ)V

    .line 67
    sget v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    sget-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v2, v6, v2

    invoke-virtual {v9, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(II)V

    .line 68
    :cond_10
    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v3, :cond_15

    .line 69
    iput v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 70
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    goto/16 :goto_3

    .line 71
    :pswitch_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 72
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v1, :cond_11

    .line 73
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_3

    .line 74
    :cond_11
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 75
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 76
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 77
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 78
    invoke-static {v2, v3, v7, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v1

    .line 79
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 80
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 81
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 82
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    const/4 v8, 0x0

    .line 83
    invoke-static {v2, v3, v7, v8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    .line 84
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 85
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 86
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 87
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 88
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 89
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 90
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 91
    iput v1, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 92
    iput v2, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    goto/16 :goto_3

    .line 93
    :pswitch_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 94
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v2, :cond_12

    .line 95
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_3

    .line 96
    :cond_12
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 97
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 98
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 99
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 100
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 101
    iget v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    if-eq v3, v1, :cond_13

    .line 102
    invoke-virtual {v2, v15}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 103
    :cond_13
    iput v1, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    goto :goto_3

    .line 104
    :pswitch_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 105
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v1, :cond_14

    .line 106
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    .line 107
    :cond_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 108
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 109
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 110
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 111
    invoke-static {v2, v3, v6, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v1

    .line 112
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 113
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 114
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 115
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 116
    invoke-static {v3, v6, v7, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    .line 117
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 118
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 119
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 120
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    const/4 v8, 0x0

    .line 121
    invoke-static {v3, v6, v7, v8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    .line 122
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(II)V

    goto :goto_3

    .line 123
    :pswitch_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 124
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v2, :cond_16

    .line 125
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_15
    :goto_3
    const/4 v1, 0x3

    move v2, v1

    goto/16 :goto_8

    .line 126
    :cond_16
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 127
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 128
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 129
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 130
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 131
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 132
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 133
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(ZZ)V

    move v2, v6

    goto/16 :goto_8

    .line 134
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto :goto_8

    .line 135
    :pswitch_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_8

    :pswitch_a
    const/4 v1, 0x1

    :goto_4
    if-gt v1, v6, :cond_1b

    .line 136
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 137
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v7, v1, 0x8

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_b
    const/4 v1, 0x1

    :goto_5
    if-gt v1, v6, :cond_1b

    .line 138
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 139
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v7, v1, 0x8

    aget-object v3, v3, v7

    .line 140
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    xor-int/lit8 v7, v7, 0x1

    .line 141
    iput-boolean v7, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_c
    const/4 v1, 0x1

    :goto_6
    if-gt v1, v6, :cond_1b

    .line 142
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 143
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v7, v1, 0x8

    aget-object v3, v3, v7

    const/4 v7, 0x0

    .line 144
    iput-boolean v7, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :pswitch_d
    const/4 v1, 0x1

    :goto_7
    if-gt v1, v6, :cond_1b

    .line 145
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 146
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v7, v1, 0x8

    aget-object v3, v3, v7

    const/4 v7, 0x1

    .line 147
    iput-boolean v7, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    :goto_8
    :pswitch_e
    const/4 v1, 0x1

    goto :goto_b

    :pswitch_f
    const/4 v1, 0x1

    move v3, v1

    :goto_9
    if-gt v3, v6, :cond_1f

    .line 148
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 149
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v8, v3, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :pswitch_10
    const/4 v1, 0x1

    add-int/lit8 v3, v3, -0x80

    .line 150
    iget v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v6, v3, :cond_1f

    .line 151
    iput v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 152
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v6, v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    goto :goto_b

    .line 153
    :goto_a
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1d
    const/16 v6, 0xff

    const/4 v7, 0x1

    if-gt v3, v6, :cond_1e

    .line 154
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    move v1, v7

    goto :goto_b

    :cond_1e
    const/16 v6, 0x21

    const-string v7, "Invalid base command: "

    .line 155
    invoke-static {v6, v7, v3, v5}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    :cond_1f
    :goto_b
    const/4 v7, 0x7

    goto/16 :goto_f

    :cond_20
    const/4 v3, 0x1

    .line 156
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-gt v7, v14, :cond_25

    const/4 v3, 0x7

    if-gt v7, v3, :cond_21

    goto :goto_c

    :cond_21
    const/16 v8, 0xf

    if-gt v7, v8, :cond_22

    .line 157
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_c

    :cond_22
    if-gt v7, v9, :cond_23

    .line 158
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_c

    :cond_23
    if-gt v7, v14, :cond_24

    .line 159
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_24
    :goto_c
    move v7, v3

    goto/16 :goto_f

    :cond_25
    const/4 v8, 0x7

    const/16 v9, 0x25

    const/16 v11, 0xa0

    if-gt v7, v12, :cond_30

    const/16 v1, 0x20

    if-eq v7, v1, :cond_2f

    const/16 v1, 0x21

    if-eq v7, v1, :cond_2e

    if-eq v7, v9, :cond_2d

    const/16 v1, 0x2a

    if-eq v7, v1, :cond_2c

    const/16 v1, 0x2c

    if-eq v7, v1, :cond_2b

    const/16 v1, 0x3f

    if-eq v7, v1, :cond_2a

    const/16 v1, 0x39

    if-eq v7, v1, :cond_29

    const/16 v1, 0x3a

    if-eq v7, v1, :cond_28

    const/16 v1, 0x3c

    if-eq v7, v1, :cond_27

    const/16 v1, 0x3d

    if-eq v7, v1, :cond_26

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    const/16 v1, 0x21

    const-string v6, "Invalid G2 character: "

    .line 160
    invoke-static {v1, v6, v7, v5}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d

    .line 161
    :pswitch_11
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2022

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 162
    :pswitch_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x201d

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 163
    :pswitch_13
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x201c

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 164
    :pswitch_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2019

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 165
    :pswitch_15
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2018

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 166
    :pswitch_16
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2588

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 167
    :pswitch_17
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x250c

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 168
    :pswitch_18
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2518

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 169
    :pswitch_19
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2500

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 170
    :pswitch_1a
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2514

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 171
    :pswitch_1b
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2510

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 172
    :pswitch_1c
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2502

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 173
    :pswitch_1d
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215e

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 174
    :pswitch_1e
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215d

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 175
    :pswitch_1f
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215c

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 176
    :pswitch_20
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215b

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 177
    :cond_26
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2120

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 178
    :cond_27
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x153

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 179
    :cond_28
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x161

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 180
    :cond_29
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2122

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 181
    :cond_2a
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x178

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 182
    :cond_2b
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x152

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 183
    :cond_2c
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x160

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 184
    :cond_2d
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2026

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 185
    :cond_2e
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 186
    :cond_2f
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_d
    move v1, v3

    goto :goto_e

    :cond_30
    const/16 v12, 0x20

    if-gt v7, v10, :cond_35

    const/16 v3, 0x87

    if-gt v7, v3, :cond_31

    .line 187
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_e

    :cond_31
    const/16 v3, 0x8f

    if-gt v7, v3, :cond_32

    .line 188
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x28

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_e

    :cond_32
    if-gt v7, v10, :cond_33

    .line 189
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 190
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 191
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    mul-int/2addr v3, v6

    invoke-virtual {v9, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    goto/16 :goto_0

    :cond_33
    :goto_e
    move v7, v8

    :cond_34
    :goto_f
    :pswitch_21
    const/4 v3, 0x6

    move v8, v3

    goto/16 :goto_0

    :cond_35
    const/16 v6, 0xff

    const/4 v10, 0x6

    if-gt v7, v6, :cond_37

    if-ne v7, v11, :cond_36

    .line 192
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x33c4

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_10

    :cond_36
    const/16 v1, 0x21

    const-string v6, "Invalid G3 character: "

    .line 193
    invoke-static {v1, v6, v7, v5}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    .line 194
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x5f

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_10
    move v1, v3

    goto :goto_11

    :cond_37
    const-string v3, "Invalid extended command: "

    .line 195
    invoke-static {v9, v3, v7, v5}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    :goto_11
    move v7, v8

    move v8, v10

    goto/16 :goto_0

    :cond_38
    if-eqz v1, :cond_39

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_39
    :goto_12
    const/4 v1, 0x0

    .line 197
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_21
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x76
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method public flush()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method public final getDisplayCues()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_d

    .line 2
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v5, v4, v3

    .line 3
    iget-boolean v5, v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    if-eqz v5, :cond_c

    .line 4
    aget-object v4, v4, v3

    .line 5
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_8

    .line 6
    :cond_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v5, v2

    .line 7
    :goto_1
    iget-object v7, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 8
    iget-object v7, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v7, 0xa

    .line 9
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    iget v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v9, 0x3

    if-ne v5, v9, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    const/16 v2, 0x2b

    const-string v3, "Unexpected justification value: "

    invoke-static {v2, v3, v1}, Landroidx/cardview/R$style$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 14
    :cond_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 15
    :cond_5
    :goto_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_3
    move-object v9, v5

    .line 16
    iget-boolean v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    if-eqz v5, :cond_6

    .line 17
    iget v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v5, v5

    const/high16 v10, 0x42c60000    # 99.0f

    div-float/2addr v5, v10

    .line 18
    iget v11, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v11, v11

    div-float/2addr v11, v10

    goto :goto_4

    .line 19
    :cond_6
    iget v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v5, v5

    const/high16 v10, 0x43510000    # 209.0f

    div-float/2addr v5, v10

    .line 20
    iget v10, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v10, v10

    const/high16 v11, 0x42940000    # 74.0f

    div-float v11, v10, v11

    :goto_4
    const v10, 0x3f666666    # 0.9f

    mul-float/2addr v5, v10

    const v12, 0x3d4ccccd    # 0.05f

    add-float v13, v5, v12

    mul-float/2addr v11, v10

    add-float v10, v11, v12

    .line 21
    iget v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    div-int/lit8 v11, v5, 0x3

    if-nez v11, :cond_7

    move v11, v2

    goto :goto_5

    :cond_7
    if-ne v11, v8, :cond_8

    move v11, v8

    goto :goto_5

    :cond_8
    move v11, v7

    .line 22
    :goto_5
    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_9

    move v12, v2

    goto :goto_6

    :cond_9
    if-ne v5, v8, :cond_a

    move v12, v8

    goto :goto_6

    :cond_a
    move v12, v7

    .line 23
    :goto_6
    iget v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    sget v7, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq v5, v7, :cond_b

    move v14, v8

    goto :goto_7

    :cond_b
    move v14, v2

    .line 24
    :goto_7
    new-instance v17, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    const/4 v15, 0x0

    const v16, -0x800001

    iget v8, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    iget v4, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    move-object/from16 v5, v17

    move-object v7, v9

    move/from16 v18, v8

    move v8, v10

    move v9, v15

    move v10, v11

    move v11, v13

    move/from16 v13, v16

    move/from16 v15, v18

    move/from16 v16, v4

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    move-object/from16 v4, v17

    :goto_8
    if-eqz v4, :cond_c

    .line 25
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 26
    :cond_d
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 30
    :cond_e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isNewSubtitleDataAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetCueBuilders()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
