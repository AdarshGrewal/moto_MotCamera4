.class public final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    }
.end annotation


# static fields
.field public static final opusMagic:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method public static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 18
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    .line 19
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 20
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v3, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 22
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 23
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "position",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 4
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v5

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 6
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 11
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 15
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v6

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v6

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 17
    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 22
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v3, :cond_9

    .line 23
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v3, v5

    move v14, v3

    goto :goto_8

    .line 24
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 25
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-ne v7, v6, :cond_a

    move v10, v6

    goto :goto_9

    :cond_a
    move v10, v5

    .line 26
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 27
    iget-object v8, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v9, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v8, v9, v13, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget v8, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 30
    new-array v8, v7, [B

    .line 31
    iget-object v9, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v9, v6, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    .line 33
    :goto_a
    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v9, v6

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v6

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    const/4 v6, 0x1

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    const/4 v5, 0x1

    :cond_e
    const-string/jumbo v6, "tenc atom is mandatory"

    .line 34
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 35
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_c
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 38
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "track",
            "stblAtom",
            "gaplessInfoHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 4
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 5
    :goto_0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide/16 v10, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v6, 0x7374636f

    .line 7
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const v6, 0x636f3634

    .line 8
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    .line 9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v5

    .line 10
    :goto_1
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v9, 0x73747363

    .line 11
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    .line 12
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v10, 0x73747473

    .line 14
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    .line 15
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v11, 0x73747373

    .line 17
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 18
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    const v12, 0x63747473

    .line 19
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    const/16 v12, 0xc

    .line 21
    invoke-virtual {v6, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 22
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    .line 23
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 24
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    .line 25
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    if-ne v15, v7, :cond_5

    move v5, v7

    :cond_5
    const-string v15, "first_chunk must be 1"

    invoke-static {v5, v15}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 26
    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 27
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    sub-int/2addr v5, v7

    .line 28
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 29
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 31
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    :goto_4
    const/16 v17, -0x1

    if-eqz v11, :cond_8

    .line 32
    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 33
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    if-lez v12, :cond_7

    .line 34
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    move/from16 p1, v7

    .line 35
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v7

    move/from16 v18, v14

    .line 36
    iget-object v14, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v14, v14, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v2, -0x1

    if-eq v7, v2, :cond_a

    const-string v2, "audio/raw"

    .line 37
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "audio/g711-mlaw"

    .line 38
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "audio/g711-alaw"

    .line 39
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    if-nez v5, :cond_a

    if-nez v16, :cond_a

    if-nez v12, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    const/4 v14, 0x4

    if-eqz v2, :cond_13

    .line 40
    new-array v0, v13, [J

    .line 41
    new-array v2, v13, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    :goto_7
    add-int/lit8 v10, v10, 0x1

    if-ne v10, v13, :cond_b

    const/16 v16, 0x0

    goto :goto_a

    :cond_b
    if-eqz v8, :cond_c

    .line 42
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v11

    goto :goto_8

    .line 43
    :cond_c
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    :goto_8
    if-ne v10, v4, :cond_e

    .line 44
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 45
    invoke-virtual {v9, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v18, v18, -0x1

    if-lez v18, :cond_d

    .line 46
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_d
    const/4 v4, -0x1

    :cond_e
    :goto_9
    const/16 v16, 0x1

    :goto_a
    if-eqz v16, :cond_f

    .line 47
    aput-wide v11, v0, v10

    .line 48
    aput v5, v2, v10

    goto :goto_7

    :cond_f
    int-to-long v4, v15

    const/16 v6, 0x2000

    .line 49
    div-int/2addr v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_b
    if-ge v8, v13, :cond_10

    .line 50
    aget v10, v2, v8

    .line 51
    invoke-static {v10, v6}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 52
    :cond_10
    new-array v8, v9, [J

    .line 53
    new-array v10, v9, [I

    .line 54
    new-array v11, v9, [J

    .line 55
    new-array v9, v9, [I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_c
    if-ge v12, v13, :cond_12

    .line 56
    aget v17, v2, v12

    .line 57
    aget-wide v18, v0, v12

    move/from16 v36, v17

    move-object/from16 v17, v0

    move/from16 v0, v36

    :goto_d
    if-lez v0, :cond_11

    .line 58
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 59
    aput-wide v18, v8, v16

    mul-int v21, v7, v20

    .line 60
    aput v21, v10, v16

    move-object/from16 v21, v2

    .line 61
    aget v2, v10, v16

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 p1, v6

    move v2, v7

    int-to-long v6, v14

    mul-long/2addr v6, v4

    .line 62
    aput-wide v6, v11, v16

    const/4 v6, 0x1

    .line 63
    aput v6, v9, v16

    .line 64
    aget v6, v10, v16

    int-to-long v6, v6

    add-long v18, v18, v6

    add-int v14, v14, v20

    sub-int v0, v0, v20

    add-int/lit8 v16, v16, 0x1

    move/from16 v6, p1

    move v7, v2

    move-object/from16 v2, v21

    goto :goto_d

    :cond_11
    move-object/from16 v21, v2

    move/from16 p1, v6

    move v2, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    move-object/from16 v2, v21

    goto :goto_c

    :cond_12
    int-to-long v6, v14

    mul-long/2addr v4, v6

    move v0, v3

    move-wide v12, v4

    move-object v2, v8

    move-object v3, v10

    move-object v14, v11

    move-object v11, v1

    move-object v10, v9

    goto/16 :goto_1d

    .line 65
    :cond_13
    new-array v2, v3, [J

    .line 66
    new-array v7, v3, [I

    .line 67
    new-array v14, v3, [J

    move/from16 v19, v5

    .line 68
    new-array v5, v3, [I

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    move/from16 v34, v25

    move/from16 v35, v26

    move/from16 v25, v12

    move/from16 v12, v17

    move/from16 v17, v16

    move-object/from16 v16, v10

    move/from16 v10, v33

    move/from16 v36, v19

    move/from16 v19, p1

    move/from16 p1, v36

    move/from16 v37, v21

    move/from16 v21, v15

    move/from16 v15, v37

    :goto_e
    const-string v1, "AtomParsers"

    if-ge v15, v3, :cond_21

    const/16 v26, 0x1

    move/from16 v36, v22

    move/from16 v22, v3

    move/from16 v3, v36

    :goto_f
    if-nez v24, :cond_18

    move/from16 v33, v12

    add-int/lit8 v12, v20, 0x1

    if-ne v12, v13, :cond_14

    const/16 v20, 0x0

    :goto_10
    move/from16 v26, v20

    goto :goto_13

    :cond_14
    if-eqz v8, :cond_15

    .line 69
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v26

    goto :goto_11

    .line 70
    :cond_15
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v26

    :goto_11
    if-ne v12, v3, :cond_17

    .line 71
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    const/4 v3, 0x4

    .line 72
    invoke-virtual {v9, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v18, v18, -0x1

    if-lez v18, :cond_16

    .line 73
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    :cond_16
    const/4 v3, -0x1

    :cond_17
    :goto_12
    const/16 v20, 0x1

    move-wide/from16 v27, v26

    goto :goto_10

    :goto_13
    move/from16 v20, v12

    if-eqz v26, :cond_19

    move/from16 v24, v23

    move-wide/from16 v29, v27

    move/from16 v12, v33

    goto :goto_f

    :cond_18
    move/from16 v33, v12

    :cond_19
    if-nez v26, :cond_1a

    const-string v3, "Unexpected end of chunk data"

    .line 74
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 76
    invoke-static {v7, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 77
    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v14

    .line 78
    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v3, v15

    goto/16 :goto_17

    :cond_1a
    if-eqz v0, :cond_1c

    :goto_14
    if-nez v35, :cond_1b

    if-lez v17, :cond_1b

    .line 79
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v35

    .line 80
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v34

    add-int/lit8 v17, v17, -0x1

    goto :goto_14

    :cond_1b
    add-int/lit8 v35, v35, -0x1

    :cond_1c
    move/from16 v1, v34

    .line 81
    aput-wide v29, v2, v15

    .line 82
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v12

    aput v12, v7, v15

    .line 83
    aget v12, v7, v15

    if-le v12, v10, :cond_1d

    .line 84
    aget v10, v7, v15

    :cond_1d
    move-object/from16 v26, v2

    move v12, v3

    int-to-long v2, v1

    add-long v2, v31, v2

    .line 85
    aput-wide v2, v14, v15

    if-nez v11, :cond_1e

    const/4 v2, 0x1

    goto :goto_15

    :cond_1e
    const/4 v2, 0x0

    .line 86
    :goto_15
    aput v2, v5, v15

    move/from16 v2, v33

    if-ne v15, v2, :cond_1f

    const/4 v3, 0x1

    .line 87
    aput v3, v5, v15

    add-int/lit8 v25, v25, -0x1

    if-lez v25, :cond_1f

    .line 88
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_1f
    move/from16 v33, v2

    move/from16 v3, v21

    move/from16 v21, v1

    int-to-long v1, v3

    add-long v31, v31, v1

    add-int/lit8 v19, v19, -0x1

    if-nez v19, :cond_20

    if-lez p1, :cond_20

    .line 90
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 91
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    add-int/lit8 v3, p1, -0x1

    move/from16 v19, v1

    goto :goto_16

    :cond_20
    move v2, v3

    move/from16 v3, p1

    .line 92
    :goto_16
    aget v1, v7, v15

    move/from16 p1, v2

    int-to-long v1, v1

    add-long v29, v29, v1

    add-int/lit8 v24, v24, -0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v34, v21

    move-object/from16 v2, v26

    move/from16 v21, p1

    move/from16 p1, v3

    move/from16 v3, v22

    move/from16 v22, v12

    move/from16 v12, v33

    goto/16 :goto_e

    :cond_21
    move-object/from16 v26, v2

    move/from16 v22, v3

    :goto_17
    move/from16 v4, v24

    move/from16 v6, v34

    int-to-long v8, v6

    add-long v8, v31, v8

    if-eqz v0, :cond_23

    :goto_18
    if-lez v17, :cond_23

    .line 93
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-eqz v6, :cond_22

    const/4 v0, 0x0

    goto :goto_19

    .line 94
    :cond_22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v17, v17, -0x1

    goto :goto_18

    :cond_23
    const/4 v0, 0x1

    :goto_19
    if-nez v25, :cond_25

    if-nez v19, :cond_25

    if-nez v4, :cond_25

    if-nez p1, :cond_25

    move/from16 v6, v35

    if-nez v6, :cond_26

    if-nez v0, :cond_24

    goto :goto_1a

    :cond_24
    move-object/from16 v11, p0

    move-object/from16 v16, v2

    move/from16 v17, v3

    goto :goto_1c

    :cond_25
    move/from16 v6, v35

    :cond_26
    :goto_1a
    move-object/from16 v11, p0

    move/from16 v12, v25

    .line 95
    iget v13, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    if-nez v0, :cond_27

    const-string v0, ", ctts invalid"

    goto :goto_1b

    :cond_27
    const-string v0, ""

    .line 96
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit16 v15, v15, 0x106

    move-object/from16 v16, v2

    const-string v2, "Inconsistent stbl box for track "

    move/from16 v17, v3

    const-string v3, ": remainingSynchronizationSamples "

    invoke-static {v15, v2, v13, v3, v12}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingSamplesInChunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingTimestampDeltaChanges "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    move-object v3, v7

    move-wide v12, v8

    move v15, v10

    move-object/from16 v2, v16

    move/from16 v0, v17

    move-object v10, v5

    .line 98
    :goto_1d
    iget-wide v8, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v6, 0xf4240

    move-wide v4, v12

    move-wide/from16 v16, v6

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 99
    iget-object v1, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-nez v1, :cond_28

    .line 100
    iget-wide v0, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v4, v16

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 101
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v15

    move-object v5, v14

    move-object v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 102
    :cond_28
    array-length v1, v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2b

    iget v1, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v1, v4, :cond_2b

    array-length v1, v14

    const/4 v4, 0x2

    if-lt v1, v4, :cond_2b

    .line 103
    iget-object v1, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 104
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 105
    aget-wide v5, v1, v4

    .line 106
    iget-object v1, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v16, v1, v4

    iget-wide v7, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move v4, v0

    iget-wide v0, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v18, v7

    move-wide/from16 v20, v0

    .line 107
    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    add-long/2addr v0, v5

    .line 108
    array-length v7, v14

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 109
    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v16

    move/from16 v17, v4

    .line 110
    array-length v4, v14

    sub-int/2addr v4, v8

    .line 111
    invoke-static {v4, v9, v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 112
    aget-wide v7, v14, v9

    cmp-long v7, v7, v5

    if-gtz v7, :cond_29

    aget-wide v7, v14, v16

    cmp-long v7, v5, v7

    if-gez v7, :cond_29

    aget-wide v7, v14, v4

    cmp-long v4, v7, v0

    if-gez v4, :cond_29

    cmp-long v4, v0, v12

    if-gtz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_1e

    :cond_29
    const/4 v4, 0x0

    :goto_1e
    if-eqz v4, :cond_2c

    sub-long v18, v12, v0

    const/4 v0, 0x0

    .line 113
    aget-wide v0, v14, v0

    sub-long v20, v5, v0

    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    iget-wide v4, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v4

    .line 114
    invoke-static/range {v20 .. v25}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 115
    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v4

    iget-wide v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    .line 116
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-nez v8, :cond_2a

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2c

    :cond_2a
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v0, v6

    if-gtz v8, :cond_2c

    cmp-long v6, v4, v6

    if-gtz v6, :cond_2c

    long-to-int v0, v0

    move-object/from16 v1, p2

    .line 117
    iput v0, v1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v0, v4

    .line 118
    iput v0, v1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 119
    iget-wide v0, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v4, 0xf4240

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 120
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/32 v6, 0xf4240

    iget-wide v8, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 121
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 122
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v15

    move-object v5, v14

    move-object v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_2b
    move/from16 v17, v0

    .line 123
    :cond_2c
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2e

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2e

    .line 124
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    aget-wide v0, v0, v1

    const/4 v4, 0x0

    .line 127
    :goto_1f
    array-length v5, v14

    if-ge v4, v5, :cond_2d

    .line 128
    aget-wide v5, v14, v4

    sub-long v16, v5, v0

    const-wide/32 v18, 0xf4240

    iget-wide v5, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v20, v5

    .line 129
    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    aput-wide v5, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_2d
    sub-long v16, v12, v0

    const-wide/32 v18, 0xf4240

    .line 130
    iget-wide v0, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v20, v0

    .line 131
    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 132
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v15

    move-object v5, v14

    move-object v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 133
    :cond_2e
    iget v1, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2f

    const/4 v1, 0x1

    goto :goto_20

    :cond_2f
    const/4 v1, 0x0

    .line 134
    :goto_20
    array-length v4, v0

    new-array v4, v4, [I

    .line 135
    array-length v0, v0

    new-array v0, v0, [I

    .line 136
    iget-object v5, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 137
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 138
    :goto_21
    iget-object v12, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v13, v12

    if-ge v6, v13, :cond_33

    move-object/from16 p1, v2

    move-object v13, v3

    .line 139
    aget-wide v2, v5, v6

    const-wide/16 v18, -0x1

    cmp-long v16, v2, v18

    if-eqz v16, :cond_32

    .line 140
    aget-wide v18, v12, v6

    move-object/from16 p2, v13

    iget-wide v12, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 v16, v8

    move/from16 v24, v9

    iget-wide v8, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v20, v12

    move-wide/from16 v22, v8

    .line 141
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    const/4 v12, 0x1

    .line 142
    invoke-static {v14, v2, v3, v12, v12}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v13

    aput v13, v4, v6

    add-long/2addr v2, v8

    const/4 v8, 0x0

    .line 143
    invoke-static {v14, v2, v3, v1, v8}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v2

    aput v2, v0, v6

    .line 144
    :goto_22
    aget v2, v4, v6

    aget v3, v0, v6

    if-ge v2, v3, :cond_30

    aget v2, v4, v6

    aget v2, v10, v2

    and-int/2addr v2, v12

    if-nez v2, :cond_30

    .line 145
    aget v2, v4, v6

    add-int/2addr v2, v12

    aput v2, v4, v6

    goto :goto_22

    .line 146
    :cond_30
    aget v2, v0, v6

    aget v3, v4, v6

    sub-int/2addr v2, v3

    add-int/2addr v2, v7

    .line 147
    aget v3, v4, v6

    move/from16 v9, v16

    if-eq v9, v3, :cond_31

    goto :goto_23

    :cond_31
    move v12, v8

    :goto_23
    or-int v3, v24, v12

    .line 148
    aget v7, v0, v6

    move v9, v3

    move v8, v7

    move v7, v2

    goto :goto_24

    :cond_32
    move/from16 v24, v9

    move-object/from16 p2, v13

    move v9, v8

    move/from16 v9, v24

    :goto_24
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_21

    :cond_33
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 v24, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, v17

    if-eq v7, v3, :cond_34

    goto :goto_25

    :cond_34
    move v2, v1

    :goto_25
    or-int v2, v24, v2

    if-eqz v2, :cond_35

    .line 149
    new-array v3, v7, [J

    goto :goto_26

    :cond_35
    move-object/from16 v3, p1

    :goto_26
    if-eqz v2, :cond_36

    .line 150
    new-array v5, v7, [I

    goto :goto_27

    :cond_36
    move-object/from16 v5, p2

    :goto_27
    if-eqz v2, :cond_37

    move v15, v1

    :cond_37
    if-eqz v2, :cond_38

    .line 151
    new-array v6, v7, [I

    goto :goto_28

    :cond_38
    move-object v6, v10

    .line 152
    :goto_28
    new-array v7, v7, [J

    const-wide/16 v8, 0x0

    move-wide v12, v8

    move v8, v1

    .line 153
    :goto_29
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v9, v9

    if-ge v1, v9, :cond_3c

    .line 154
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v22, v9, v1

    .line 155
    aget v9, v4, v1

    move-object/from16 v24, v4

    .line 156
    aget v4, v0, v1

    if-eqz v2, :cond_39

    move-object/from16 v25, v0

    sub-int v0, v4, v9

    move/from16 v26, v15

    move-object/from16 v15, p1

    .line 157
    invoke-static {v15, v9, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v15, p2

    .line 158
    invoke-static {v15, v9, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    invoke-static {v10, v9, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    :cond_39
    move-object/from16 v25, v0

    move/from16 v26, v15

    move-object/from16 v15, p2

    :goto_2a
    move/from16 v0, v26

    :goto_2b
    if-ge v9, v4, :cond_3b

    const-wide/32 v18, 0xf4240

    move-object/from16 v27, v3

    move/from16 p2, v4

    .line 160
    iget-wide v3, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v12

    move-wide/from16 v20, v3

    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 161
    aget-wide v16, v14, v9

    move-wide/from16 v18, v12

    sub-long v12, v16, v22

    move/from16 v17, v9

    move-object/from16 v16, v10

    const-wide/16 v9, 0x0

    .line 162
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    const-wide/32 v30, 0xf4240

    iget-wide v9, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v32, v9

    .line 163
    invoke-static/range {v28 .. v33}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    add-long/2addr v3, v9

    .line 164
    aput-wide v3, v7, v8

    if-eqz v2, :cond_3a

    .line 165
    aget v3, v5, v8

    if-le v3, v0, :cond_3a

    .line 166
    aget v0, v15, v17

    :cond_3a
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v17, 0x1

    move/from16 v4, p2

    move-object/from16 v10, v16

    move-wide/from16 v12, v18

    move-object/from16 v3, v27

    goto :goto_2b

    :cond_3b
    move-object/from16 v27, v3

    move-object/from16 v16, v10

    move-wide/from16 v18, v12

    .line 167
    iget-object v3, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v3, v1

    add-long v12, v18, v3

    add-int/lit8 v1, v1, 0x1

    move-object/from16 p2, v15

    move-object/from16 v4, v24

    move-object/from16 v3, v27

    move v15, v0

    move-object/from16 v0, v25

    goto/16 :goto_29

    :cond_3c
    move-object/from16 v27, v3

    move-wide/from16 v18, v12

    move/from16 v26, v15

    const-wide/32 v0, 0xf4240

    .line 168
    iget-wide v2, v11, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v18

    move-wide/from16 v18, v0

    move-wide/from16 v20, v2

    .line 169
    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 170
    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object v3, v5

    move/from16 v4, v26

    move-object v5, v7

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v10

    :cond_3d
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 171
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "moov",
            "gaplessInfoHolder",
            "duration",
            "drmInitData",
            "ignoreEditLists",
            "isQuickTime",
            "modifyTrackFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_90

    .line 3
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 4
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v6, 0x7472616b

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p7

    move/from16 v26, v3

    move-object/from16 v3, p1

    goto/16 :goto_61

    :cond_0
    const v5, 0x6d766864

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x6d646961

    .line 7
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    .line 8
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    .line 10
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v8, 0x10

    .line 12
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 13
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    const v9, 0x736f756e

    const/4 v10, -0x1

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v13, v7

    goto :goto_3

    :cond_1
    const v9, 0x76696465

    if-ne v7, v9, :cond_2

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    const v9, 0x74657874

    if-eq v7, v9, :cond_5

    const v9, 0x7362746c

    if-eq v7, v9, :cond_5

    const v9, 0x73756274

    if-eq v7, v9, :cond_5

    const v9, 0x636c6370

    if-ne v7, v9, :cond_3

    goto :goto_2

    :cond_3
    const v9, 0x6d657461

    if-ne v7, v9, :cond_4

    const/4 v7, 0x5

    goto :goto_1

    :cond_4
    move v13, v10

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x3

    goto :goto_1

    :goto_3
    if-ne v13, v10, :cond_6

    const/4 v5, 0x0

    move-object/from16 v0, p7

    move-object/from16 v27, v2

    move/from16 v26, v3

    goto/16 :goto_60

    :cond_6
    const v7, 0x746b6864

    .line 14
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    .line 15
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v9, 0x8

    .line 17
    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 18
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    shr-int/lit8 v11, v11, 0x18

    and-int/lit16 v11, v11, 0xff

    if-nez v11, :cond_7

    move v8, v9

    .line 19
    :cond_7
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 20
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    const/4 v8, 0x4

    .line 21
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 22
    iget v14, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-nez v11, :cond_8

    move v9, v8

    :cond_8
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v9, :cond_a

    .line 23
    iget-object v15, v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v16, v14, v8

    .line 24
    aget-byte v15, v15, v16

    if-eq v15, v10, :cond_9

    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v8, 0x1

    :goto_5
    const-wide/16 v16, 0x0

    if-eqz v8, :cond_b

    .line 25
    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_7

    :cond_b
    if-nez v11, :cond_c

    .line 26
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    :goto_6
    cmp-long v10, v8, v16

    if-nez v10, :cond_d

    :goto_7
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :cond_d
    const/16 v10, 0x10

    .line 27
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 28
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 29
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    const/4 v14, 0x4

    .line 30
    invoke-virtual {v7, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 31
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 32
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    const/high16 v15, 0x10000

    const/high16 v0, -0x10000

    if-nez v10, :cond_e

    if-ne v11, v15, :cond_e

    if-ne v14, v0, :cond_e

    if-nez v7, :cond_e

    const/16 v0, 0x5a

    goto :goto_8

    :cond_e
    if-nez v10, :cond_f

    if-ne v11, v0, :cond_f

    if-ne v14, v15, :cond_f

    if-nez v7, :cond_f

    const/16 v0, 0x10e

    goto :goto_8

    :cond_f
    if-ne v10, v0, :cond_10

    if-nez v11, :cond_10

    if-nez v14, :cond_10

    if-ne v7, v0, :cond_10

    const/16 v0, 0xb4

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    :goto_8
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p2, v10

    if-nez v7, :cond_11

    goto :goto_9

    :cond_11
    move-wide/from16 v8, p2

    .line 33
    :goto_9
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x8

    .line 34
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 35
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_12

    const/16 v7, 0x8

    goto :goto_a

    :cond_12
    const/16 v7, 0x10

    .line 36
    :goto_a
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v24

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v8, v10

    if-nez v5, :cond_13

    move-wide/from16 v18, v10

    goto :goto_b

    :cond_13
    const-wide/32 v20, 0xf4240

    move-wide/from16 v18, v8

    move-wide/from16 v22, v24

    .line 38
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    move-wide/from16 v18, v7

    :goto_b
    const v5, 0x6d696e66

    .line 39
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    .line 40
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7374626c

    .line 41
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    .line 42
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x6d646864

    .line 43
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    .line 44
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x8

    .line 46
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 47
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_14

    const/16 v8, 0x8

    goto :goto_c

    :cond_14
    const/16 v8, 0x10

    .line 48
    :goto_c
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 49
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    if-nez v7, :cond_15

    const/4 v7, 0x4

    goto :goto_d

    :cond_15
    const/16 v7, 0x8

    .line 50
    :goto_d
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 51
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    shr-int/lit8 v7, v6, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    shr-int/lit8 v10, v6, 0x5

    and-int/lit8 v10, v10, 0x1f

    add-int/lit8 v10, v10, 0x60

    int-to-char v10, v10

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    .line 52
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v14, 0x3

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const v7, 0x73747364

    .line 54
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 55
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 57
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0xc

    .line 58
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 59
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 60
    new-array v9, v8, [Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v20, v11

    move/from16 v21, v14

    move/from16 v23, v15

    :goto_e
    if-ge v10, v8, :cond_86

    .line 61
    iget v11, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 62
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    if-lez v14, :cond_16

    const/4 v15, 0x1

    goto :goto_f

    :cond_16
    const/4 v15, 0x0

    :goto_f
    move/from16 v22, v8

    const-string v8, "childAtomSize must be positive"

    .line 63
    invoke-static {v15, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 64
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    move/from16 v26, v3

    const v3, 0x61766331

    if-eq v15, v3, :cond_5a

    const v3, 0x61766333

    if-eq v15, v3, :cond_5a

    const v3, 0x656e6376

    if-eq v15, v3, :cond_5a

    const v3, 0x6d317620

    if-eq v15, v3, :cond_5a

    const v3, 0x6d703476

    if-eq v15, v3, :cond_5a

    const v3, 0x68766331

    if-eq v15, v3, :cond_5a

    const v3, 0x68657631

    if-eq v15, v3, :cond_5a

    const v3, 0x73323633

    if-eq v15, v3, :cond_5a

    const v3, 0x48323633

    if-eq v15, v3, :cond_5a

    const v3, 0x76703038

    if-eq v15, v3, :cond_5a

    const v3, 0x76703039

    if-eq v15, v3, :cond_5a

    const v3, 0x61763031

    if-eq v15, v3, :cond_5a

    const v3, 0x64766176

    if-eq v15, v3, :cond_5a

    const v3, 0x64766131

    if-eq v15, v3, :cond_5a

    const v3, 0x64766865

    if-eq v15, v3, :cond_5a

    const v3, 0x64766831

    if-ne v15, v3, :cond_17

    goto/16 :goto_34

    :cond_17
    const v3, 0x6d703461

    move-object/from16 v27, v2

    const v2, 0x656e6361

    move/from16 v28, v13

    const v13, 0x616c6163

    if-eq v15, v3, :cond_23

    if-eq v15, v2, :cond_23

    const v2, 0x61632d33

    if-eq v15, v2, :cond_23

    const v2, 0x65632d33

    if-eq v15, v2, :cond_23

    const v2, 0x61632d34

    if-eq v15, v2, :cond_23

    const v2, 0x64747363

    if-eq v15, v2, :cond_23

    const v2, 0x64747365

    if-eq v15, v2, :cond_23

    const v2, 0x64747368

    if-eq v15, v2, :cond_23

    const v2, 0x6474736c

    if-eq v15, v2, :cond_23

    const v2, 0x64747378

    if-eq v15, v2, :cond_23

    const v2, 0x73616d72

    if-eq v15, v2, :cond_23

    const v2, 0x73617762

    if-eq v15, v2, :cond_23

    const v2, 0x6c70636d

    if-eq v15, v2, :cond_23

    const v2, 0x736f7774

    if-eq v15, v2, :cond_23

    const v2, 0x74776f73

    if-eq v15, v2, :cond_23

    const v2, 0x2e6d7032

    if-eq v15, v2, :cond_23

    const v2, 0x2e6d7033

    if-eq v15, v2, :cond_23

    const v2, 0x6d686131

    if-eq v15, v2, :cond_23

    const v2, 0x6d686d31

    if-eq v15, v2, :cond_23

    if-eq v15, v13, :cond_23

    const v2, 0x616c6177

    if-eq v15, v2, :cond_23

    const v2, 0x756c6177

    if-eq v15, v2, :cond_23

    const v2, 0x4f707573

    if-eq v15, v2, :cond_23

    const v2, 0x664c6143

    if-ne v15, v2, :cond_18

    goto/16 :goto_17

    :cond_18
    const v2, 0x54544d4c

    if-eq v15, v2, :cond_1c

    const v2, 0x74783367

    if-eq v15, v2, :cond_1c

    const v2, 0x77767474

    if-eq v15, v2, :cond_1c

    const v2, 0x73747070

    if-eq v15, v2, :cond_1c

    const v2, 0x63363038

    if-ne v15, v2, :cond_19

    goto :goto_11

    :cond_19
    const v2, 0x6d657474

    if-ne v15, v2, :cond_1a

    add-int/lit8 v2, v11, 0x8

    add-int/lit8 v2, v2, 0x8

    .line 65
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const v2, 0x6d657474

    if-ne v15, v2, :cond_1b

    .line 66
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 67
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 68
    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$$ExternalSyntheticOutline0;->m(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 69
    iput-object v2, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 70
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v20

    goto :goto_10

    :cond_1a
    const v2, 0x63616d6d

    if-ne v15, v2, :cond_1b

    .line 71
    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$$ExternalSyntheticOutline0;->m(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const-string v3, "application/x-camera-motion"

    .line 72
    iput-object v3, v2, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v20

    :cond_1b
    :goto_10
    move-object/from16 v29, v9

    goto/16 :goto_16

    :cond_1c
    :goto_11
    add-int/lit8 v2, v11, 0x8

    add-int/lit8 v2, v2, 0x8

    .line 74
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const v2, 0x54544d4c

    const-string v3, "application/ttml+xml"

    if-ne v15, v2, :cond_1d

    goto :goto_13

    :cond_1d
    const v2, 0x74783367

    if-ne v15, v2, :cond_1e

    add-int/lit8 v2, v14, -0x8

    add-int/lit8 v2, v2, -0x8

    .line 75
    new-array v3, v2, [B

    .line 76
    iget-object v8, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v13, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v15, 0x0

    invoke-static {v8, v13, v3, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget v8, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v8, v2

    iput v8, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 78
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const-string v3, "application/x-quicktime-tx3g"

    const-wide v29, 0x7fffffffffffffffL

    :goto_12
    move-wide/from16 v44, v29

    move-object/from16 v29, v9

    move-wide/from16 v8, v44

    goto :goto_15

    :cond_1e
    const v2, 0x77767474

    if-ne v15, v2, :cond_1f

    const-string v3, "application/x-mp4-vtt"

    :goto_13
    const-wide v29, 0x7fffffffffffffffL

    goto :goto_14

    :cond_1f
    const v2, 0x73747070

    if-ne v15, v2, :cond_20

    move-wide/from16 v29, v16

    goto :goto_14

    :cond_20
    const v2, 0x63363038

    if-ne v15, v2, :cond_22

    const-string v3, "application/x-mp4-cea-608"

    const-wide v20, 0x7fffffffffffffffL

    const/4 v2, 0x1

    move-wide/from16 v29, v20

    move/from16 v21, v2

    :goto_14
    const/4 v2, 0x0

    goto :goto_12

    .line 79
    :goto_15
    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$$ExternalSyntheticOutline0;->m(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 80
    iput-object v3, v13, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 81
    iput-object v7, v13, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 82
    iput-wide v8, v13, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 83
    iput-object v2, v13, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 84
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v20

    :cond_21
    :goto_16
    move/from16 v33, v0

    move-object/from16 v32, v4

    move-object/from16 v31, v6

    move/from16 v34, v10

    move/from16 v36, v11

    move/from16 v37, v14

    goto/16 :goto_33

    .line 85
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_23
    :goto_17
    move-object/from16 v29, v9

    add-int/lit8 v2, v11, 0x8

    const/16 v3, 0x8

    add-int/2addr v2, v3

    .line 86
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v2, 0x6

    if-eqz p6, :cond_24

    .line 87
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 88
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_18

    .line 89
    :cond_24
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v3, 0x0

    :goto_18
    if-eqz v3, :cond_26

    const/4 v2, 0x1

    if-ne v3, v2, :cond_25

    goto :goto_19

    :cond_25
    const/4 v2, 0x2

    if-ne v3, v2, :cond_21

    const/16 v2, 0x10

    .line 90
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 91
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 93
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    const/16 v9, 0x14

    .line 94
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move-object/from16 v31, v6

    goto :goto_1a

    .line 95
    :cond_26
    :goto_19
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const/4 v9, 0x6

    .line 96
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 97
    iget-object v9, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v13, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move/from16 v30, v2

    add-int/lit8 v2, v13, 0x1

    iput v2, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v13, v9, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    move-object/from16 v31, v6

    add-int/lit8 v6, v2, 0x1

    iput v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v13

    add-int/lit8 v6, v6, 0x2

    .line 98
    iput v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_27

    const/16 v3, 0x10

    .line 99
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_27
    move/from16 v3, v30

    .line 100
    :goto_1a
    iget v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const v9, 0x656e6361

    if-ne v15, v9, :cond_2a

    .line 101
    invoke-static {v5, v11, v14}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_29

    .line 102
    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v1, :cond_28

    const/4 v15, 0x0

    goto :goto_1b

    .line 103
    :cond_28
    iget-object v15, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v15, v15, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v15

    .line 104
    :goto_1b
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v9, v29, v10

    move-object v9, v15

    move v15, v13

    goto :goto_1c

    :cond_29
    move-object v9, v1

    .line 105
    :goto_1c
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1d

    :cond_2a
    move-object v9, v1

    :goto_1d
    const-string v13, "audio/ac4"

    const-string v30, "audio/eac3"

    move/from16 v32, v2

    const-string v2, "audio/ac3"

    move/from16 v33, v3

    const v3, 0x61632d33

    const-string v34, "audio/raw"

    if-ne v15, v3, :cond_2b

    move-object/from16 v34, v2

    goto/16 :goto_22

    :cond_2b
    const v3, 0x65632d33

    if-ne v15, v3, :cond_2c

    move-object/from16 v34, v30

    goto/16 :goto_22

    :cond_2c
    const v3, 0x61632d34

    if-ne v15, v3, :cond_2d

    move-object/from16 v34, v13

    goto/16 :goto_22

    :cond_2d
    const v3, 0x64747363

    if-ne v15, v3, :cond_2e

    const-string v3, "audio/vnd.dts"

    :goto_1e
    move-object/from16 v34, v3

    goto/16 :goto_22

    :cond_2e
    const v3, 0x64747368

    if-eq v15, v3, :cond_40

    const v3, 0x6474736c

    if-ne v15, v3, :cond_2f

    goto/16 :goto_21

    :cond_2f
    const v3, 0x64747365

    if-ne v15, v3, :cond_30

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_1e

    :cond_30
    const v3, 0x64747378

    if-ne v15, v3, :cond_31

    const-string v3, "audio/vnd.dts.uhd"

    goto :goto_1e

    :cond_31
    const v3, 0x73616d72

    if-ne v15, v3, :cond_32

    const-string v3, "audio/3gpp"

    goto :goto_1e

    :cond_32
    const v3, 0x73617762

    if-ne v15, v3, :cond_33

    const-string v3, "audio/amr-wb"

    goto :goto_1e

    :cond_33
    const v3, 0x6c70636d

    if-eq v15, v3, :cond_3f

    const v3, 0x736f7774

    if-ne v15, v3, :cond_34

    goto :goto_20

    :cond_34
    const v3, 0x74776f73

    if-ne v15, v3, :cond_35

    const/high16 v3, 0x10000000

    goto :goto_23

    :cond_35
    const v3, 0x2e6d7032

    if-eq v15, v3, :cond_3e

    const v3, 0x2e6d7033

    if-ne v15, v3, :cond_36

    goto :goto_1f

    :cond_36
    const v3, 0x6d686131

    if-ne v15, v3, :cond_37

    const-string v3, "audio/mha1"

    goto :goto_1e

    :cond_37
    const v3, 0x6d686d31

    if-ne v15, v3, :cond_38

    const-string v3, "audio/mhm1"

    goto :goto_1e

    :cond_38
    const v3, 0x616c6163

    if-ne v15, v3, :cond_39

    const-string v3, "audio/alac"

    goto :goto_1e

    :cond_39
    const v3, 0x616c6177

    if-ne v15, v3, :cond_3a

    const-string v3, "audio/g711-alaw"

    goto :goto_1e

    :cond_3a
    const v3, 0x756c6177

    if-ne v15, v3, :cond_3b

    const-string v3, "audio/g711-mlaw"

    goto :goto_1e

    :cond_3b
    const v3, 0x4f707573

    if-ne v15, v3, :cond_3c

    const-string v3, "audio/opus"

    goto :goto_1e

    :cond_3c
    const v3, 0x664c6143

    if-ne v15, v3, :cond_3d

    const-string v3, "audio/flac"

    goto/16 :goto_1e

    :cond_3d
    const/4 v3, -0x1

    const/16 v34, 0x0

    goto :goto_23

    :cond_3e
    :goto_1f
    const-string v3, "audio/mpeg"

    goto/16 :goto_1e

    :cond_3f
    :goto_20
    const/4 v3, 0x2

    goto :goto_23

    :cond_40
    :goto_21
    const-string v3, "audio/vnd.dts.hd"

    goto/16 :goto_1e

    :goto_22
    const/4 v3, -0x1

    :goto_23
    const/4 v15, 0x0

    const/16 v35, 0x0

    move-object/from16 v1, v35

    move-object/from16 v35, v15

    move/from16 v15, v33

    move/from16 v33, v0

    move/from16 v44, v32

    move-object/from16 v32, v4

    move v4, v6

    move/from16 v6, v44

    move-object/from16 v45, v34

    move/from16 v34, v10

    move-object/from16 v10, v45

    :goto_24
    sub-int v0, v4, v11

    if-ge v0, v14, :cond_58

    .line 106
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 107
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    if-lez v0, :cond_41

    const/16 v36, 0x1

    goto :goto_25

    :cond_41
    const/16 v36, 0x0

    :goto_25
    move/from16 v37, v14

    move/from16 v14, v36

    .line 108
    invoke-static {v14, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 109
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    move/from16 v36, v11

    const v11, 0x6d686143

    if-ne v14, v11, :cond_42

    add-int/lit8 v11, v0, -0xd

    .line 110
    new-array v14, v11, [B

    move/from16 v38, v3

    add-int/lit8 v3, v4, 0xd

    .line 111
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    iget-object v3, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v39, v1

    iget v1, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move-object/from16 v40, v8

    const/4 v8, 0x0

    invoke-static {v3, v1, v14, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v1, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v1, v11

    iput v1, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 114
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto/16 :goto_29

    :cond_42
    move-object/from16 v39, v1

    move/from16 v38, v3

    move-object/from16 v40, v8

    const v1, 0x65736473

    if-eq v14, v1, :cond_50

    if-eqz p6, :cond_43

    const v1, 0x77617665

    if-ne v14, v1, :cond_43

    goto/16 :goto_2c

    :cond_43
    const v1, 0x64616333

    if-ne v14, v1, :cond_45

    add-int/lit8 v1, v4, 0x8

    .line 115
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 116
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v3, v3, 0xc0

    shr-int/lit8 v3, v3, 0x6

    .line 118
    sget-object v8, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v3, v8, v3

    .line 119
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 120
    sget-object v11, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v14, v8, 0x38

    shr-int/lit8 v14, v14, 0x3

    aget v11, v11, v14

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_44

    add-int/lit8 v11, v11, 0x1

    .line 121
    :cond_44
    new-instance v8, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 122
    iput-object v1, v8, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 123
    iput-object v2, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 124
    iput v11, v8, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 125
    iput v3, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 126
    iput-object v9, v8, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 127
    iput-object v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 128
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_27

    :cond_45
    const v1, 0x64656333

    if-ne v14, v1, :cond_49

    add-int/lit8 v1, v4, 0x8

    .line 129
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 130
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    .line 131
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 132
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v3, v3, 0xc0

    shr-int/lit8 v3, v3, 0x6

    .line 133
    sget-object v8, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v3, v8, v3

    .line 134
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 135
    sget-object v11, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v14, v8, 0xe

    shr-int/lit8 v14, v14, 0x1

    aget v11, v11, v14

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_46

    add-int/lit8 v11, v11, 0x1

    .line 136
    :cond_46
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x1e

    shr-int/lit8 v8, v8, 0x1

    if-lez v8, :cond_47

    .line 137
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_47

    add-int/lit8 v11, v11, 0x2

    .line 138
    :cond_47
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lez v8, :cond_48

    .line 139
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_48

    const-string v8, "audio/eac3-joc"

    goto :goto_26

    :cond_48
    move-object/from16 v8, v30

    .line 140
    :goto_26
    new-instance v14, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v14}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 141
    iput-object v1, v14, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 142
    iput-object v8, v14, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 143
    iput v11, v14, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 144
    iput v3, v14, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 145
    iput-object v9, v14, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 146
    iput-object v7, v14, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 147
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    :goto_27
    move-object/from16 v20, v1

    goto/16 :goto_2a

    :cond_49
    const v1, 0x64616334

    if-ne v14, v1, :cond_4b

    add-int/lit8 v1, v4, 0x8

    .line 148
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 149
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 150
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 151
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    shr-int/lit8 v8, v8, 0x5

    if-ne v8, v3, :cond_4a

    const v3, 0xbb80

    goto :goto_28

    :cond_4a
    const v3, 0xac44

    .line 152
    :goto_28
    new-instance v8, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 153
    iput-object v1, v8, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 154
    iput-object v13, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x2

    .line 155
    iput v1, v8, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 156
    iput v3, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 157
    iput-object v9, v8, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 158
    iput-object v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 159
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_27

    :cond_4b
    const v1, 0x64647473

    if-ne v14, v1, :cond_4c

    .line 160
    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$$ExternalSyntheticOutline0;->m(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 161
    iput-object v10, v1, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 162
    iput v15, v1, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 163
    iput v6, v1, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 164
    iput-object v9, v1, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 165
    iput-object v7, v1, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 166
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_27

    :cond_4c
    const v1, 0x644f7073

    if-ne v14, v1, :cond_4d

    add-int/lit8 v1, v0, -0x8

    .line 167
    sget-object v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v8, v3

    add-int/2addr v8, v1

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    add-int/lit8 v11, v4, 0x8

    .line 168
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 169
    array-length v3, v3

    invoke-virtual {v5, v8, v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 170
    invoke-static {v8}, Lcom/google/android/exoplayer2/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v1

    goto :goto_29

    :cond_4d
    const v1, 0x64664c61

    if-ne v14, v1, :cond_4e

    add-int/lit8 v1, v0, -0xc

    add-int/lit8 v3, v1, 0x4

    .line 171
    new-array v3, v3, [B

    const/16 v8, 0x66

    const/4 v11, 0x0

    .line 172
    aput-byte v8, v3, v11

    const/16 v8, 0x4c

    const/4 v11, 0x1

    .line 173
    aput-byte v8, v3, v11

    const/16 v8, 0x61

    const/4 v11, 0x2

    .line 174
    aput-byte v8, v3, v11

    const/16 v8, 0x43

    const/4 v11, 0x3

    .line 175
    aput-byte v8, v3, v11

    add-int/lit8 v8, v4, 0xc

    .line 176
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 177
    iget-object v8, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v11, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v14, 0x4

    invoke-static {v8, v11, v3, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget v8, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v8, v1

    iput v8, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 179
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_29
    move-object/from16 v35, v1

    goto :goto_2a

    :cond_4e
    const v1, 0x616c6163

    if-ne v14, v1, :cond_4f

    add-int/lit8 v1, v0, -0xc

    .line 180
    new-array v3, v1, [B

    add-int/lit8 v6, v4, 0xc

    .line 181
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 182
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v8, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v11, 0x0

    invoke-static {v6, v8, v3, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v6, v1

    iput v6, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 184
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    const/16 v6, 0x9

    .line 185
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 186
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 v8, 0x14

    .line 187
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 188
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 190
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 191
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 192
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_2b

    :cond_4f
    :goto_2a
    move-object/from16 v1, v35

    :goto_2b
    move-object/from16 v35, v1

    move-object/from16 v1, v39

    move-object/from16 v11, v40

    goto/16 :goto_32

    :cond_50
    :goto_2c
    const/4 v1, 0x0

    const v3, 0x65736473

    if-ne v14, v3, :cond_51

    move v3, v4

    move-object/from16 v11, v40

    goto :goto_2e

    .line 193
    :cond_51
    iget v3, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    :goto_2d
    sub-int v8, v3, v4

    if-ge v8, v0, :cond_54

    .line 194
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 195
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    if-lez v8, :cond_52

    const/4 v1, 0x1

    :cond_52
    move-object/from16 v11, v40

    .line 196
    invoke-static {v1, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 197
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v14, 0x65736473

    if-ne v1, v14, :cond_53

    :goto_2e
    const/4 v1, -0x1

    goto :goto_2f

    :cond_53
    add-int/2addr v3, v8

    const/4 v1, 0x0

    move-object/from16 v40, v11

    goto :goto_2d

    :cond_54
    move-object/from16 v11, v40

    const/4 v1, -0x1

    const/4 v3, -0x1

    :goto_2f
    if-eq v3, v1, :cond_57

    .line 198
    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v1

    .line 199
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 200
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    if-eqz v1, :cond_56

    const-string v8, "audio/mp4a-latm"

    .line 201
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 202
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v6

    .line 203
    iget v8, v6, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 204
    iget v10, v6, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 205
    iget-object v6, v6, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    move v15, v10

    goto :goto_30

    :cond_55
    move v8, v6

    move-object/from16 v6, v39

    .line 206
    :goto_30
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_31

    :cond_56
    move v8, v6

    move-object/from16 v1, v35

    move-object/from16 v6, v39

    :goto_31
    move-object/from16 v35, v1

    move-object v10, v3

    move-object v1, v6

    move v6, v8

    goto :goto_32

    :cond_57
    move-object/from16 v1, v39

    :goto_32
    add-int/2addr v4, v0

    move-object v8, v11

    move/from16 v11, v36

    move/from16 v14, v37

    move/from16 v3, v38

    goto/16 :goto_24

    :cond_58
    move-object/from16 v39, v1

    move/from16 v38, v3

    move/from16 v36, v11

    move/from16 v37, v14

    if-nez v20, :cond_59

    if-eqz v10, :cond_59

    .line 207
    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$$ExternalSyntheticOutline0;->m(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 208
    iput-object v10, v0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v1, v39

    .line 209
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 210
    iput v15, v0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 211
    iput v6, v0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    move/from16 v3, v38

    .line 212
    iput v3, v0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    move-object/from16 v15, v35

    .line 213
    iput-object v15, v0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 214
    iput-object v9, v0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 215
    iput-object v7, v0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 216
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v20

    :cond_59
    :goto_33
    move-object/from16 v30, v7

    move/from16 v1, v33

    move/from16 v43, v36

    move/from16 v6, v37

    goto/16 :goto_59

    :cond_5a
    :goto_34
    move/from16 v33, v0

    move-object/from16 v27, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v6

    move-object/from16 v29, v9

    move/from16 v34, v10

    move/from16 v36, v11

    move/from16 v28, v13

    move/from16 v37, v14

    move-object v11, v8

    const/4 v0, -0x1

    add-int/lit8 v1, v36, 0x8

    add-int/lit8 v1, v1, 0x8

    .line 217
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v1, 0x10

    .line 218
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 219
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 220
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const/16 v3, 0x32

    .line 221
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 222
    iget v3, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const v4, 0x656e6376

    if-ne v15, v4, :cond_5d

    move/from16 v4, v36

    move/from16 v6, v37

    .line 223
    invoke-static {v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_5c

    .line 224
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v10, p4

    if-nez v10, :cond_5b

    const/4 v13, 0x0

    goto :goto_35

    .line 225
    :cond_5b
    iget-object v13, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v13

    .line 226
    :goto_35
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v8, v29, v34

    move v15, v9

    goto :goto_36

    :cond_5c
    move-object/from16 v10, p4

    move-object v13, v10

    .line 227
    :goto_36
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_37

    :cond_5d
    move-object/from16 v10, p4

    move/from16 v4, v36

    move/from16 v6, v37

    move-object v13, v10

    :goto_37
    const-string/jumbo v8, "video/3gpp"

    const v9, 0x6d317620

    if-ne v15, v9, :cond_5e

    const-string/jumbo v9, "video/mpeg"

    goto :goto_38

    :cond_5e
    const v9, 0x48323633

    if-ne v15, v9, :cond_5f

    move-object v9, v8

    goto :goto_38

    :cond_5f
    const/4 v9, 0x0

    :goto_38
    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v10, v36

    move-object/from16 v41, v38

    move-object/from16 v36, v13

    move-object/from16 v44, v30

    move-object/from16 v30, v7

    move-object/from16 v7, v44

    move-object/from16 v45, v35

    move-object/from16 v35, v8

    move-object/from16 v8, v45

    :goto_39
    sub-int v13, v3, v4

    if-ge v13, v6, :cond_84

    .line 228
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 229
    iget v13, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move-object/from16 v38, v7

    .line 230
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    move/from16 v39, v0

    if-nez v7, :cond_60

    .line 231
    iget v0, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v4

    if-ne v0, v6, :cond_60

    move/from16 v43, v4

    goto/16 :goto_58

    :cond_60
    if-lez v7, :cond_61

    const/4 v0, 0x1

    goto :goto_3a

    :cond_61
    const/4 v0, 0x0

    .line 232
    :goto_3a
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 233
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    move-object/from16 v40, v11

    const v11, 0x61766343

    if-ne v0, v11, :cond_64

    if-nez v9, :cond_62

    const/4 v0, 0x1

    goto :goto_3b

    :cond_62
    const/4 v0, 0x0

    :goto_3b
    const/4 v8, 0x0

    .line 234
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v13, v13, 0x8

    .line 235
    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 236
    invoke-static {v5}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v0

    .line 237
    iget-object v8, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 238
    iget v9, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    if-nez v37, :cond_63

    .line 239
    iget v14, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    .line 240
    :cond_63
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v11, "video/avc"

    goto :goto_3d

    :cond_64
    const v11, 0x68766343

    if-ne v0, v11, :cond_66

    if-nez v9, :cond_65

    const/4 v0, 0x1

    goto :goto_3c

    :cond_65
    const/4 v0, 0x0

    :goto_3c
    const/4 v8, 0x0

    .line 241
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v13, v13, 0x8

    .line 242
    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 243
    invoke-static {v5}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v0

    .line 244
    iget-object v8, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 245
    iget v9, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    .line 246
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v11, "video/hevc"

    :goto_3d
    move/from16 v23, v9

    goto :goto_40

    :cond_66
    const v11, 0x64766343

    if-eq v0, v11, :cond_82

    const v11, 0x64767643

    if-ne v0, v11, :cond_67

    goto/16 :goto_54

    :cond_67
    const v11, 0x76706343

    if-ne v0, v11, :cond_6a

    if-nez v9, :cond_68

    const/4 v0, 0x1

    goto :goto_3e

    :cond_68
    const/4 v0, 0x0

    :goto_3e
    const/4 v9, 0x0

    .line 247
    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const v0, 0x76703038

    if-ne v15, v0, :cond_69

    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    goto :goto_3f

    :cond_69
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    :goto_3f
    move-object v11, v0

    move-object v0, v8

    move-object/from16 v8, v38

    :goto_40
    move-object v9, v11

    goto :goto_46

    :cond_6a
    const v11, 0x61763143

    if-ne v0, v11, :cond_6c

    if-nez v9, :cond_6b

    const/4 v0, 0x1

    goto :goto_41

    :cond_6b
    const/4 v0, 0x0

    :goto_41
    const/4 v9, 0x0

    .line 248
    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const-string/jumbo v0, "video/av01"

    move-object v9, v0

    goto :goto_43

    :cond_6c
    const v11, 0x64323633

    if-ne v0, v11, :cond_6e

    if-nez v9, :cond_6d

    const/4 v0, 0x1

    goto :goto_42

    :cond_6d
    const/4 v0, 0x0

    :goto_42
    const/4 v9, 0x0

    .line 249
    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v9, v35

    :goto_43
    move/from16 v43, v4

    goto :goto_47

    :cond_6e
    const v11, 0x65736473

    if-ne v0, v11, :cond_71

    if-nez v9, :cond_6f

    const/4 v0, 0x1

    goto :goto_44

    :cond_6f
    const/4 v0, 0x0

    :goto_44
    const/4 v9, 0x0

    .line 250
    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 251
    invoke-static {v5, v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v0

    .line 252
    iget-object v9, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 253
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_70

    .line 254
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_45

    :cond_70
    move-object/from16 v0, v38

    :goto_45
    move-object/from16 v44, v8

    move-object v8, v0

    move-object/from16 v0, v44

    :goto_46
    move-object v11, v9

    move-object v9, v0

    move/from16 v0, v39

    goto/16 :goto_4b

    :cond_71
    const v11, 0x70617370

    if-ne v0, v11, :cond_72

    add-int/lit8 v13, v13, 0x8

    .line 255
    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 256
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 257
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    int-to-float v0, v0

    int-to-float v11, v11

    div-float/2addr v0, v11

    const/4 v11, 0x1

    move v14, v0

    move/from16 v43, v4

    move/from16 v37, v11

    :goto_47
    move/from16 v42, v15

    :goto_48
    move/from16 v0, v39

    goto/16 :goto_57

    :cond_72
    const v11, 0x73763364

    if-ne v0, v11, :cond_75

    add-int/lit8 v0, v13, 0x8

    :goto_49
    sub-int v10, v0, v13

    if-ge v10, v7, :cond_74

    .line 258
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 259
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 260
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    move/from16 v42, v13

    const v13, 0x70726f6a

    if-ne v11, v13, :cond_73

    .line 261
    iget-object v11, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v10, v0

    .line 262
    invoke-static {v11, v0, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_53

    :cond_73
    add-int/2addr v0, v10

    move/from16 v13, v42

    goto :goto_49

    :cond_74
    const/4 v10, 0x0

    goto :goto_43

    :cond_75
    const v11, 0x73743364

    if-ne v0, v11, :cond_7a

    .line 263
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v11, 0x3

    .line 264
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v0, :cond_81

    .line 265
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_79

    const/4 v13, 0x1

    if-eq v0, v13, :cond_78

    const/4 v13, 0x2

    if-eq v0, v13, :cond_77

    if-eq v0, v11, :cond_76

    goto/16 :goto_53

    :cond_76
    move v0, v11

    goto :goto_4a

    :cond_77
    const/4 v0, 0x2

    goto :goto_4c

    :cond_78
    const/4 v0, 0x1

    :goto_4a
    move-object v11, v9

    move-object v9, v8

    move-object/from16 v8, v38

    :goto_4b
    move/from16 v43, v4

    move/from16 v42, v15

    goto/16 :goto_56

    :cond_79
    const/4 v0, 0x0

    :goto_4c
    move/from16 v43, v4

    move/from16 v42, v15

    goto/16 :goto_57

    :cond_7a
    const v11, 0x636f6c72

    if-ne v0, v11, :cond_81

    .line 266
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const v11, 0x6e636c78

    if-ne v0, v11, :cond_7b

    const/4 v11, 0x1

    goto :goto_4d

    :cond_7b
    const/4 v11, 0x0

    :goto_4d
    if-nez v11, :cond_7e

    const v13, 0x6e636c63

    if-ne v0, v13, :cond_7c

    goto :goto_4f

    :cond_7c
    const-string v11, "Unsupported color type: "

    .line 267
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_7d

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_7d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4e
    const-string v11, "AtomParsers"

    .line 268
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 269
    :cond_7e
    :goto_4f
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 270
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    move/from16 v42, v15

    const/4 v15, 0x2

    .line 271
    invoke-virtual {v5, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v11, :cond_7f

    .line 272
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_7f

    const/4 v11, 0x1

    goto :goto_50

    :cond_7f
    const/4 v11, 0x0

    .line 273
    :goto_50
    new-instance v15, Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 274
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v0

    if-eqz v11, :cond_80

    const/4 v11, 0x1

    goto :goto_51

    :cond_80
    const/4 v11, 0x2

    .line 275
    :goto_51
    invoke-static {v13}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v13

    move/from16 v43, v4

    const/4 v4, 0x0

    invoke-direct {v15, v0, v11, v13, v4}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    move-object v11, v9

    move-object/from16 v41, v15

    :goto_52
    move/from16 v0, v39

    move-object v9, v8

    move-object/from16 v8, v38

    goto :goto_56

    :cond_81
    :goto_53
    move/from16 v43, v4

    move/from16 v42, v15

    goto :goto_55

    :cond_82
    :goto_54
    move/from16 v43, v4

    move/from16 v42, v15

    .line 276
    invoke-static {v5}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 277
    iget-object v8, v0, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v9, "video/dolby-vision"

    goto/16 :goto_48

    :cond_83
    :goto_55
    move-object v11, v9

    goto :goto_52

    :goto_56
    move-object/from16 v38, v8

    move-object v8, v9

    move-object v9, v11

    :goto_57
    add-int/2addr v3, v7

    move-object/from16 v7, v38

    move-object/from16 v11, v40

    move/from16 v15, v42

    move/from16 v4, v43

    goto/16 :goto_39

    :cond_84
    move/from16 v39, v0

    move/from16 v43, v4

    move-object/from16 v38, v7

    :goto_58
    if-nez v9, :cond_85

    move/from16 v1, v33

    goto :goto_59

    .line 278
    :cond_85
    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$$ExternalSyntheticOutline0;->m(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 279
    iput-object v9, v0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 280
    iput-object v8, v0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 281
    iput v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 282
    iput v2, v0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 283
    iput v14, v0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    move/from16 v1, v33

    .line 284
    iput v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    .line 285
    iput-object v10, v0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    move/from16 v2, v39

    .line 286
    iput v2, v0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    move-object/from16 v2, v38

    .line 287
    iput-object v2, v0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    move-object/from16 v10, v36

    .line 288
    iput-object v10, v0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v2, v41

    .line 289
    iput-object v2, v0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 290
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v20

    :goto_59
    add-int v11, v43, v6

    .line 291
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v10, v34, 0x1

    move v0, v1

    move/from16 v8, v22

    move/from16 v3, v26

    move-object/from16 v2, v27

    move/from16 v13, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v4, v32

    move-object/from16 v1, p4

    goto/16 :goto_e

    :cond_86
    move-object/from16 v27, v2

    move/from16 v26, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v6

    move-object/from16 v29, v9

    move/from16 v28, v13

    const/4 v5, 0x0

    if-nez p5, :cond_8c

    const v0, 0x65647473

    move-object/from16 v4, v32

    .line 292
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    if-eqz v0, :cond_8d

    const v1, 0x656c7374

    .line 293
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-nez v0, :cond_87

    move-object v0, v5

    goto :goto_5d

    .line 294
    :cond_87
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    .line 295
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 296
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 297
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 298
    new-array v3, v2, [J

    .line 299
    new-array v6, v2, [J

    const/4 v7, 0x0

    :goto_5a
    if-ge v7, v2, :cond_8b

    const/4 v8, 0x1

    if-ne v1, v8, :cond_88

    .line 300
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_5b

    :cond_88
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_5b
    aput-wide v9, v3, v7

    if-ne v1, v8, :cond_89

    .line 301
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v8

    goto :goto_5c

    :cond_89
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    int-to-long v8, v8

    :goto_5c
    aput-wide v8, v6, v7

    .line 302
    iget-object v8, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v9, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8a

    const/4 v8, 0x2

    .line 303
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 304
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_8b
    invoke-static {v3, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_5d
    if-eqz v0, :cond_8d

    .line 306
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [J

    .line 307
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    goto :goto_5e

    :cond_8c
    move-object/from16 v4, v32

    :cond_8d
    move-object v0, v5

    move-object v1, v0

    :goto_5e
    if-nez v20, :cond_8e

    goto :goto_5f

    .line 308
    :cond_8e
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-object/from16 v2, v31

    .line 309
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 310
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object v11, v5

    move/from16 v13, v28

    move-wide/from16 v16, v24

    move-object/from16 v22, v29

    move-object/from16 v24, v1

    move-object/from16 v25, v0

    invoke-direct/range {v11 .. v25}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_5f
    move-object/from16 v0, p7

    .line 311
    :goto_60
    invoke-interface {v0, v5}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    if-nez v1, :cond_8f

    move-object/from16 v3, p1

    move-object/from16 v2, v27

    goto :goto_61

    :cond_8f
    const v2, 0x6d646961

    .line 312
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 313
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x6d696e66

    .line 314
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 315
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374626c

    .line 316
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 317
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p1

    .line 318
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-result-object v1

    move-object/from16 v2, v27

    .line 319
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_61
    add-int/lit8 v1, v26, 0x1

    move-object/from16 v0, p0

    move v3, v1

    move-object/from16 v1, p4

    goto/16 :goto_0

    :cond_90
    return-object v2
.end method
