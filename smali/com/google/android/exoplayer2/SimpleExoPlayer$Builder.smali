.class public final Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field public audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field public bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field public buildCalled:Z

.field public clock:Lcom/google/android/exoplayer2/util/Clock;

.field public final context:Landroid/content/Context;

.field public detachSurfaceTimeoutMs:J

.field public livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field public loadControl:Lcom/google/android/exoplayer2/DefaultLoadControl;

.field public looper:Landroid/os/Looper;

.field public mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

.field public releaseTimeoutMs:J

.field public final renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

.field public seekBackIncrementMs:J

.field public seekForwardIncrementMs:J

.field public seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field public trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field public useLazyPreparation:Z

.field public videoScalingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "renderersFactory"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 2
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v4, v1, v2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    new-instance v2, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 3
    sget-object v5, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Lcom/google/common/collect/ImmutableListMultimap;

    .line 4
    const-class v5, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    monitor-enter v5

    .line 5
    :try_start_0
    sget-object v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    if-nez v6, :cond_0

    .line 6
    new-instance v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v14, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    iget-object v8, v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    iget-object v9, v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    iget v10, v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    iget-object v11, v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iget-boolean v12, v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    const/4 v13, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;ZLcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;)V

    .line 8
    sput-object v14, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 9
    :cond_0
    sget-object v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 10
    new-instance v5, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    sget-object v7, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v5, v7}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->context:Landroid/content/Context;

    move-object/from16 v1, p2

    .line 13
    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    .line 14
    iput-object v3, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 15
    iput-object v4, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 16
    iput-object v2, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->loadControl:Lcom/google/android/exoplayer2/DefaultLoadControl;

    .line 17
    iput-object v6, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 18
    iput-object v5, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 19
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 20
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v1, 0x1

    .line 21
    iput v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->videoScalingMode:I

    .line 22
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->useLazyPreparation:Z

    .line 23
    sget-object v1, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    const-wide/16 v1, 0x1388

    .line 24
    iput-wide v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 v1, 0x3a98

    .line 25
    iput-wide v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekForwardIncrementMs:J

    const-wide/16 v1, 0x14

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v14

    const-wide/16 v1, 0x1f4

    .line 27
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v16

    const v18, 0x3f7fbe77    # 0.999f

    .line 28
    new-instance v3, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    const v9, 0x3f7851ec    # 0.97f

    const v10, 0x3f83d70a    # 1.03f

    const-wide/16 v11, 0x3e8

    const v13, 0x33d6bf95    # 1.0E-7f

    const/16 v19, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v19}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJFLcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$1;)V

    .line 29
    iput-object v3, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 30
    iput-object v7, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 31
    iput-wide v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 v1, 0x7d0

    .line 32
    iput-wide v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-void

    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v5

    throw v0
.end method
