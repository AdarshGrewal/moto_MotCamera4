.class public Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "StreamingJsonDecoder.kt"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n+ 2 JsonLexer.kt\nkotlinx/serialization/json/internal/JsonLexer\n+ 3 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 4 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoderKt\n*L\n1#1,272:1\n496#2,3:273\n496#2,3:276\n74#3,11:279\n265#4,5:290\n265#4,5:295\n*S KotlinDebug\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n*L\n94#1:273,3\n95#1:276,3\n107#1:279,11\n205#1:290,5\n212#1:295,5\n*E\n"
.end annotation


# instance fields
.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public currentIndex:I

.field public final json:Lkotlinx/serialization/json/Json;

.field public final lexer:Lkotlinx/serialization/json/internal/JsonLexer;

.field public final mode:Lkotlinx/serialization/json/internal/WriteMode;

.field public final serializersModule:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonLexer;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 3
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    .line 4
    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 5
    iget-object p2, p1, Lkotlinx/serialization/json/Json;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    .line 6
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 8
    iget-object p1, p1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 9
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    return-void
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    iget-char v1, p1, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(C)V

    .line 3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonLexer;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 8
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 9
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 10
    invoke-direct {v0, v1, p1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonLexer;)V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0

    .line 11
    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const/4 p1, 0x0

    const-string v0, "Unexpected leading comma"

    invoke-static {p0, v0, p1, v2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "descriptor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x3a

    const-string v4, "Unexpected trailing comma"

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_e

    if-eq v2, v7, :cond_4

    .line 2
    iget-object v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonLexer;->tryConsumeComma()Z

    move-result v1

    .line 3
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->canConsumeValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    if-eq v2, v5, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const-string v1, "Expected end of the array or comma"

    invoke-static {v0, v1, v9, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v8

    :cond_1
    :goto_0
    add-int/lit8 v5, v2, 0x1

    .line 5
    iput v5, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    goto/16 :goto_16

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_16

    .line 6
    :cond_3
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-static {v0, v4, v9, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v8

    .line 7
    :cond_4
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_1

    :cond_5
    move v2, v9

    :goto_1
    if-eqz v2, :cond_6

    if-eq v1, v5, :cond_7

    .line 8
    iget-object v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonLexer;->tryConsumeComma()Z

    move-result v1

    goto :goto_2

    .line 9
    :cond_6
    iget-object v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v1, v3}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(C)V

    :cond_7
    move v1, v9

    .line 10
    :goto_2
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/JsonLexer;->canConsumeValue()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_b

    .line 11
    iget v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    if-ne v2, v5, :cond_9

    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    xor-int/2addr v1, v6

    .line 12
    iget v3, v2, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    if-eqz v1, :cond_8

    goto :goto_3

    .line 13
    :cond_8
    invoke-virtual {v2, v4, v3}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    .line 14
    :cond_9
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 15
    iget v3, v2, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const-string v0, "Expected comma after the key-value pair"

    .line 16
    invoke-virtual {v2, v0, v3}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    .line 17
    :cond_b
    :goto_3
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    add-int/lit8 v5, v1, 0x1

    iput v5, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    goto/16 :goto_16

    :cond_c
    if-nez v1, :cond_d

    goto/16 :goto_16

    .line 18
    :cond_d
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const-string v1, "Expected \'}\', but had \',\' instead"

    invoke-static {v0, v1, v9, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v8

    .line 19
    :cond_e
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->tryConsumeComma()Z

    move-result v2

    .line 20
    :goto_4
    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v10}, Lkotlinx/serialization/json/internal/JsonLexer;->canConsumeValue()Z

    move-result v10

    if-eqz v10, :cond_29

    .line 21
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 22
    iget-boolean v2, v2, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    if-eqz v2, :cond_f

    .line 23
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenientNotNull()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 24
    :cond_f
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeKeyString()Ljava/lang/String;

    move-result-object v2

    .line 25
    :goto_5
    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v10, v3}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(C)V

    .line 26
    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    invoke-static {v1, v10, v2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x3

    if-eq v10, v11, :cond_1b

    .line 27
    iget-object v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 28
    iget-boolean v12, v12, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    if-eqz v12, :cond_1a

    .line 29
    iget-object v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 30
    invoke-interface {v1, v10}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v13

    .line 31
    invoke-interface {v13}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v14

    if-nez v14, :cond_14

    .line 32
    iget-object v14, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 33
    invoke-virtual {v14}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v15

    .line 34
    iget-object v3, v14, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v15

    const/4 v5, 0x4

    if-ge v3, v5, :cond_10

    goto :goto_7

    :cond_10
    move v7, v9

    :goto_6
    add-int/lit8 v9, v7, 0x1

    const-string v8, "null"

    .line 35
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-object v11, v14, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    add-int/2addr v7, v15

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v8, v7, :cond_11

    goto :goto_7

    :cond_11
    const/4 v7, 0x3

    if-le v9, v7, :cond_13

    if-le v3, v5, :cond_12

    .line 36
    iget-object v3, v14, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    add-int/lit8 v5, v15, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroidx/cardview/R$style;->charToTokenClass(C)B

    move-result v3

    if-nez v3, :cond_12

    :goto_7
    move v3, v6

    goto :goto_8

    :cond_12
    add-int/lit8 v15, v15, 0x4

    .line 37
    iput v15, v14, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const/4 v3, 0x0

    :goto_8
    xor-int/2addr v3, v6

    if-eqz v3, :cond_14

    goto :goto_c

    :cond_13
    move v7, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x3

    goto :goto_6

    .line 38
    :cond_14
    invoke-interface {v13}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v3

    sget-object v5, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 39
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    iget-object v5, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 40
    iget-boolean v5, v5, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    .line 41
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v7

    if-eqz v5, :cond_16

    if-eq v7, v6, :cond_15

    if-eqz v7, :cond_15

    goto :goto_9

    .line 42
    :cond_15
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_16
    if-eq v7, v6, :cond_17

    :goto_9
    const/4 v5, 0x0

    goto :goto_b

    .line 43
    :cond_17
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v5

    .line 44
    :goto_a
    iput-object v5, v3, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    :goto_b
    if-nez v5, :cond_18

    goto :goto_d

    .line 45
    :cond_18
    invoke-static {v13, v12, v5}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x3

    if-ne v3, v5, :cond_19

    .line 46
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    :goto_c
    move v3, v6

    goto :goto_e

    :cond_19
    :goto_d
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_1a

    .line 47
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/JsonLexer;->tryConsumeComma()Z

    move-result v3

    const/4 v5, 0x0

    goto :goto_f

    :cond_1a
    move v5, v10

    goto/16 :goto_16

    :cond_1b
    move v5, v6

    const/4 v3, 0x0

    :goto_f
    if-eqz v5, :cond_28

    .line 48
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 49
    iget-boolean v5, v3, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    const/4 v7, 0x6

    if-eqz v5, :cond_27

    .line 50
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 51
    iget-boolean v3, v3, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    .line 52
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1c

    if-eq v8, v7, :cond_1c

    .line 55
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto/16 :goto_14

    .line 56
    :cond_1c
    :goto_10
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v8

    if-ne v8, v6, :cond_1e

    if-eqz v3, :cond_1d

    .line 57
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto :goto_10

    :cond_1d
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeKeyString()Ljava/lang/String;

    goto :goto_10

    :cond_1e
    if-ne v8, v9, :cond_1f

    goto :goto_11

    :cond_1f
    if-ne v8, v7, :cond_20

    :goto_11
    move v10, v6

    goto :goto_12

    :cond_20
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_21

    .line 58
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_21
    const/16 v10, 0x9

    if-ne v8, v10, :cond_23

    .line 59
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    move-result v8

    if-ne v8, v9, :cond_22

    .line 60
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_13

    .line 61
    :cond_22
    iget v0, v2, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 62
    iget-object v1, v2, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    const-string v2, "found ] instead of }"

    .line 63
    invoke-static {v0, v2, v1}, Landroidx/cardview/R$dimen;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_23
    const/4 v10, 0x7

    if-ne v8, v10, :cond_25

    .line 64
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    move-result v8

    if-ne v8, v7, :cond_24

    .line 65
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_13

    .line 66
    :cond_24
    iget v0, v2, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 67
    iget-object v1, v2, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    const-string v2, "found } instead of ]"

    .line 68
    invoke-static {v0, v2, v1}, Landroidx/cardview/R$dimen;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_25
    const/16 v10, 0xa

    if-eq v8, v10, :cond_26

    .line 69
    :goto_13
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    .line 70
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1c

    .line 71
    :goto_14
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->tryConsumeComma()Z

    move-result v2

    goto :goto_15

    .line 72
    :cond_26
    iget v0, v2, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v1, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    invoke-virtual {v2, v1, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0

    .line 73
    :cond_27
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    .line 74
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v1, v0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    iget v3, v0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {v1, v2, v4, v4, v7}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an unknown key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'.\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 v5, 0x0

    throw v5

    :cond_28
    move v2, v3

    :goto_15
    const/16 v3, 0x3a

    const/4 v5, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_29
    move-object v5, v8

    if-nez v2, :cond_2a

    const/4 v5, -0x1

    :goto_16
    return v5

    .line 78
    :cond_2a
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v4, v2, v1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v5
.end method

.method public decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndexOrThrow(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public decodeInt()I
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 2
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v2

    .line 3
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "EOF"

    const/4 v5, 0x0

    if-eq v2, v3, :cond_12

    .line 4
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x22

    if-ne v3, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 5
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget v0, v1, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v1, v4, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v5

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v12, v2

    const/4 v11, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_1
    const-string v8, "Numeric value overflow"

    if-eqz v11, :cond_9

    .line 7
    iget-object v7, v1, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v6, 0x2d

    if-ne v7, v6, :cond_3

    if-ne v12, v2, :cond_2

    add-int/lit8 v12, v12, 0x1

    const/16 v6, 0x22

    const/4 v13, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget v0, v1, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v2, "Unexpected symbol \'-\' in numeric literal"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v5

    .line 9
    :cond_3
    invoke-static {v7}, Landroidx/cardview/R$style;->charToTokenClass(C)B

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 10
    iget-object v6, v1, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v12, v6, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v6, v7, -0x30

    if-ltz v6, :cond_6

    const/16 v5, 0x9

    if-gt v6, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_8

    const/16 v5, 0xa

    int-to-long v9, v5

    mul-long/2addr v14, v9

    int-to-long v5, v6

    sub-long/2addr v14, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v14, v5

    if-gtz v7, :cond_7

    const/4 v5, 0x0

    const/16 v6, 0x22

    goto :goto_1

    .line 11
    :cond_7
    iget v0, v1, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v1, v8, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0

    :cond_8
    const/4 v0, 0x0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected symbol \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' in numeric literal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget v3, v1, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v0

    :cond_9
    :goto_4
    if-eq v2, v12, :cond_11

    if-eqz v13, :cond_a

    add-int/lit8 v5, v12, -0x1

    if-eq v2, v5, :cond_11

    :cond_a
    if-eqz v3, :cond_d

    if-eqz v11, :cond_c

    .line 14
    iget-object v2, v1, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_b

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 15
    :cond_b
    iget v0, v1, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v2, "Expected closing quotation mark"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0

    :cond_c
    const/4 v0, 0x0

    .line 16
    iget v2, v1, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v1, v4, v2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v0

    .line 17
    :cond_d
    :goto_5
    iput v12, v1, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    if-eqz v13, :cond_e

    goto :goto_6

    :cond_e
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v14, v2

    if-eqz v2, :cond_10

    neg-long v14, v14

    :goto_6
    long-to-int v1, v14

    int-to-long v2, v1

    cmp-long v2, v14, v2

    if-nez v2, :cond_f

    return v1

    .line 18
    :cond_f
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse int for input \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0

    :cond_10
    const/4 v0, 0x0

    .line 19
    invoke-virtual {v1, v8, v12}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v0

    :cond_11
    const/4 v0, 0x0

    .line 20
    iget v2, v1, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v3, "Expected numeric literal"

    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v0

    :cond_12
    move-object v0, v5

    .line 21
    iget v2, v1, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v1, v4, v2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v0
.end method

.method public decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 2
    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 3
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/JsonLexer;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->decodeSerializableValuePolymorphic(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public decodeString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 2
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenientNotNull()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(C)V

    return-void
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    return-object p0
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object p0
.end method
