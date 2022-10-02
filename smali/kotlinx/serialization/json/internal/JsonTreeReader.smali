.class public final Lkotlinx/serialization/json/internal/JsonTreeReader;
.super Ljava/lang/Object;
.source "JsonTreeReader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonTreeReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n+ 2 JsonLexer.kt\nkotlinx/serialization/json/internal/JsonLexer\n*L\n1#1,84:1\n496#2,3:85\n*S KotlinDebug\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n*L\n52#1:85,3\n*E\n"
.end annotation


# instance fields
.field public final isLenient:Z

.field public final lexer:Lkotlinx/serialization/json/internal/JsonLexer;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/JsonLexer;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 3
    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    .line 4
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    return-void
.end method


# virtual methods
.method public final read()Lkotlinx/serialization/json/JsonElement;
    .locals 12

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    goto/16 :goto_6

    :cond_1
    const-string v3, "Unexpected trailing comma"

    const-string v4, "Unexpected leading comma"

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne v0, v6, :cond_9

    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0, v6}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(B)B

    move-result v0

    .line 5
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v1

    if-eq v1, v5, :cond_8

    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    :cond_2
    :goto_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/JsonLexer;->canConsumeValue()Z

    move-result v4

    const/4 v9, 0x7

    if-eqz v4, :cond_5

    .line 8
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_1
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(B)B

    .line 10
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v4

    .line 11
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    move-result v0

    if-eq v0, v5, :cond_2

    if-ne v0, v9, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const-string v0, "Expected end of the object or comma"

    invoke-static {p0, v0, v2, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v8

    :cond_5
    if-ne v0, v6, :cond_6

    .line 14
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {p0, v9}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(B)B

    goto :goto_2

    :cond_6
    if-eq v0, v5, :cond_7

    .line 15
    :goto_2
    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {p0, v1}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    goto :goto_6

    .line 16
    :cond_7
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-static {p0, v3, v2, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v8

    .line 17
    :cond_8
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-static {p0, v4, v2, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v8

    :cond_9
    const/16 v6, 0x8

    if-ne v0, v6, :cond_11

    .line 18
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    move-result v0

    .line 19
    iget-object v9, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v9

    if-eq v9, v5, :cond_10

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :cond_a
    :goto_3
    iget-object v9, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/JsonLexer;->canConsumeValue()Z

    move-result v9

    const/16 v10, 0x9

    if-eqz v9, :cond_d

    .line 22
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 23
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    move-result v0

    if-eq v0, v5, :cond_a

    .line 25
    iget-object v9, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    if-ne v0, v10, :cond_b

    move v10, v1

    goto :goto_4

    :cond_b
    move v10, v2

    .line 26
    :goto_4
    iget v11, v9, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    if-eqz v10, :cond_c

    goto :goto_3

    :cond_c
    const-string p0, "Expected end of the array or comma"

    .line 27
    invoke-virtual {v9, p0, v11}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    :cond_d
    if-ne v0, v6, :cond_e

    .line 28
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {p0, v10}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(B)B

    goto :goto_5

    :cond_e
    if-eq v0, v5, :cond_f

    .line 29
    :goto_5
    new-instance p0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {p0, v4}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    :goto_6
    return-object p0

    .line 30
    :cond_f
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-static {p0, v3, v2, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v8

    .line 31
    :cond_10
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-static {p0, v4, v2, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v8

    .line 32
    :cond_11
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const-string v0, "Can\'t begin reading element, unexpected token"

    invoke-static {p0, v0, v2, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;II)Ljava/lang/Void;

    throw v8
.end method

.method public final readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p1, :cond_2

    const-string v0, "null"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p0

    .line 5
    :cond_2
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method
