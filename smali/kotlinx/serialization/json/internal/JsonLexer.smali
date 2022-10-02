.class public final Lkotlinx/serialization/json/internal/JsonLexer;
.super Ljava/lang/Object;
.source "JsonLexer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonLexer.kt\nkotlinx/serialization/json/internal/JsonLexer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,614:1\n1#2:615\n*E\n"
.end annotation


# instance fields
.field public currentPosition:I

.field public escapedString:Ljava/lang/StringBuilder;

.field public peekedString:Ljava/lang/String;

.field public final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    iget p2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final canConsumeValue()Z
    .locals 4

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 2
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_7

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    const/16 v3, 0xd

    if-eq v1, v3, :cond_7

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    goto :goto_6

    .line 4
    :cond_0
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const/16 p0, 0x7d

    const/4 v0, 0x1

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0x5d

    if-ne v1, p0, :cond_2

    :goto_1
    move p0, v0

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const/16 p0, 0x3a

    if-ne v1, p0, :cond_4

    :goto_3
    move p0, v0

    goto :goto_4

    :cond_4
    move p0, v2

    :goto_4
    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    const/16 p0, 0x2c

    if-ne v1, p0, :cond_6

    :goto_5
    move v2, v0

    :cond_6
    xor-int/lit8 p0, v2, 0x1

    return p0

    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_8
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return v2
.end method

