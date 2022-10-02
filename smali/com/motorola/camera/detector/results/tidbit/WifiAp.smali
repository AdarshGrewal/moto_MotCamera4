.class public Lcom/motorola/camera/detector/results/tidbit/WifiAp;
.super Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;
.source "WifiAp.java"


# instance fields
.field public hidden:Z

.field public networkEncryption:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;-><init>()V

    return-void
.end method


# virtual methods
.method public escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x3

    const-string v0, "\\"

    const-string v1, ":"

    const-string v2, ";"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    .line 3
    aget-object v3, v1, v2

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final generateQRCodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    if-ltz v1, :cond_53

    if-ltz v2, :cond_53

    .line 2
    sget-object v3, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 3
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const-string v5, "ISO-8859-1"

    const-string v6, "Shift_JIS"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ge v8, v11, :cond_1

    .line 5
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v14, 0x30

    if-lt v11, v14, :cond_0

    const/16 v14, 0x39

    if-gt v11, v14, :cond_0

    move v10, v13

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v11}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v9

    if-eq v9, v12, :cond_3

    move v9, v13

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    .line 7
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_2

    :cond_2
    if-eqz v10, :cond_3

    .line 8
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_2

    :cond_3
    move-object v8, v4

    .line 9
    :goto_2
    new-instance v9, Lcom/google/zxing/common/BitArray;

    invoke-direct {v9}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 10
    iget v10, v8, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    const/4 v11, 0x4

    .line 11
    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 12
    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 13
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/4 v7, 0x2

    const/16 v15, 0x8

    if-eq v14, v13, :cond_e

    const/4 v13, 0x6

    if-eq v14, v7, :cond_a

    if-eq v14, v11, :cond_9

    if-ne v14, v13, :cond_8

    .line 14
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    array-length v6, v5

    rem-int/2addr v6, v7

    if-nez v6, :cond_7

    .line 16
    array-length v6, v5

    add-int/2addr v6, v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v6, :cond_11

    .line 17
    aget-byte v14, v5, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v19, v13, 0x1

    .line 18
    aget-byte v7, v5, v19

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v14, v15

    or-int/2addr v7, v14

    const v14, 0x8140

    if-lt v7, v14, :cond_4

    const v14, 0x9ffc

    if-gt v7, v14, :cond_4

    const v14, 0x8140

    goto :goto_4

    :cond_4
    const v14, 0xe040

    if-lt v7, v14, :cond_5

    const v14, 0xebbf

    if-gt v7, v14, :cond_5

    const v14, 0xc140

    :goto_4
    sub-int/2addr v7, v14

    goto :goto_5

    :cond_5
    move v7, v12

    :goto_5
    if-eq v7, v12, :cond_6

    shr-int/lit8 v14, v7, 0x8

    mul-int/lit16 v14, v14, 0xc0

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v14, v7

    const/16 v7, 0xd

    .line 19
    invoke-virtual {v10, v14, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v13, v13, 0x2

    const/4 v7, 0x2

    goto :goto_3

    .line 20
    :cond_6
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_7
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Kanji byte size not even"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 22
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 23
    :cond_8
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid mode: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_9
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    array-length v6, v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_11

    aget-byte v13, v5, v7

    .line 26
    invoke-virtual {v10, v13, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 27
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 28
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_11

    .line 29
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v7

    if-eq v7, v12, :cond_d

    add-int/lit8 v14, v6, 0x1

    if-ge v14, v5, :cond_c

    .line 30
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v14

    if-eq v14, v12, :cond_b

    mul-int/lit8 v7, v7, 0x2d

    add-int/2addr v7, v14

    const/16 v14, 0xb

    .line 31
    invoke-virtual {v10, v7, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_7

    .line 32
    :cond_b
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    .line 33
    :cond_c
    invoke-virtual {v10, v7, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v6, v14

    goto :goto_7

    .line 34
    :cond_d
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    .line 35
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_11

    .line 36
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/lit8 v13, v6, 0x2

    if-ge v13, v5, :cond_f

    add-int/lit8 v14, v6, 0x1

    .line 37
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v14, v14, -0x30

    .line 38
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v7, v7, 0x64

    const/16 v12, 0xa

    mul-int/2addr v14, v12

    add-int/2addr v14, v7

    add-int/2addr v14, v13

    .line 39
    invoke-virtual {v10, v14, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v6, v6, 0x3

    goto :goto_9

    :cond_f
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v5, :cond_10

    .line 40
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v6

    const/4 v6, 0x7

    .line 41
    invoke-virtual {v10, v7, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v6, v13

    goto :goto_9

    .line 42
    :cond_10
    invoke-virtual {v10, v7, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :goto_9
    const/4 v12, -0x1

    goto :goto_8

    :cond_11
    const/4 v5, 0x1

    .line 43
    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    .line 44
    iget v5, v9, Lcom/google/zxing/common/BitArray;->size:I

    .line 45
    invoke-virtual {v8, v6}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v6

    add-int/2addr v6, v5

    .line 46
    iget v5, v10, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v6, v5

    .line 47
    invoke-static {v6, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 48
    iget v6, v9, Lcom/google/zxing/common/BitArray;->size:I

    .line 49
    invoke-virtual {v8, v5}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v5

    add-int/2addr v5, v6

    .line 50
    iget v6, v10, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v5, v6

    .line 51
    invoke-static {v5, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 52
    new-instance v6, Lcom/google/zxing/common/BitArray;

    invoke-direct {v6}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 53
    invoke-virtual {v6, v9}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    if-ne v8, v4, :cond_12

    .line 54
    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    goto :goto_a

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 55
    :goto_a
    invoke-virtual {v8, v5}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    const/4 v7, 0x1

    shl-int v8, v7, v4

    if-ge v0, v8, :cond_52

    .line 56
    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 57
    invoke-virtual {v6, v10}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 58
    iget-object v0, v5, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    .line 59
    iget v4, v5, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 60
    iget v7, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v8

    mul-int/2addr v8, v7

    sub-int/2addr v4, v8

    shl-int/lit8 v7, v4, 0x3

    .line 61
    iget v8, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v8, v7, :cond_51

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v11, :cond_13

    .line 62
    iget v9, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v9, v7, :cond_13

    const/4 v9, 0x0

    .line 63
    invoke-virtual {v6, v9}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_13
    const/4 v9, 0x0

    .line 64
    iget v8, v6, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v10, 0x7

    and-int/2addr v8, v10

    if-lez v8, :cond_14

    :goto_c
    if-ge v8, v15, :cond_14

    .line 65
    invoke-virtual {v6, v9}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_c

    .line 66
    :cond_14
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v8

    sub-int v8, v4, v8

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v8, :cond_16

    and-int/lit8 v12, v9, 0x1

    if-nez v12, :cond_15

    const/16 v10, 0xec

    goto :goto_e

    :cond_15
    const/16 v10, 0x11

    .line 67
    :goto_e
    invoke-virtual {v6, v10, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 68
    :cond_16
    iget v8, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v8, v7, :cond_50

    .line 69
    iget v7, v5, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 70
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v0

    .line 71
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v8

    if-ne v8, v4, :cond_4f

    .line 72
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_f
    if-ge v9, v0, :cond_2a

    const/4 v10, 0x1

    new-array v11, v10, [I

    new-array v15, v10, [I

    if-ge v9, v0, :cond_29

    .line 73
    rem-int v10, v7, v0

    sub-int v2, v0, v10

    .line 74
    div-int v22, v7, v0

    add-int/lit8 v23, v22, 0x1

    .line 75
    div-int v24, v4, v0

    add-int/lit8 v25, v24, 0x1

    sub-int v1, v22, v24

    move-object/from16 v22, v3

    sub-int v3, v23, v25

    if-ne v1, v3, :cond_28

    move-object/from16 v23, v5

    add-int v5, v2, v10

    if-ne v0, v5, :cond_27

    add-int v5, v24, v1

    mul-int/2addr v5, v2

    add-int v26, v25, v3

    mul-int v26, v26, v10

    add-int v5, v26, v5

    if-ne v7, v5, :cond_26

    if-ge v9, v2, :cond_17

    const/4 v2, 0x0

    aput v24, v11, v2

    aput v1, v15, v2

    goto :goto_10

    :cond_17
    const/4 v2, 0x0

    aput v25, v11, v2

    aput v3, v15, v2

    .line 76
    :goto_10
    aget v1, v11, v2

    .line 77
    new-array v2, v1, [B

    shl-int/lit8 v3, v12, 0x3

    move v5, v3

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_1a

    move/from16 v24, v0

    move v0, v5

    move/from16 v25, v7

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v10, 0x0

    :goto_12
    if-ge v5, v7, :cond_19

    .line 78
    invoke-virtual {v6, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_18

    rsub-int/lit8 v7, v5, 0x7

    const/16 v18, 0x1

    shl-int v7, v18, v7

    or-int/2addr v7, v10

    move v10, v7

    :cond_18
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x8

    goto :goto_12

    :cond_19
    add-int/lit8 v5, v3, 0x0

    int-to-byte v7, v10

    .line 79
    aput-byte v7, v2, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v0

    move/from16 v0, v24

    move/from16 v7, v25

    goto :goto_11

    :cond_1a
    move/from16 v24, v0

    move/from16 v25, v7

    const/4 v0, 0x0

    .line 80
    aget v3, v15, v0

    add-int v0, v1, v3

    .line 81
    new-array v5, v0, [I

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v1, :cond_1b

    .line 82
    aget-byte v10, v2, v7

    and-int/lit16 v10, v10, 0xff

    aput v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 83
    :cond_1b
    new-instance v7, Lcom/google/android/play/core/appupdate/zzr;

    sget-object v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v7, v10}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    if-eqz v3, :cond_25

    sub-int/2addr v0, v3

    if-lez v0, :cond_24

    .line 84
    invoke-virtual {v7, v3}, Lcom/google/android/play/core/appupdate/zzr;->buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v10

    .line 85
    new-array v15, v0, [I

    move-object/from16 v26, v6

    const/4 v6, 0x0

    .line 86
    invoke-static {v5, v6, v15, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v7, v7, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    check-cast v7, Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v6, v7, v15}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    const/4 v7, 0x1

    .line 88
    invoke-virtual {v6, v3, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    .line 89
    iget-object v7, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v15, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 90
    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v7

    if-nez v7, :cond_22

    .line 91
    iget-object v7, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 92
    iget-object v7, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 93
    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v15

    invoke-virtual {v10, v15}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v15

    move-object/from16 v27, v7

    .line 94
    iget-object v7, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v15, :cond_21

    move/from16 v28, v4

    .line 95
    iget-object v4, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    move/from16 v29, v9

    iget v9, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    iget-object v7, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v7, v7, v15

    sub-int/2addr v9, v7

    const/4 v7, -0x1

    add-int/2addr v9, v7

    aget v4, v4, v9

    move-object v9, v6

    move-object/from16 v7, v27

    .line 96
    :goto_14
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v15

    move/from16 v27, v12

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v12

    if-lt v15, v12, :cond_1e

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v12

    if-nez v12, :cond_1e

    .line 97
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v12

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v15

    sub-int/2addr v12, v15

    .line 98
    iget-object v15, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v30, v11

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v11

    invoke-virtual {v15, v11, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v11

    .line 99
    invoke-virtual {v10, v12, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v15

    move/from16 v31, v4

    .line 100
    iget-object v4, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v12, :cond_1d

    if-nez v11, :cond_1c

    .line 101
    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    goto :goto_15

    :cond_1c
    add-int/lit8 v12, v12, 0x1

    .line 102
    new-array v12, v12, [I

    const/16 v32, 0x0

    .line 103
    aput v11, v12, v32

    .line 104
    new-instance v11, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v11, v4, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v4, v11

    .line 105
    :goto_15
    invoke-virtual {v7, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    .line 106
    invoke-virtual {v9, v15}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v9

    move/from16 v12, v27

    move-object/from16 v11, v30

    move/from16 v4, v31

    goto :goto_14

    .line 107
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1e
    move-object/from16 v30, v11

    const/4 v4, 0x2

    new-array v6, v4, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v4, 0x0

    aput-object v7, v6, v4

    const/4 v7, 0x1

    aput-object v9, v6, v7

    .line 108
    aget-object v6, v6, v7

    .line 109
    iget-object v6, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 110
    array-length v7, v6

    sub-int v7, v3, v7

    move v9, v4

    :goto_16
    if-ge v9, v7, :cond_1f

    add-int v10, v0, v9

    .line 111
    aput v4, v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_1f
    add-int/2addr v0, v7

    .line 112
    array-length v7, v6

    invoke-static {v6, v4, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    new-array v0, v3, [B

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_20

    add-int v6, v1, v4

    .line 114
    aget v6, v5, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 115
    :cond_20
    new-instance v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v4, v2, v0}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 117
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v0, 0x0

    .line 118
    aget v1, v30, v0

    add-int v12, v27, v1

    add-int/lit8 v9, v29, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v0, v24

    move/from16 v7, v25

    move-object/from16 v6, v26

    move/from16 v4, v28

    const/4 v11, 0x4

    const/16 v15, 0x8

    goto/16 :goto_f

    .line 119
    :cond_21
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 120
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_26
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_27
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_28
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_29
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move/from16 v25, v7

    if-ne v4, v12, :cond_4e

    .line 128
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v13, :cond_2d

    .line 129
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 130
    iget-object v2, v2, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    .line 131
    array-length v3, v2

    if-ge v4, v3, :cond_2b

    .line 132
    aget-byte v2, v2, v4

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_19

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2d
    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v14, :cond_30

    .line 133
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 134
    iget-object v2, v2, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    .line 135
    array-length v3, v2

    if-ge v4, v3, :cond_2e

    .line 136
    aget-byte v2, v2, v4

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_1b

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 137
    :cond_30
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v2, v25

    if-ne v2, v1, :cond_4d

    move-object/from16 v1, v23

    .line 138
    iget v2, v1, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/4 v3, 0x4

    mul-int/2addr v2, v3

    const/16 v3, 0x11

    add-int/2addr v2, v3

    .line 139
    new-instance v3, Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-direct {v3, v2, v2}, Lkotlinx/coroutines/internal/ArrayQueue;-><init>(II)V

    const v2, 0x7fffffff

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v7, -0x1

    :goto_1c
    if-ge v4, v5, :cond_3f

    move-object/from16 v6, v22

    .line 140
    invoke-static {v0, v6, v1, v4, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILkotlinx/coroutines/internal/ArrayQueue;)V

    const/4 v8, 0x1

    .line 141
    invoke-static {v3, v8}, Lkotlin/jvm/JvmClassMappingKt;->applyMaskPenaltyRule1Internal(Lkotlinx/coroutines/internal/ArrayQueue;Z)I

    move-result v9

    const/4 v8, 0x0

    invoke-static {v3, v8}, Lkotlin/jvm/JvmClassMappingKt;->applyMaskPenaltyRule1Internal(Lkotlinx/coroutines/internal/ArrayQueue;Z)I

    move-result v10

    add-int/2addr v10, v9

    .line 142
    iget-object v9, v3, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    check-cast v9, [[B

    .line 143
    iget v11, v3, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 144
    iget v12, v3, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    move v13, v8

    move v14, v13

    :goto_1d
    const/4 v15, -0x1

    add-int/lit8 v5, v12, -0x1

    if-ge v13, v5, :cond_33

    .line 145
    aget-object v5, v9, v13

    move/from16 v16, v14

    move v14, v8

    :goto_1e
    add-int/lit8 v8, v11, -0x1

    if-ge v14, v8, :cond_32

    .line 146
    aget-byte v8, v5, v14

    add-int/lit8 v19, v14, 0x1

    .line 147
    aget-byte v15, v5, v19

    if-ne v8, v15, :cond_31

    add-int/lit8 v15, v13, 0x1

    aget-object v22, v9, v15

    aget-byte v14, v22, v14

    if-ne v8, v14, :cond_31

    aget-object v14, v9, v15

    aget-byte v14, v14, v19

    if-ne v8, v14, :cond_31

    add-int/lit8 v16, v16, 0x1

    :cond_31
    move/from16 v14, v19

    const/4 v15, -0x1

    goto :goto_1e

    :cond_32
    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v16

    const/4 v8, 0x0

    goto :goto_1d

    :cond_33
    mul-int/lit8 v14, v14, 0x3

    add-int/2addr v14, v10

    .line 148
    iget-object v5, v3, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    check-cast v5, [[B

    .line 149
    iget v8, v3, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 150
    iget v9, v3, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1f
    if-ge v10, v9, :cond_3a

    move v12, v11

    const/4 v11, 0x0

    :goto_20
    if-ge v11, v8, :cond_39

    .line 151
    aget-object v13, v5, v10

    add-int/lit8 v15, v11, 0x6

    if-ge v15, v8, :cond_35

    move/from16 v16, v8

    .line 152
    aget-byte v8, v13, v11

    move-object/from16 v19, v0

    const/4 v0, 0x1

    if-ne v8, v0, :cond_36

    add-int/lit8 v8, v11, 0x1

    aget-byte v8, v13, v8

    if-nez v8, :cond_36

    add-int/lit8 v8, v11, 0x2

    aget-byte v8, v13, v8

    if-ne v8, v0, :cond_36

    add-int/lit8 v8, v11, 0x3

    aget-byte v8, v13, v8

    if-ne v8, v0, :cond_36

    add-int/lit8 v8, v11, 0x4

    aget-byte v8, v13, v8

    if-ne v8, v0, :cond_36

    add-int/lit8 v8, v11, 0x5

    aget-byte v8, v13, v8

    if-nez v8, :cond_36

    aget-byte v8, v13, v15

    if-ne v8, v0, :cond_36

    add-int/lit8 v0, v11, -0x4

    .line 153
    invoke-static {v13, v0, v11}, Lkotlin/jvm/JvmClassMappingKt;->isWhiteHorizontal([BII)Z

    move-result v0

    if-nez v0, :cond_34

    add-int/lit8 v0, v11, 0x7

    add-int/lit8 v8, v11, 0xb

    invoke-static {v13, v0, v8}, Lkotlin/jvm/JvmClassMappingKt;->isWhiteHorizontal([BII)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_34
    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    :cond_35
    move-object/from16 v19, v0

    move/from16 v16, v8

    :cond_36
    :goto_21
    add-int/lit8 v0, v10, 0x6

    if-ge v0, v9, :cond_38

    .line 154
    aget-object v8, v5, v10

    aget-byte v8, v8, v11

    const/4 v13, 0x1

    if-ne v8, v13, :cond_38

    add-int/lit8 v8, v10, 0x1

    aget-object v8, v5, v8

    aget-byte v8, v8, v11

    if-nez v8, :cond_38

    add-int/lit8 v8, v10, 0x2

    aget-object v8, v5, v8

    aget-byte v8, v8, v11

    if-ne v8, v13, :cond_38

    add-int/lit8 v8, v10, 0x3

    aget-object v8, v5, v8

    aget-byte v8, v8, v11

    if-ne v8, v13, :cond_38

    add-int/lit8 v8, v10, 0x4

    aget-object v8, v5, v8

    aget-byte v8, v8, v11

    if-ne v8, v13, :cond_38

    add-int/lit8 v8, v10, 0x5

    aget-object v8, v5, v8

    aget-byte v8, v8, v11

    if-nez v8, :cond_38

    aget-object v0, v5, v0

    aget-byte v0, v0, v11

    if-ne v0, v13, :cond_38

    add-int/lit8 v0, v10, -0x4

    .line 155
    invoke-static {v5, v11, v0, v10}, Lkotlin/jvm/JvmClassMappingKt;->isWhiteVertical([[BIII)Z

    move-result v0

    if-nez v0, :cond_37

    add-int/lit8 v0, v10, 0x7

    add-int/lit8 v8, v10, 0xb

    invoke-static {v5, v11, v0, v8}, Lkotlin/jvm/JvmClassMappingKt;->isWhiteVertical([[BIII)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_37
    add-int/lit8 v12, v12, 0x1

    :cond_38
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    move-object/from16 v0, v19

    goto/16 :goto_20

    :cond_39
    move-object/from16 v19, v0

    move/from16 v16, v8

    add-int/lit8 v10, v10, 0x1

    move v11, v12

    goto/16 :goto_1f

    :cond_3a
    move-object/from16 v19, v0

    mul-int/lit8 v11, v11, 0x28

    add-int/2addr v11, v14

    .line 156
    iget-object v0, v3, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    check-cast v0, [[B

    .line 157
    iget v5, v3, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 158
    iget v8, v3, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_22
    if-ge v9, v8, :cond_3d

    .line 159
    aget-object v12, v0, v9

    move v13, v10

    const/4 v10, 0x0

    :goto_23
    if-ge v10, v5, :cond_3c

    .line 160
    aget-byte v14, v12, v10

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3b

    add-int/lit8 v13, v13, 0x1

    :cond_3b
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_3c
    add-int/lit8 v9, v9, 0x1

    move v10, v13

    goto :goto_22

    .line 161
    :cond_3d
    iget v0, v3, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    .line 162
    iget v5, v3, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    mul-int/2addr v0, v5

    shl-int/lit8 v5, v10, 0x1

    sub-int/2addr v5, v0

    .line 163
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v8, 0xa

    mul-int/2addr v5, v8

    div-int/2addr v5, v0

    mul-int/2addr v5, v8

    add-int/2addr v5, v11

    if-ge v5, v2, :cond_3e

    move v7, v4

    move v2, v5

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v22, v6

    move-object/from16 v0, v19

    const/16 v5, 0x8

    goto/16 :goto_1c

    :cond_3f
    move-object/from16 v6, v22

    .line 164
    invoke-static {v0, v6, v1, v7, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILkotlinx/coroutines/internal/ArrayQueue;)V

    .line 165
    iget v0, v3, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 166
    iget v1, v3, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    add-int/lit8 v2, v0, 0x8

    add-int/lit8 v4, v1, 0x8

    move/from16 v5, p2

    .line 167
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v7, p3

    .line 168
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 169
    div-int v2, v6, v2

    div-int v4, v8, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v4, v0, v2

    sub-int v4, v6, v4

    const/4 v9, 0x2

    .line 170
    div-int/2addr v4, v9

    mul-int v10, v1, v2

    sub-int v10, v8, v10

    .line 171
    div-int/2addr v10, v9

    if-lez v6, :cond_4c

    if-lez v8, :cond_4c

    add-int/lit8 v9, v6, 0x1f

    .line 172
    div-int/lit8 v9, v9, 0x20

    mul-int v11, v9, v8

    .line 173
    new-array v11, v11, [I

    move v12, v10

    const/4 v10, 0x0

    :goto_24
    if-ge v10, v1, :cond_47

    move v14, v4

    const/4 v13, 0x0

    :goto_25
    if-ge v13, v0, :cond_46

    .line 174
    invoke-virtual {v3, v13, v10}, Lkotlinx/coroutines/internal/ArrayQueue;->get(II)B

    move-result v15

    move/from16 v16, v0

    const/4 v0, 0x1

    if-ne v15, v0, :cond_44

    if-ltz v12, :cond_43

    if-ltz v14, :cond_43

    if-lez v2, :cond_42

    if-lez v2, :cond_42

    add-int v0, v2, v14

    add-int v15, v2, v12

    if-gt v15, v8, :cond_41

    if-gt v0, v6, :cond_41

    move/from16 v17, v1

    move v1, v12

    :goto_26
    if-ge v1, v15, :cond_45

    mul-int v19, v9, v1

    move-object/from16 v20, v3

    move v3, v14

    :goto_27
    if-ge v3, v0, :cond_40

    .line 175
    div-int/lit8 v21, v3, 0x20

    add-int v21, v21, v19

    aget v22, v11, v21

    and-int/lit8 v23, v3, 0x1f

    const/16 v18, 0x1

    shl-int v23, v18, v23

    or-int v22, v22, v23

    aput v22, v11, v21

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_40
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v20

    goto :goto_26

    .line 176
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    move/from16 v17, v1

    :cond_45
    move-object/from16 v20, v3

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v2

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v3, v20

    goto :goto_25

    :cond_46
    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v20, v3

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v12, v2

    goto :goto_24

    .line 179
    :cond_47
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v5, :cond_4b

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v7, :cond_4a

    mul-int v2, v1, v9

    .line 180
    div-int/lit8 v3, v4, 0x20

    add-int/2addr v3, v2

    .line 181
    aget v2, v11, v3

    and-int/lit8 v3, v4, 0x1f

    ushr-int/2addr v2, v3

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_48

    const/4 v2, 0x1

    goto :goto_2a

    :cond_48
    const/4 v2, 0x0

    :goto_2a
    if-eqz v2, :cond_49

    const/high16 v2, -0x1000000

    goto :goto_2b

    :cond_49
    const/4 v2, -0x1

    .line 182
    :goto_2b
    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_4b
    return-object v0

    .line 183
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_4d
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interleaving error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_4e
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_4f
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_50
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    move-object/from16 v26, v6

    .line 189
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v26

    .line 190
    iget v2, v2, Lcom/google/zxing/common/BitArray;->size:I

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_52
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sub-int/2addr v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_53
    move v5, v1

    move v7, v2

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested dimensions are too small: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllActions()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const-string v2, "hidden"

    const-string v3, "enctype"

    const-string v4, "password"

    const-string/jumbo v5, "ssid"

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;

    invoke-direct {v7, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->getCopyString()Ljava/lang/String;

    move-result-object v1

    .line 11
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_2

    .line 13
    new-instance v8, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-static {v7, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_1

    :cond_2
    move-object v8, v6

    :goto_1
    if-eqz v8, :cond_3

    .line 14
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "android.intent.extra.TEXT"

    .line 15
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.action.SEND"

    .line 16
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 19
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    .line 20
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    .line 21
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 23
    invoke-virtual {v4, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    .line 25
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    .line 29
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    .line 33
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WIFI"

    .line 37
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "S"

    .line 39
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "P"

    .line 44
    invoke-static {v4, v9, v5, v3, v2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v3, "T"

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    if-eqz v3, :cond_6

    const-string v3, "H"

    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v2, Ljava/io/File;

    .line 56
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 57
    invoke-virtual {v3}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "./"

    invoke-static {v5}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const-string v10, ".jpg"

    invoke-static {v5, v9, v10}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x15e

    invoke-virtual {p0, v4, v5, v5}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->generateQRCodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 60
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v5

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 61
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    const/4 p0, 0x1

    .line 62
    invoke-virtual {v7, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v4, "com.motorola.camera3.FileProvider"

    .line 64
    invoke-static {p0, v4, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "android.intent.extra.STREAM"

    .line 65
    invoke-virtual {v7, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "image/*"

    .line 67
    invoke-virtual {v7, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 69
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v2, "WifiAp"

    const-string v3, "Error generating QR code"

    .line 70
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "text/plain"

    .line 72
    invoke-virtual {v7, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :goto_3
    invoke-static {v7, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    .line 74
    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getCopyString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f110065

    .line 3
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f110060

    .line 5
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    if-eqz v3, :cond_0

    const v3, 0x7f110062

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, 0x7f110061

    .line 7
    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    :goto_0
    invoke-static {v0, v2, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f110064

    .line 9
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    .line 10
    invoke-static {v0, v2, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f110063

    .line 11
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    .line 12
    invoke-static {v0, v1, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 15
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 18
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDetailsString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->getCopyString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getFieldsCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->WifiAp:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f11006d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "WifiAp{ssid=\'"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", networkEncryption=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    const-string v3, ", password=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    const-string v3, ", hidden="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
