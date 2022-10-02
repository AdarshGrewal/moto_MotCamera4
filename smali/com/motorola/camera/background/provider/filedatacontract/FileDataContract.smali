.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;
.super Ljava/lang/Object;
.source "FileDataContract.kt"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.motorola.camera3.background.provider.filedatacontract.FileDataContentProvider/fileData_table"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(CONTENT_STRING)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static final _retrieveFile(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    if-nez v0, :cond_0

    move-object v9, v8

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v9, v1

    :goto_0
    if-eqz v0, :cond_b

    if-eqz v9, :cond_b

    if-nez v7, :cond_1

    goto/16 :goto_4

    .line 2
    :cond_1
    invoke-static {}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->getBaseProjection()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v2, v8

    goto :goto_1

    .line 4
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    const/4 v10, 0x0

    const/4 v3, 0x1

    if-nez v2, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v10

    :goto_2
    const-string v2, "FileDataContract"

    if-eqz v3, :cond_5

    const-string v0, "_retrieveFile: Cannot find: "

    .line 6
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 7
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "context"

    .line 8
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->getBaseProjection()[Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 11
    sget-object v12, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 12
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 13
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 16
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_7
    invoke-static {v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorCOLUMN_id(Landroid/database/Cursor;)J

    const-string v0, "cursor"

    .line 18
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "file_name"

    const-string v4, ""

    .line 19
    invoke-static {v1, v3, v4}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-static {v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorCOLUMN_uri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "MIME_type"

    .line 22
    invoke-static {v1, v5, v4}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "format"

    .line 24
    invoke-static {v1, v5, v4}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const-string/jumbo v0, "ts"

    .line 26
    invoke-static {v1, v0, v4, v5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    .line 27
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 28
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 29
    invoke-virtual {v9, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_8

    .line 30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v0, "_retrieveFile: error getting file "

    .line 31
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 32
    :cond_8
    sget-object v2, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    const-string v2, "fileUri"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "resolver"

    .line 33
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "uri"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    .line 34
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "_size"

    .line 36
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 37
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 39
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 40
    new-array v2, v3, [B

    .line 41
    invoke-virtual {v0, v2, v10, v3}, Ljava/io/InputStream;->read([BII)I

    .line 42
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 43
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_9
    :goto_3
    if-nez v1, :cond_a

    goto :goto_4

    .line 44
    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_4
    return-object v8
.end method

.method public static final createBaseFileName(Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5f

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_tag_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final cursorCOLUMN_id(Landroid/database/Cursor;)J
    .locals 3

    const-wide/16 v0, 0x0

    const-string v2, "id"

    .line 1
    invoke-static {p0, v2, v0, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final cursorCOLUMN_uri(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "uri"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, " exception"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileDataContract"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-wide p2
.end method

.method public static final cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cursor.getString(columnIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, " exception"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileDataContract"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object p2
.end method

.method public static final deleteData(Landroid/content/Context;J)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v0, "id"

    const-string/jumbo v1, "uri"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "FileDataContract"

    if-nez v7, :cond_0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "deleteData: Entry does not exist: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    move-object v0, p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    move v8, v1

    :cond_3
    if-eqz v8, :cond_4

    const-string v0, "deleteData: Cannot find: "

    .line 8
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 9
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-static {p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorCOLUMN_uri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(cursorCOLUMN_uri(cursor))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6, v0, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v7, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final deleteTagData(Landroid/content/Context;J)I
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "tag"

    const-string v1, "id"

    const-string/jumbo v2, "uri"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v2, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 4
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-eqz v5, :cond_3

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "deleteData: Cannot find: tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileDataContract"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 8
    :cond_3
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "cursor"

    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, -0x1

    .line 10
    invoke-static {v1, v0, v5, v6}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3

    .line 11
    invoke-static {v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorCOLUMN_id(Landroid/database/Cursor;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 12
    invoke-static {v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->cursorCOLUMN_uri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "parse(cursorCOLUMN_uri(cursor))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v5, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    goto :goto_4

    .line 15
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_4
    return v4
.end method

.method public static final getBaseProjection()[Ljava/lang/String;
    .locals 14

    const-string v0, "id"

    const-string/jumbo v1, "tag"

    const-string v2, "file_name"

    const-string/jumbo v3, "uri"

    const-string v4, "MIME_type"

    const-string v5, "format"

    const-string/jumbo v6, "ts"

    const-string/jumbo v7, "time_out"

    const-string v8, "compression_type"

    const-string v9, "encryption_type"

    const-string v10, "mSize"

    const-string v11, "dims.width"

    const-string v12, "dims.height"

    const-string v13, "dims.stride"

    .line 1
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getContentUri(J)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "content://com.motorola.camera3.background.provider.filedatacontract.FileDataContentProvider/fileData_table/"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final insertFileDatabase(Landroid/content/ContentResolver;JJLjava/lang/String;Landroid/net/Uri;Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;JJLcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;IIII)Landroid/net/Uri;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    const-wide/16 v0, 0x0

    cmp-long v2, p9, v0

    if-lez v2, :cond_2

    cmp-long v0, p11, v0

    if-nez v0, :cond_0

    .line 2
    sget-wide v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->DEFAULT_TIMEOUT_MS:J

    .line 3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    add-long/2addr v0, p9

    goto :goto_1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v0, p11

    goto :goto_1

    :cond_2
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    .line 4
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "tag"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "file_name"

    move-object v4, p5

    .line 7
    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uri"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p7}, Lcom/motorola/camera/background/common/IOMIMEType;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MIME_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p8}, Lcom/motorola/camera/background/common/IOFormat;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "format"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "ts"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "time_out"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    invoke-virtual/range {p13 .. p13}, Lcom/motorola/camera/background/common/IOCompression;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "compression_type"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p14 .. p14}, Lcom/motorola/camera/background/common/IOEncryption;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryption_type"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mSize"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dims.width"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dims.height"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dims.stride"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 20
    new-instance v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;

    const/4 v3, 0x0

    move-object v4, p0

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/ContentResolver;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    invoke-static {v3, v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static final retrieveFileInBuffer(Landroid/content/Context;J)[B
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->_retrieveFile(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p0

    return-object p0
.end method