.method public final consumeKeyString()Ljava/lang/String;
    .locals 15

    const/16 v0, 0x22

    .line 1
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(C)V

    .line 2
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 3
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v0, v1, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v2, v7, :cond_b

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-ge v1, v2, :cond_a

    move v8, v1

    :goto_0
    add-int/lit8 v9, v8, 0x1

    .line 4
    iget-object v10, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_8

    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 6
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v10, v1

    :goto_1
    if-eq v9, v0, :cond_6

    if-ne v9, v11, :cond_4

    .line 8
    iget-object v9, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    iget-object v12, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v9, v12, v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    .line 9
    iget-object v9, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x75

    if-ne v8, v9, :cond_1

    .line 10
    iget-object v8, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    add-int/lit8 v9, v10, 0x4

    .line 11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_0

    .line 12
    iget-object v12, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0, v8, v10}, Lkotlinx/serialization/json/internal/JsonLexer;->fromHexChar(Ljava/lang/String;I)I

    move-result v13

    shl-int/lit8 v13, v13, 0xc

    add-int/lit8 v14, v10, 0x1

    .line 14
    invoke-virtual {p0, v8, v14}, Lkotlinx/serialization/json/internal/JsonLexer;->fromHexChar(Ljava/lang/String;I)I

    move-result v14

    shl-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v14

    add-int/lit8 v14, v10, 0x2

    .line 15
    invoke-virtual {p0, v8, v14}, Lkotlinx/serialization/json/internal/JsonLexer;->fromHexChar(Ljava/lang/String;I)I

    move-result v14

    shl-int/2addr v14, v4

    add-int/2addr v13, v14

    add-int/lit8 v10, v10, 0x3

    .line 16
    invoke-virtual {p0, v8, v10}, Lkotlinx/serialization/json/internal/JsonLexer;->fromHexChar(Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v8, v13

    int-to-char v8, v8

    .line 17
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v9

    goto :goto_3

    .line 18
    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v1, "Unexpected EOF during unicode escape"

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v5

    :cond_1
    if-ge v8, v9, :cond_2

    .line 19
    sget-object v9, Lkotlinx/serialization/json/internal/CharMappings;->ESCAPE_2_CHAR:[C

    aget-char v9, v9, v8

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    if-eqz v9, :cond_3

    .line 20
    iget-object v8, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move v8, v10

    goto :goto_4

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escaped char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 24
    :goto_4
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_1

    :cond_5
    const-string v0, "EOF"

    .line 25
    invoke-virtual {p0, v0, v8}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v5

    :cond_6
    if-ne v10, v1, :cond_7

    .line 26
    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 27
    :cond_7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 28
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "escapedString.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_5
    add-int/2addr v8, v6

    .line 30
    iput v8, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return-object v0

    :cond_8
    if-lt v9, v2, :cond_9

    goto :goto_6

    :cond_9
    move v8, v9

    goto/16 :goto_0

    :cond_a
    :goto_6
    add-int/lit8 v0, v2, 0x1

    .line 31
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 32
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 33
    :cond_b
    invoke-virtual {p0, v6}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(B)V

    throw v5
.end method

.method public final consumeNextToken()B
    .locals 3

    .line 8
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 9
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 10
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 11
    invoke-static {v1}, Landroidx/cardview/R$style;->charToTokenClass(C)B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/16 p0, 0xa

    return p0
.end method

.method public final consumeNextToken(B)B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    move-result v0

    if-ne v0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(B)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final consumeNextToken(C)V
    .locals 4

    .line 3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->unexpectedToken(C)V

    throw v3

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->unexpectedToken(C)V

    throw v3
.end method

.method public final consumeString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeKeyString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final consumeStringLenient()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v0

    .line 4
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 5
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroidx/cardview/R$style;->charToTokenClass(C)B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v2, :cond_3

    .line 7
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroidx/cardview/R$style;->charToTokenClass(C)B

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return-object v1

    .line 10
    :cond_3
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const-string v2, "Expected beginning of the string, but got "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {p0, v0, v2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1

    :cond_4
    const-string v2, "EOF"

    .line 12
    invoke-virtual {p0, v2, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1
.end method

.method public final consumeStringLenientNotNull()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v1, "Unexpected \'null\' value instead of string literal"

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public final fail(Ljava/lang/String;I)Ljava/lang/Void;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Landroidx/cardview/R$dimen;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final fail(B)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "quotation mark \'\"\'"

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string p1, "comma \',\'"

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const-string p1, "semicolon \':\'"

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    const-string/jumbo p1, "start of the object \'{\'"

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    const-string p1, "end of the object \'}\'"

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    const-string/jumbo p1, "start of the array \'[\'"

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    const-string p1, "end of the array \']\'"

    goto :goto_0

    :cond_6
    const-string/jumbo p1, "valid token"

    .line 1
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_8

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    if-gtz v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    :goto_1
    const-string v1, "EOF"

    .line 2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' instead"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public final fromHexChar(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, p1, :cond_0

    const/16 v2, 0x39

    if-gt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    sub-int/2addr p1, p2

    goto :goto_4

    :cond_1
    const/16 p2, 0x61

    if-gt p2, p1, :cond_2

    const/16 v2, 0x66

    if-gt p1, v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 p2, 0x41

    if-gt p2, p1, :cond_4

    const/16 v2, 0x46

    if-gt p1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    :goto_3
    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0xa

    :goto_4
    return p1

    .line 2
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid toHexChar char \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' in unicode escape"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget p2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public final peekNextToken()B
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 2
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v1, v2, :cond_2

    .line 3
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v1}, Landroidx/cardview/R$style;->charToTokenClass(C)B

    move-result p0

    return p0

    .line 5
    :cond_1
    :goto_1
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final skipWhitespaces()I
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 2
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "JsonReader(source=\'"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryConsumeComma()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return v1

    :cond_1
    return v2
.end method

.method public final unexpectedToken(C)V
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const/4 v0, 0x0

    const/16 v1, 0x22

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 p1, p1, -0x4

    const-string v1, "Expected string literal but \'null\' literal was found.\nUse \'coerceInputValues = true\' in \'Json {}` builder to coerce nulls to default values."

    invoke-virtual {p0, v1, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v0

    .line 4
    :cond_0
    invoke-static {p1}, Landroidx/cardview/R$style;->charToTokenClass(C)B

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(B)V

    throw v0
.end method
