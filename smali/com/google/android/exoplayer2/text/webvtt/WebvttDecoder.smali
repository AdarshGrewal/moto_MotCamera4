.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "WebvttDecoder.java"


# instance fields
.field public final cssParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

.field public final parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

    return-void
.end method


# virtual methods
.method public decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "length",
            "reset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move/from16 v2, p2

    .line 3
    iput v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_1
    :goto_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    move v10, v2

    move v9, v7

    :goto_2
    if-ne v9, v7, :cond_5

    .line 10
    iget v10, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 11
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    const-string v11, "STYLE"

    .line 12
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v9, v6

    goto :goto_2

    :cond_3
    const-string v11, "NOTE"

    .line 13
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v8

    goto :goto_2

    :cond_4
    const/4 v9, 0x3

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    if-eqz v9, :cond_43

    if-ne v9, v8, :cond_6

    .line 15
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 16
    :goto_3
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_6
    if-ne v9, v6, :cond_3d

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 18
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 19
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

    iget-object v10, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 20
    iget-object v11, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 21
    iget v11, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 22
    :cond_7
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 24
    iget-object v12, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 25
    iget-object v13, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 26
    iget v10, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 27
    invoke-virtual {v12, v13, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 28
    iget-object v10, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 29
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :goto_4
    iget-object v11, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v12, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    .line 31
    invoke-static {v11}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 32
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v13

    const/4 v14, 0x5

    const-string/jumbo v15, "{"

    const-string v4, ""

    if-ge v13, v14, :cond_8

    goto/16 :goto_8

    .line 33
    :cond_8
    invoke-virtual {v11, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "::cue"

    .line 34
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_8

    .line 35
    :cond_9
    iget v13, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 36
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_a

    goto :goto_8

    .line 37
    :cond_a
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 38
    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object v5, v4

    goto :goto_9

    :cond_b
    const-string v13, "("

    .line 39
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 40
    iget v13, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 41
    iget v14, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    move/from16 v16, v2

    :goto_5
    if-ge v13, v14, :cond_d

    if-nez v16, :cond_d

    .line 42
    iget-object v5, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v13, 0x1

    .line 43
    aget-byte v5, v5, v13

    int-to-char v5, v5

    const/16 v13, 0x29

    if-ne v5, v13, :cond_c

    move v5, v8

    goto :goto_6

    :cond_c
    move v5, v2

    :goto_6
    move/from16 v13, v16

    move/from16 v16, v5

    goto :goto_5

    :cond_d
    add-int/lit8 v13, v13, -0x1

    .line 44
    iget v5, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v13, v5

    .line 45
    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    .line 46
    :goto_7
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ")"

    .line 47
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    :goto_8
    const/4 v5, 0x0

    :cond_f
    :goto_9
    if-eqz v5, :cond_3b

    .line 48
    iget-object v11, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v12, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto/16 :goto_1f

    .line 49
    :cond_10
    new-instance v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-direct {v11}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;-><init>()V

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_c

    :cond_11
    const/16 v12, 0x5b

    .line 51
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v7, :cond_13

    .line 52
    sget-object v13, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 53
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 54
    invoke-virtual {v13, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object v13, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 57
    :cond_12
    invoke-virtual {v5, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_13
    const-string v12, "\\."

    .line 58
    invoke-static {v5, v12}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 59
    aget-object v12, v5, v2

    const/16 v13, 0x23

    .line 60
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v7, :cond_14

    .line 61
    invoke-virtual {v12, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 62
    iput-object v14, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    add-int/lit8 v13, v13, 0x1

    .line 63
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 64
    iput-object v12, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    goto :goto_a

    .line 65
    :cond_14
    iput-object v12, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 66
    :goto_a
    array-length v12, v5

    if-le v12, v8, :cond_16

    .line 67
    array-length v12, v5

    .line 68
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 69
    array-length v13, v5

    if-gt v12, v13, :cond_15

    move v13, v8

    goto :goto_b

    :cond_15
    move v13, v2

    :goto_b
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 70
    invoke-static {v5, v8, v12}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    .line 71
    check-cast v5, [Ljava/lang/String;

    .line 72
    new-instance v12, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v12, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    :cond_16
    :goto_c
    move v5, v2

    const/4 v12, 0x0

    :goto_d
    const-string/jumbo v13, "}"

    if-nez v5, :cond_39

    .line 73
    iget-object v5, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 74
    iget v12, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 75
    iget-object v14, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v5, v14}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 76
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    goto :goto_e

    :cond_17
    move v14, v2

    goto :goto_f

    :cond_18
    :goto_e
    move v14, v8

    :goto_f
    if-nez v14, :cond_38

    .line 77
    iget-object v15, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v15, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 78
    iget-object v12, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v15, v9, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v12}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 80
    invoke-static {v12, v15}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseIdentifier(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    goto/16 :goto_1d

    .line 82
    :cond_19
    invoke-static {v12, v15}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    const-string v6, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    move-object/from16 v17, v5

    move v5, v8

    :goto_10
    const/4 v7, 0x2

    goto/16 :goto_1e

    .line 83
    :cond_1a
    invoke-static {v12}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_11
    const-string v8, ";"

    if-nez v7, :cond_1e

    move-object/from16 v17, v5

    .line 85
    iget v5, v12, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move/from16 v18, v7

    .line 86
    invoke-static {v12, v15}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1b

    const/4 v5, 0x0

    goto :goto_14

    .line 87
    :cond_1b
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    goto :goto_12

    .line 88
    :cond_1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v18

    goto :goto_13

    .line 89
    :cond_1d
    :goto_12
    invoke-virtual {v12, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v7, 0x1

    :goto_13
    move-object/from16 v5, v17

    goto :goto_11

    :cond_1e
    move-object/from16 v17, v5

    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_14
    if-eqz v5, :cond_37

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto/16 :goto_1c

    .line 92
    :cond_1f
    iget v6, v12, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 93
    invoke-static {v12, v15}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_15

    .line 95
    :cond_20
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 96
    invoke-virtual {v12, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_15
    const-string v6, "color"

    .line 97
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    .line 98
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result v2

    .line 99
    iput v2, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    .line 100
    iput-boolean v6, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    :cond_21
    :goto_16
    move v5, v6

    goto :goto_10

    :cond_22
    const/4 v6, 0x1

    const-string v7, "background-color"

    .line 101
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 102
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result v2

    .line 103
    iput v2, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    .line 104
    iput-boolean v6, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    goto :goto_16

    :cond_23
    const-string v7, "ruby-position"

    .line 105
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const-string v2, "over"

    .line 106
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 107
    iput v6, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->rubyPosition:I

    goto :goto_16

    :cond_24
    const-string/jumbo v2, "under"

    .line 108
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x2

    .line 109
    iput v2, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->rubyPosition:I

    move v7, v2

    const/4 v5, 0x1

    goto/16 :goto_1e

    :cond_25
    const-string/jumbo v6, "text-combine-upright"

    .line 110
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v2, "all"

    .line 111
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "digits"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_17

    :cond_26
    const/4 v2, 0x0

    goto :goto_18

    :cond_27
    :goto_17
    const/4 v2, 0x1

    .line 112
    :goto_18
    iput-boolean v2, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->combineUpright:Z

    goto/16 :goto_1c

    :cond_28
    const-string/jumbo v6, "text-decoration"

    .line 113
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    const-string/jumbo v2, "underline"

    .line 114
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    .line 115
    iput v2, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    move v5, v2

    goto/16 :goto_10

    :cond_29
    const-string v6, "font-family"

    .line 116
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 117
    invoke-static {v5}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    goto/16 :goto_1c

    :cond_2a
    const-string v6, "font-weight"

    .line 118
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const-string v2, "bold"

    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v6, 0x1

    .line 120
    iput v6, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    goto/16 :goto_16

    :cond_2b
    const/4 v6, 0x1

    const-string v7, "font-style"

    .line 121
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    const-string v2, "italic"

    .line 122
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 123
    iput v6, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    goto/16 :goto_16

    :cond_2c
    const-string v6, "font-size"

    .line 124
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 125
    sget-object v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v5}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 127
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid font-size: \'"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WebvttCssParser"

    .line 128
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_2d
    const/4 v5, 0x2

    .line 129
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v7, 0x25

    if-eq v5, v7, :cond_32

    const/16 v7, 0xca8

    if-eq v5, v7, :cond_30

    const/16 v7, 0xe08

    if-eq v5, v7, :cond_2e

    goto :goto_19

    :cond_2e
    const-string v5, "px"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_19

    :cond_2f
    const/4 v6, 0x2

    goto :goto_1a

    :cond_30
    const-string v5, "em"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    goto :goto_19

    :cond_31
    const/4 v6, 0x1

    goto :goto_1a

    :cond_32
    const-string v5, "%"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    :goto_19
    const/4 v6, -0x1

    goto :goto_1a

    :cond_33
    const/4 v6, 0x0

    :goto_1a
    if-eqz v6, :cond_36

    const/4 v5, 0x1

    if-eq v6, v5, :cond_35

    const/4 v7, 0x2

    if-ne v6, v7, :cond_34

    .line 132
    iput v5, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    goto :goto_1b

    .line 133
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_35
    const/4 v7, 0x2

    .line 134
    iput v7, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    goto :goto_1b

    :cond_36
    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    .line 135
    iput v6, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 136
    :goto_1b
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 139
    iput v2, v11, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    goto :goto_1e

    :cond_37
    :goto_1c
    const/4 v5, 0x1

    goto/16 :goto_10

    :cond_38
    :goto_1d
    move-object/from16 v17, v5

    move v7, v6

    move v5, v8

    :goto_1e
    move v8, v5

    move v6, v7

    move v5, v14

    move-object/from16 v12, v17

    const/4 v2, 0x0

    const/4 v7, -0x1

    goto/16 :goto_d

    :cond_39
    move v7, v6

    move v5, v8

    .line 140
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 141
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    move v8, v5

    move v6, v7

    const/4 v2, 0x0

    const/4 v7, -0x1

    goto/16 :goto_4

    .line 142
    :cond_3b
    :goto_1f
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_21

    .line 143
    :cond_3c
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "A style block was found after the first cue."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    const/4 v2, 0x3

    if-ne v9, v2, :cond_42

    .line 144
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 145
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3e

    const/4 v4, 0x0

    goto :goto_20

    .line 146
    :cond_3e
    sget-object v5, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 147
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3f

    const/4 v7, 0x0

    .line 148
    invoke-static {v7, v6, v2, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object v4

    goto :goto_20

    :cond_3f
    const/4 v7, 0x0

    .line 149
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_41

    :cond_40
    move-object v4, v7

    goto :goto_20

    .line 150
    :cond_41
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 152
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5, v2, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object v4

    :goto_20
    if-eqz v4, :cond_42

    .line 153
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    :goto_21
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 154
    :cond_43
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
