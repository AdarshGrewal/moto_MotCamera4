.class public final Lcom/google/zxing/client/result/VINResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VINResultParser.java"


# static fields
.field public static final AZ09:Ljava/util/regex/Pattern;

.field public static final IOQ:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[IOQ]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    const-string v0, "[A-Z0-9]{17}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v1, 0x45

    const/16 v2, 0x33

    const/16 v3, 0x39

    const/16 v4, 0x41

    if-eq v0, v3, :cond_5

    const/16 v5, 0x54

    const-string v6, "DE"

    const/16 v7, 0x53

    if-eq v0, v7, :cond_3

    const/16 v8, 0x5a

    const/16 v9, 0x52

    if-eq v0, v8, :cond_2

    const/16 v8, 0x57

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    if-lt p0, v4, :cond_8

    if-gt p0, v8, :cond_8

    const-string p0, "MX"

    return-object p0

    :pswitch_1
    const-string p0, "CA"

    return-object p0

    :pswitch_2
    const-string p0, "US"

    return-object p0

    :pswitch_3
    if-lt p0, v4, :cond_8

    if-gt p0, v1, :cond_8

    const-string p0, "IN"

    return-object p0

    :pswitch_4
    const-string p0, "CN"

    return-object p0

    :pswitch_5
    const/16 v0, 0x4c

    if-lt p0, v0, :cond_8

    if-gt p0, v9, :cond_8

    const-string p0, "KO"

    return-object p0

    :pswitch_6
    if-lt p0, v4, :cond_8

    if-gt p0, v5, :cond_8

    const-string p0, "JP"

    return-object p0

    :pswitch_7
    const/16 v0, 0x30

    if-eq p0, v0, :cond_0

    if-lt p0, v2, :cond_8

    if-gt p0, v3, :cond_8

    :cond_0
    const-string p0, "RU"

    return-object p0

    :pswitch_8
    return-object v6

    :pswitch_9
    const/16 v0, 0x46

    if-lt p0, v0, :cond_1

    if-gt p0, v9, :cond_1

    const-string p0, "FR"

    return-object p0

    :cond_1
    if-lt p0, v7, :cond_8

    if-gt p0, v8, :cond_8

    const-string p0, "ES"

    return-object p0

    :cond_2
    if-lt p0, v4, :cond_8

    if-gt p0, v9, :cond_8

    const-string p0, "IT"

    return-object p0

    :cond_3
    if-lt p0, v4, :cond_4

    const/16 v0, 0x4d

    if-gt p0, v0, :cond_4

    const-string p0, "UK"

    return-object p0

    :cond_4
    const/16 v0, 0x4e

    if-lt p0, v0, :cond_8

    if-gt p0, v5, :cond_8

    return-object v6

    :cond_5
    if-lt p0, v4, :cond_6

    if-le p0, v1, :cond_7

    :cond_6
    if-lt p0, v2, :cond_8

    if-gt p0, v3, :cond_8

    :cond_7
    const-string p0, "BR"

    return-object p0

    :cond_8
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 16

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 2
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_0

    :catch_0
    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object v0, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 6
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x30

    const/16 v7, 0x39

    const/16 v8, 0x52

    const/16 v9, 0x4a

    const/16 v10, 0x11

    const/16 v11, 0x41

    const/16 v12, 0x8

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/4 v15, 0x1

    if-ge v1, v4, :cond_a

    add-int/lit8 v4, v1, 0x1

    if-lez v4, :cond_2

    const/4 v3, 0x7

    if-gt v4, v3, :cond_2

    rsub-int/lit8 v13, v4, 0x9

    goto :goto_2

    :cond_2
    if-ne v4, v12, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v14, :cond_4

    move v13, v0

    goto :goto_2

    :cond_4
    if-lt v4, v13, :cond_9

    if-gt v4, v10, :cond_9

    rsub-int/lit8 v13, v4, 0x13

    .line 7
    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v11, :cond_5

    const/16 v3, 0x49

    if-gt v1, v3, :cond_5

    add-int/lit8 v1, v1, -0x41

    goto :goto_3

    :cond_5
    if-lt v1, v9, :cond_6

    if-gt v1, v8, :cond_6

    add-int/lit8 v1, v1, -0x4a

    :goto_3
    add-int/2addr v1, v15

    goto :goto_4

    :cond_6
    const/16 v3, 0x53

    if-lt v1, v3, :cond_7

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_7

    add-int/lit8 v1, v1, -0x53

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_7
    if-lt v1, v6, :cond_8

    if-gt v1, v7, :cond_8

    add-int/lit8 v1, v1, -0x30

    :goto_4
    mul-int/2addr v13, v1

    add-int/2addr v2, v13

    move v1, v4

    goto :goto_1

    .line 8
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 9
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 10
    :cond_a
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0xb

    .line 11
    rem-int/2addr v2, v3

    if-ge v2, v13, :cond_b

    add-int/2addr v2, v6

    int-to-char v2, v2

    goto :goto_5

    :cond_b
    if-ne v2, v13, :cond_15

    const/16 v2, 0x58

    :goto_5
    if-ne v1, v2, :cond_c

    goto :goto_6

    :cond_c
    move v15, v0

    :goto_6
    if-nez v15, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x3

    .line 12
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 13
    new-instance v0, Lcom/google/zxing/client/result/VINParsedResult;

    .line 14
    invoke-virtual {v5, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v5, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-static {v6}, Lcom/google/zxing/client/result/VINResultParser;->countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-virtual {v5, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v5, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v12, 0x45

    if-lt v4, v12, :cond_e

    const/16 v14, 0x48

    if-gt v4, v14, :cond_e

    sub-int/2addr v4, v12

    add-int/lit16 v4, v4, 0x7c0

    :goto_7
    move v11, v4

    goto :goto_8

    :cond_e
    if-lt v4, v9, :cond_f

    const/16 v12, 0x4e

    if-gt v4, v12, :cond_f

    sub-int/2addr v4, v9

    add-int/lit16 v4, v4, 0x7c4

    goto :goto_7

    :cond_f
    const/16 v9, 0x50

    if-ne v4, v9, :cond_10

    const/16 v4, 0x7c9

    goto :goto_7

    :cond_10
    if-lt v4, v8, :cond_11

    const/16 v9, 0x54

    if-gt v4, v9, :cond_11

    sub-int/2addr v4, v8

    add-int/lit16 v4, v4, 0x7ca

    goto :goto_7

    :cond_11
    const/16 v8, 0x56

    if-lt v4, v8, :cond_12

    const/16 v9, 0x59

    if-gt v4, v9, :cond_12

    sub-int/2addr v4, v8

    add-int/lit16 v4, v4, 0x7cd

    goto :goto_7

    :cond_12
    const/16 v8, 0x31

    if-lt v4, v8, :cond_13

    if-gt v4, v7, :cond_13

    sub-int/2addr v4, v8

    add-int/lit16 v4, v4, 0x7d1

    goto :goto_7

    :cond_13
    if-lt v4, v11, :cond_14

    const/16 v7, 0x44

    if-gt v4, v7, :cond_14

    sub-int/2addr v4, v11

    add-int/lit16 v4, v4, 0x7da

    goto :goto_7

    .line 19
    :goto_8
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 20
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v0

    move-object v7, v2

    move-object v8, v10

    move-object v9, v15

    move-object v10, v1

    invoke-direct/range {v4 .. v13}, Lcom/google/zxing/client/result/VINParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V

    move-object v3, v0

    goto :goto_9

    .line 21
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 22
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    return-object v3
.end method
