.class public final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManagerProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;


# instance fields
.field public drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

.field public final lock:Ljava/lang/Object;

.field public manager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createManager(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drmConfiguration"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    .line 3
    new-instance v6, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    .line 4
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    invoke-direct {v6, v2, v3, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v4, v6, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v4

    .line 10
    :try_start_0
    iget-object v5, v6, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 13
    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 14
    sget v1, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->$r8$clinit:I

    .line 15
    new-instance v11, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v11}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const-wide/32 v12, 0x493e0

    .line 16
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    sget-object v5, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda1;

    .line 17
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    .line 19
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 20
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    .line 21
    invoke-static {v1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    .line 22
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    aget v9, v1, v3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v9, v14, :cond_3

    if-ne v9, v15, :cond_2

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    .line 23
    :cond_3
    :goto_3
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [I

    .line 25
    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    const/4 v14, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v0

    .line 27
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v2, 0x0

    .line 28
    iput v2, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    .line 29
    iput-object v0, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    return-object v1
.end method
