.class public final Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;
.super Ljava/lang/Object;
.source "HttpMediaDrmCallback.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/MediaDrmCallback;


# instance fields
.field public final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

.field public final defaultLicenseUrl:Ljava/lang/String;

.field public final forceDefaultLicenseUrl:Z

.field public final keyRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultLicenseUrl",
            "forceDefaultLicenseUrl",
            "dataSourceFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public static executePost(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataSourceFactory",
            "url",
            "httpBody",
            "requestProperties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    move-object/from16 v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object v0

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v15, "The uri must be set."

    if-eqz v3, :cond_6

    .line 6
    new-instance v16, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v0, 0x0

    move-object/from16 v2, v16

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v17, v15

    move-object v15, v0

    .line 7
    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    const/4 v2, 0x0

    move v4, v2

    move-object/from16 v3, v16

    .line 8
    :goto_0
    :try_start_0
    new-instance v5, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    invoke-direct {v5, v1, v3}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 9
    :try_start_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 11
    :try_start_3
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 12
    :try_start_4
    iget v0, v6, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v7, 0x133

    if-eq v0, v7, :cond_0

    const/16 v7, 0x134

    if-ne v0, v7, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ge v4, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const/4 v7, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    iget-object v0, v6, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v8, "Location"

    .line 14
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    :cond_3
    :goto_2
    if-eqz v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 17
    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->uriPositionOffset:J

    .line 18
    iget v0, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    .line 19
    iget-object v6, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    .line 20
    iget-object v10, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 21
    iget-wide v11, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 22
    iget-wide v13, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 23
    iget-object v15, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 24
    iget v2, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    .line 25
    iget-object v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->customData:Ljava/lang/Object;

    .line 26
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 27
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v18, v7

    move-wide/from16 v20, v8

    move/from16 v22, v0

    move-object/from16 v23, v6

    move-object/from16 v24, v10

    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    move-object/from16 v29, v15

    move/from16 v30, v2

    move-object/from16 v31, v3

    .line 28
    invoke-direct/range {v18 .. v31}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    :try_start_5
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 30
    :try_start_6
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_2
    move-object v3, v7

    const/4 v2, 0x0

    goto :goto_0

    .line 31
    :cond_4
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v2, v17

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_5
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 33
    :goto_3
    :try_start_8
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 34
    :try_start_9
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 35
    :catch_3
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v0

    move-object v10, v0

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    .line 37
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 38
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 40
    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->bytesRead:J

    move-object v4, v0

    move-object/from16 v5, v16

    .line 41
    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw v0

    :cond_6
    move-object v2, v15

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uuid",
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    .line 2
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 4
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6
    sget-object v5, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "text/xml"

    goto :goto_0

    .line 7
    :cond_2
    sget-object v6, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "application/json"

    goto :goto_0

    :cond_3
    const-string v6, "application/octet-stream"

    :goto_0
    const-string v7, "Content-Type"

    .line 8
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v5, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SOAPAction"

    const-string v5, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 10
    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 15
    iget-object v1, v2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->data:[B

    .line 16
    invoke-static {v0, v3, v1, v4}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 18
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    const-wide/16 v10, -0x1

    .line 20
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz v2, :cond_6

    .line 21
    new-instance v15, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v1, v15

    .line 22
    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 23
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 24
    sget-object v5, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v1, "No license URL"

    invoke-direct {v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v15

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw v0

    .line 25
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The uri must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uuid",
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    .line 2
    iget-object p2, p2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    .line 3
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const-string v0, "&signedRequest="

    invoke-static {v1, p1, v0, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline1;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    const/4 p2, 0x0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 6
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method
