.class public final Lcom/motorola/camera/background/provider/BgJobContext;
.super Ljava/lang/Object;
.source "BgJobContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;,
        Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;,
        Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;,
        Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;
    }
.end annotation


# direct methods
.method public static final parseAlgContext(Ljava/util/ArrayList;)Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;",
            ">;)",
            "Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;"
        }
    .end annotation

    .line 1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, -0x1

    move-wide v3, v0

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    move-wide v1, v9

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    if-nez v0, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v12, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->mime:Ljava/lang/String;

    :goto_1
    if-eqz v12, :cond_7

    .line 4
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v13, "makernote"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-wide v5, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    :sswitch_1
    const-string/jumbo v13, "thumb"

    .line 6
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iget-wide v1, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    :sswitch_2
    const-string v13, "json"

    .line 8
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object v12, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    const-string v13, "depthAux"

    .line 10
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 11
    iget-wide v9, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    :sswitch_3
    const-string v13, "exif"

    .line 12
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    iget-wide v3, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    :sswitch_4
    const-string v13, "app6"

    .line 14
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    iget-wide v7, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    .line 16
    :cond_7
    :goto_2
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_8
    new-instance p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;-><init>(JJJJJLjava/util/ArrayList;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2dca35 -> :sswitch_4
        0x2fb910 -> :sswitch_3
        0x31ece8 -> :sswitch_2
        0x693b1d6 -> :sswitch_1
        0x4c83a636 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final parseJobContext(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "jpegImageContext"

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v5, "slot"

    .line 6
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "jpegFids"

    .line 7
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v10, 0x0

    :goto_1
    add-int/lit8 v11, v10, 0x1

    .line 10
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 11
    new-instance v12, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    const-string v13, "category"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "fidSchema.getString(\"category\")"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "mime"

    .line 12
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p0, v0

    const-string v0, "fidSchema.getString(\"mime\")"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fid"

    move-object/from16 v17, v1

    .line 13
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 14
    invoke-direct {v12, v13, v15, v0, v1}, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 15
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v11, v9, :cond_0

    goto :goto_2

    :cond_0
    move-object/from16 v0, p0

    move v10, v11

    move-object/from16 v1, v17

    goto :goto_1

    :cond_1
    move-object/from16 p0, v0

    move-object/from16 v17, v1

    .line 16
    :goto_2
    new-instance v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v1, "intanceId"

    .line 17
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v1, "intanceTag"

    .line 18
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object v9, v0

    move-object v1, v14

    move-wide v14, v15

    move-object/from16 v16, v1

    .line 19
    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;-><init>(JJJLjava/util/ArrayList;)V

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v3, v17

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v4, v2, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    goto/16 :goto_0

    :cond_3
    move-object v3, v1

    :goto_3
    return-object v3
.end method
