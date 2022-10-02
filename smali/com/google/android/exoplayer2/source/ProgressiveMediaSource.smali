.class public final Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final continueLoadingCheckIntervalBytes:I

.field public final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field public final loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field public final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public final playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

.field public final progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

.field public timelineDurationUs:J

.field public timelineIsLive:Z

.field public timelineIsPlaceholder:Z

.field public timelineIsSeekable:Z

.field public transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ILcom/google/android/exoplayer2/source/ProgressiveMediaSource$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 2
    iget-object p7, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 3
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    .line 8
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 9
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 10
    iput p6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/DefaultAllocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "allocator",
            "startPositionUs"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p1

    .line 1
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    .line 2
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 4
    :cond_0
    new-instance v12, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    .line 5
    check-cast v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;

    iget-object v3, v3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 6
    new-instance v4, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 7
    iget-object v5, v8, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 8
    iget-object v3, v8, Lcom/google/android/exoplayer2/source/BaseMediaSource;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v7

    .line 9
    iget-object v9, v8, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 10
    iget-object v3, v8, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const-wide/16 v10, 0x0

    invoke-virtual {v3, v6, p1, v10, v11}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v10

    .line 11
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v11, v0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->customCacheKey:Ljava/lang/String;

    iget v13, v8, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, v12

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v6, v9

    move-object v7, v10

    move-object v8, p0

    move-object/from16 v9, p2

    move-object v10, v11

    move v11, v13

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/DefaultAllocator;Ljava/lang/String;I)V

    return-object v12
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public final notifySourceInfoRefreshed()V
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsLive:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$1;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$1;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    move-object v8, v0

    .line 4
    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public onSourceInfoRefreshed(JZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "durationUs",
            "isSeekable",
            "isLive"
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsLive:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 3
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 4
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsLive:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaTransferListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriod"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 2
    iget-boolean p0, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 4
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 5
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 7
    iput-object v0, v3, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 8
    iput-object v0, v3, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 10
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    const/4 p0, 0x1

    .line 12
    iput-boolean p0, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->released:Z

    return-void
.end method

.method public releaseSourceInternal()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    return-void
.end method
