.class public Lcom/motorola/camera/utility/FileUtility$FileContentProviderUtility;
.super Ljava/lang/Object;
.source "FileUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/FileUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileContentProviderUtility"
.end annotation


# direct methods
.method public static readByteRecord(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;

    .line 2
    invoke-static {p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->_retrieveFile(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to read record from URL "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileUtility"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read record for URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static saveRecord(Landroid/content/Context;[BLjava/lang/Long;)Landroid/net/Uri;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;

    sget-object v2, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    sget-object v12, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v3, "context"

    .line 4
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "compression"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "encryption"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "buffers"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v10, Lcom/motorola/camera/background/common/IOMIMEType;->BINARY_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    .line 7
    sget-object v11, Lcom/motorola/camera/background/common/IOFormat;->BIN:Lcom/motorola/camera/background/common/IOFormat;

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, "randomUUID()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ""

    .line 9
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "randomUUID"

    .line 10
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    const/4 v13, 0x0

    const-string v14, "-"

    .line 13
    invoke-static {v4, v14, v5, v13, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v4, ""

    .line 15
    invoke-static {v10, v11, v4, v6, v7}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->createBaseFileName(Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 17
    sget-object v4, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 18
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "fileName"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4, v0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->createBaseDir(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v4, v0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 21
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 23
    array-length v15, v15

    add-int/2addr v13, v15

    goto :goto_0

    :cond_0
    add-int/lit8 v14, v13, 0x5

    .line 24
    div-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v13

    int-to-long v14, v14

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v24

    cmp-long v4, v14, v24

    const-string v14, "com.motorola.camera3.background.provider.filedatacontract.FileProviderCustom"

    if-gez v4, :cond_2

    .line 25
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 26
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, [B

    .line 27
    invoke-virtual {v4, v15}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 29
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 30
    invoke-static {v0, v14, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 31
    new-instance v8, Lcom/motorola/camera/background/provider/filedatacontract/FileStatus;

    const/4 v15, 0x1

    invoke-direct {v8, v15, v4, v13}, Lcom/motorola/camera/background/provider/filedatacontract/FileStatus;-><init>(ZLandroid/net/Uri;I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 32
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    const/4 v1, 0x0

    move-object v8, v1

    :goto_2
    if-eqz v8, :cond_5

    .line 33
    iget v4, v8, Lcom/motorola/camera/background/provider/filedatacontract/FileStatus;->size:I

    if-lez v4, :cond_5

    .line 34
    sget-object v4, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 35
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4, v0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 38
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_4

    .line 40
    invoke-static {v0, v14, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object v13, v3

    goto :goto_4

    :cond_4
    move-object v13, v1

    :goto_4
    if-eqz v13, :cond_5

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "context.getContentResolver()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4, v3, v13}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget v0, v8, Lcom/motorola/camera/background/provider/filedatacontract/FileStatus;->size:I

    move/from16 v18, v0

    const-wide/16 v14, 0x0

    move-object v0, v1

    move-wide/from16 v4, v22

    move-object v8, v9

    move-object v9, v13

    move-object v1, v12

    move-wide/from16 v12, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    .line 45
    invoke-static/range {v3 .. v21}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->insertFileDatabase(Landroid/content/ContentResolver;JJLjava/lang/String;Landroid/net/Uri;Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;JJLcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;IIII)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 46
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 47
    new-instance v15, Lkotlin/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v15, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    move-object v0, v1

    .line 48
    :cond_6
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_binArraytoFile: Error saving buffer with id="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileDataContract"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v0

    :goto_5
    if-eqz v15, :cond_7

    .line 49
    iget-object v0, v15, Lkotlin/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 50
    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_7
    const-string v0, "FileUtility"

    const-string v1, "Failed to save byte data to file provider"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
