.class public final Lcom/google/android/exoplayer2/ExoPlayerImpl;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation


# instance fields
.field public final analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field public final applicationLooper:Landroid/os/Looper;

.field public final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

.field public final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field public final clock:Lcom/google/android/exoplayer2/util/Clock;

.field public final emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public final internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

.field public final listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "Lcom/google/android/exoplayer2/Player$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field public maskingWindowIndex:I

.field public maskingWindowPositionMs:J

.field public mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field public final mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

.field public final mediaSourceHolderSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public pendingDiscontinuity:Z

.field public pendingDiscontinuityReason:I

.field public pendingOperationAcks:I

.field public pendingPlayWhenReadyChangeReason:I

.field public final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field public final permanentAvailableCommands:Lcom/google/android/exoplayer2/Player$Commands;

.field public playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field public final playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field public final playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field public final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field public repeatMode:I

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field public shuffleModeEnabled:Z

.field public shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field public final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field public final useLazyPreparation:Z


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/DefaultLoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;ZLcom/google/android/exoplayer2/SeekParameters;JJLcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderers",
            "trackSelector",
            "mediaSourceFactory",
            "loadControl",
            "bandwidthMeter",
            "analyticsCollector",
            "useLazyPreparation",
            "seekParameters",
            "seekBackIncrementMs",
            "seekForwardIncrementMs",
            "livePlaybackSpeedControl",
            "releaseTimeoutMs",
            "pauseAtEndOfMediaItems",
            "clock",
            "applicationLooper",
            "wrappingPlayer",
            "additionalPermanentAvailableCommands"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v15, p17

    move-object/from16 v14, p18

    move-object/from16 v1, p19

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 2
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "Init "

    const-string v8, " ["

    const-string v10, "ExoPlayerLib/2.15.1"

    invoke-static {v5, v7, v3, v8, v10}, Lan$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExoPlayerImpl"

    .line 3
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 5
    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 6
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p2

    .line 7
    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-object/from16 v7, p3

    .line 8
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 9
    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 10
    iput-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move/from16 v7, p7

    .line 11
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->useLazyPreparation:Z

    move-object/from16 v10, p8

    .line 12
    iput-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    move-wide/from16 v7, p9

    .line 13
    iput-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekBackIncrementMs:J

    move-wide/from16 v7, p11

    .line 14
    iput-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekForwardIncrementMs:J

    .line 15
    iput-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    .line 16
    iput-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 17
    iput v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    .line 18
    new-instance v7, Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/Player;)V

    .line 19
    new-instance v11, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v11}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {v7, v11, v14, v15, v8}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    .line 20
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 21
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 22
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 23
    new-instance v7, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    .line 24
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-direct {v7, v4, v8}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    .line 25
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 26
    new-instance v7, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    array-length v8, v2

    new-array v8, v8, [Lcom/google/android/exoplayer2/RendererConfiguration;

    array-length v11, v2

    new-array v11, v11, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const/4 v12, 0x0

    invoke-direct {v7, v8, v11, v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 27
    new-instance v7, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 28
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v8, 0xa

    new-array v11, v8, [I

    .line 29
    fill-array-data v11, :array_0

    :goto_1
    if-ge v4, v8, :cond_1

    .line 30
    aget v13, v11, v4

    const/16 v16, 0x0

    xor-int/lit8 v16, v16, 0x1

    .line 31
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 32
    invoke-virtual {v7, v13, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p20

    .line 33
    iget-object v4, v4, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    const/4 v8, 0x0

    .line 34
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v11

    if-ge v8, v11, :cond_2

    .line 35
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v11

    xor-int/lit8 v13, v5, 0x0

    .line 36
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 37
    invoke-virtual {v7, v11, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 38
    :cond_2
    new-instance v4, Lcom/google/android/exoplayer2/Player$Commands;

    xor-int/lit8 v8, v5, 0x0

    .line 39
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 40
    new-instance v8, Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-direct {v8, v7, v12}, Lcom/google/android/exoplayer2/util/FlagSet;-><init>(Landroid/util/SparseBooleanArray;Lcom/google/android/exoplayer2/util/FlagSet$1;)V

    .line 41
    invoke-direct {v4, v8, v12}, Lcom/google/android/exoplayer2/Player$Commands;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;Lcom/google/android/exoplayer2/Player$1;)V

    .line 42
    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->permanentAvailableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 43
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v7, 0x0

    .line 44
    :goto_3
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v11

    if-ge v7, v11, :cond_3

    .line 45
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v11

    xor-int/lit8 v13, v5, 0x0

    .line 46
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 47
    invoke-virtual {v4, v11, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x3

    xor-int/lit8 v8, v5, 0x0

    .line 48
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 49
    invoke-virtual {v4, v7, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    const/16 v7, 0x9

    xor-int/lit8 v8, v5, 0x0

    .line 50
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 51
    invoke-virtual {v4, v7, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 52
    new-instance v7, Lcom/google/android/exoplayer2/Player$Commands;

    xor-int/lit8 v8, v5, 0x0

    .line 53
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 54
    new-instance v8, Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-direct {v8, v4, v12}, Lcom/google/android/exoplayer2/util/FlagSet;-><init>(Landroid/util/SparseBooleanArray;Lcom/google/android/exoplayer2/util/FlagSet$1;)V

    .line 55
    invoke-direct {v7, v8, v12}, Lcom/google/android/exoplayer2/Player$Commands;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;Lcom/google/android/exoplayer2/Player$1;)V

    .line 56
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 57
    sget-object v4, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v4, -0x1

    .line 58
    iput v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 59
    invoke-interface {v15, v14, v12}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 60
    new-instance v13, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v13, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    iput-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 61
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-static {v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->createDummy(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v9, :cond_6

    .line 62
    iget-object v4, v9, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v4, :cond_5

    iget-object v4, v9, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    .line 63
    iget-object v4, v4, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 64
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 65
    :cond_5
    :goto_4
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 66
    iput-object v1, v9, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 67
    iget-object v4, v9, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v4, v14, v12}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v4

    iput-object v4, v9, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 68
    iget-object v4, v9, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    invoke-direct {v5, v9, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/Player;)V

    .line 69
    new-instance v1, Lcom/google/android/exoplayer2/util/ListenerSet;

    iget-object v7, v4, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ListenerSet;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v1, v7, v14, v4, v5}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    .line 70
    iput-object v1, v9, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 71
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v6, v1, v9}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 73
    :cond_6
    new-instance v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    move-object v1, v12

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object v0, v12

    move-object/from16 v17, v13

    move-wide/from16 v12, p14

    move/from16 v14, p16

    move-object/from16 v15, p18

    move-object/from16 v16, p17

    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/DefaultLoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IZLcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/SeekParameters;Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public static getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackInfo"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 4
    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    .line 6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, v1, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public static isPlaying(Lcom/google/android/exoplayer2/PlaybackInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackInfo"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->released:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceView"
        }
    .end annotation

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureView"
        }
    .end annotation

    return-void
.end method

.method public createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/google/android/exoplayer2/PlayerMessage;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 3
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    move-object v0, v7

    move-object v2, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/PlayerMessage;-><init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V

    return-object v7
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    return-object p0
.end method

.method public getContentBufferedPosition()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 11
    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 12
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 13
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 6
    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget p0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget p0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCurrentCues()Ljava/util/List;
    .locals 0

    .line 1
    sget-object p0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 2
    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p0

    return-wide p0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide p0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    return-wide p0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object p0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final getCurrentWindowIndexInternal()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    return p0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v0, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()I
    .locals 0

    const/16 p0, 0xbb8

    return p0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method public final getPeriodPositionOrMaskWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "windowIndex",
            "windowPositionMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p3, 0x0

    .line 3
    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 5
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    .line 6
    iget-object p3, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    :cond_3
    move v3, p2

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getPlayWhenReady()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    return p0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p0
.end method

.method public getPlaybackState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    return p0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    return p0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    return p0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    return p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 0

    .line 1
    sget-object p0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object p0
.end method

.method public isPlayingAd()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p0

    return p0
.end method

.method public final maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playbackInfo",
            "timeline",
            "periodPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/PlaybackInfo;",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/exoplayer2/PlaybackInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v5, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    sget-object v1, Lcom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    sget-object v1, Lcom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 6
    iget-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    .line 7
    sget-object v16, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 8
    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 9
    sget-object v18, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v17, v0

    .line 10
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 12
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    return-object v0

    .line 13
    :cond_2
    iget-object v3, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 14
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_3

    .line 15
    new-instance v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v8, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :goto_2
    move-object v14, v8

    .line 16
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v8

    .line 18
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 20
    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    .line 21
    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    sub-long/2addr v8, v2

    :cond_4
    if-nez v7, :cond_a

    cmp-long v2, v12, v8

    if-gez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez v2, :cond_8

    .line 22
    iget-object v2, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 24
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v3, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 26
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-eq v2, v3, :cond_e

    .line 27
    :cond_6
    iget-object v2, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 28
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v2, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    goto :goto_3

    .line 30
    :cond_7
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 31
    :goto_3
    iget-wide v8, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-wide v10, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-wide v12, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-wide v2, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    sub-long v2, v0, v2

    iget-object v4, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v5, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v15, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object v7, v14

    move-wide/from16 p0, v0

    move-object v0, v14

    move-object v1, v15

    move-wide v14, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v1

    .line 32
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    move-wide/from16 v0, p0

    .line 34
    iput-wide v0, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    goto/16 :goto_8

    :cond_8
    move-object v0, v14

    .line 35
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-wide/16 v1, 0x0

    .line 36
    iget-wide v3, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    sub-long v7, v12, v8

    sub-long/2addr v3, v7

    .line 37
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 38
    iget-wide v1, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 39
    iget-object v3, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-long v1, v12, v14

    .line 40
    :cond_9
    iget-object v3, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v4, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v5, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 41
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    .line 42
    iput-wide v1, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    goto :goto_8

    :cond_a
    :goto_4
    move-object v1, v0

    move-object v0, v14

    .line 43
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-wide/16 v14, 0x0

    if-eqz v7, :cond_b

    .line 44
    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_5

    :cond_b
    iget-object v2, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_5
    move-object/from16 v16, v2

    if-eqz v7, :cond_c

    .line 45
    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_6

    :cond_c
    iget-object v1, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_6
    move-object/from16 v17, v1

    if-eqz v7, :cond_d

    .line 46
    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 47
    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    goto :goto_7

    .line 48
    :cond_d
    iget-object v1, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_7
    move-object/from16 v18, v1

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-wide v1, v12

    .line 49
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 50
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    .line 51
    iput-wide v1, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    :cond_e
    :goto_8
    return-object v6
.end method

.method public final periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "periodId",
            "positionUs"
        }
    .end annotation

    .line 1
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3
    iget-wide p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    add-long/2addr p3, p0

    return-wide p3
.end method

.method public prepare()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 8
    invoke-virtual/range {v3 .. v12}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public release()V
    .locals 10

    const-string v0, "ExoPlayerImpl"

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 2
    sget-object v3, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    .line 3
    const-class v3, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;

    monitor-enter v3

    .line 4
    :try_start_0
    sget-object v4, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v3

    const/16 v3, 0x24

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "Release "

    const-string v6, " ["

    const-string v7, "ExoPlayerLib/2.15.1"

    invoke-static {v3, v5, v1, v6, v7}, Lan$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] ["

    const-string v5, "] ["

    invoke-static {v1, v3, v2, v5, v4}, Landroidx/room/InvalidationTracker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v5, 0x7

    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 11
    iget-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseTimeoutMs:J

    .line 12
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v5

    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 15
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_1

    cmp-long v9, v5, v2

    if-lez v9, :cond_1

    .line 16
    :try_start_3
    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v9}, Lcom/google/android/exoplayer2/util/Clock;->onThreadBlocked()V

    .line 17
    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move v1, v4

    .line 18
    :goto_1
    :try_start_4
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v7, v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :cond_2
    :try_start_5
    monitor-exit v0

    .line 21
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 22
    :try_start_6
    monitor-exit v0

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 23
    :cond_3
    :goto_2
    monitor-exit v0

    move v1, v4

    :goto_3
    if-nez v1, :cond_4

    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0xb

    sget-object v5, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;

    .line 25
    invoke-virtual {v0, v1, v5}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 26
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    if-eqz v0, :cond_5

    .line 30
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 32
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 33
    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iput-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    return-void

    :catchall_1
    move-exception p0

    .line 35
    monitor-exit v0

    throw p0

    :catchall_2
    move-exception p0

    .line 36
    monitor-exit v3

    throw p0
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 4
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    .line 7
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public final removeMediaSourceHolders(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndexExclusive"
        }
    .end annotation

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    return-void
.end method

.method public seekTo(IJ)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "positionMs"
        }
    .end annotation

    .line 1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-ltz p1, :cond_3

    .line 2
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v5

    if-ge p1, v5, :cond_3

    .line 3
    :cond_0
    iget v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "ExoPlayerImpl"

    const-string v2, "seekTo ignored because an ad is playing"

    .line 5
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 7
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    check-cast v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v3, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v9

    .line 12
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v5

    .line 13
    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionOrMaskWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v6

    .line 14
    invoke-virtual {p0, v5, v4, v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    .line 16
    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v7, v4, p1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 v1, 0x3

    .line 17
    invoke-interface {v6, v1, v7}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 19
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v10

    move-object v0, p0

    move-object v1, v5

    move v5, v6

    move v6, v7

    move-wide v7, v10

    .line 20
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJI)V

    return-void

    .line 21
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v0, v4, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v0
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaItems",
            "resetPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 3
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-object/from16 v5, p1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/MediaItem;

    invoke-interface {v4, v6}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v4

    .line 6
    iget v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 7
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 10
    invoke-virtual {p0, v2, v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    .line 11
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    .line 12
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 13
    new-instance v8, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 14
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->useLazyPreparation:Z

    invoke-direct {v8, v10, v11}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 15
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    add-int/lit8 v11, v6, 0x0

    new-instance v12, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v13, v8, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    iget-object v8, v8, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 17
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 18
    invoke-direct {v12, v13, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;)V

    .line 19
    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 20
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 21
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 22
    invoke-interface {v1, v2, v6}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 23
    new-instance v6, Lcom/google/android/exoplayer2/PlaylistTimeline;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-direct {v6, v8, v1}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 24
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, -0x1

    if-nez v1, :cond_4

    .line 25
    iget v1, v6, Lcom/google/android/exoplayer2/PlaylistTimeline;->windowCount:I

    if-ge v8, v1, :cond_3

    goto :goto_2

    .line 26
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v0, v6, v8, v10, v11}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v0

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 27
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result v3

    move-wide v4, v10

    :cond_5
    move v11, v3

    .line 28
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 29
    invoke-virtual {p0, v6, v11, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionOrMaskWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 30
    invoke-virtual {p0, v1, v6, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 31
    iget v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v11, v8, :cond_8

    if-eq v3, v7, :cond_8

    .line 32
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 33
    iget v3, v6, Lcom/google/android/exoplayer2/PlaylistTimeline;->windowCount:I

    if-lt v11, v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x2

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v3, 0x4

    .line 34
    :cond_8
    :goto_4
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 35
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 36
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v12

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 37
    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v14, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V

    const/16 v5, 0x11

    .line 38
    invoke-interface {v3, v5, v4}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v3

    .line 39
    check-cast v3, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    .line 40
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 42
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    move v5, v7

    goto :goto_5

    :cond_9
    move v5, v2

    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 43
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v7

    const/4 v9, -0x1

    move-object v0, p0

    .line 44
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playWhenReady"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlayWhenReady(ZII)V

    return-void
.end method

.method public setPlayWhenReady(ZII)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playWhenReady",
            "playbackSuppressionReason",
            "playWhenReadyChangeReason"
        }
    .end annotation

    .line 2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-ne v4, p1, :cond_0

    iget v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v4, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 4
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlayWhenReady(ZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 6
    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 7
    invoke-interface {v4, v5, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, v3

    move v3, p3

    .line 9
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v1, p0

    .line 7
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatMode"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0x9

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateAvailableCommands()V

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekParameters"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x5

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shuffleModeEnabled"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0xa

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateAvailableCommands()V

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceView"
        }
    .end annotation

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureView"
        }
    .end annotation

    return-void
.end method

.method public stop(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reset"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stop(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public stop(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reset",
            "error"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_b

    .line 2
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ltz v4, :cond_0

    .line 4
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 6
    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v5

    .line 8
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 9
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    .line 10
    iget v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v7, v3

    iput v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 11
    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    .line 12
    new-instance v15, Lcom/google/android/exoplayer2/PlaylistTimeline;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v15, v7, v8}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 13
    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v7

    .line 15
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v9, :cond_4

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v16

    .line 17
    iget-object v9, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 18
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v17

    move-object v7, v6

    move-object v8, v9

    move-object v9, v10

    const/4 v2, -0x1

    move/from16 v10, v16

    move/from16 p1, v4

    move-wide v3, v11

    move-wide/from16 v11, v17

    .line 19
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v7

    .line 20
    sget v8, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iget-object v11, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 21
    invoke-virtual {v15, v11}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v2, :cond_2

    move-object v9, v13

    goto :goto_5

    .line 22
    :cond_2
    iget-object v7, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    move-object v12, v6

    move-object v6, v13

    move-object v13, v15

    .line 23
    invoke-static/range {v7 .. v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 24
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v15, v7, v2}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 25
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 26
    invoke-virtual {v15, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v3

    .line 27
    invoke-virtual {v0, v15, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionOrMaskWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {v0, v15, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionOrMaskWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    :goto_1
    move-object v7, v2

    move-object v9, v6

    goto :goto_5

    :cond_4
    :goto_2
    move/from16 p1, v4

    move-wide v3, v11

    move-object v9, v13

    const/4 v2, -0x1

    .line 29
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_6

    move v10, v2

    goto :goto_4

    .line 30
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v10

    :goto_4
    if-eqz v6, :cond_7

    move-wide v7, v3

    .line 31
    :cond_7
    invoke-virtual {v0, v15, v10, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionOrMaskWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v7

    .line 32
    :goto_5
    invoke-virtual {v0, v9, v15, v7}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 33
    iget v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v4, 0x4

    const/4 v6, 0x1

    if-eq v3, v6, :cond_8

    if-eq v3, v4, :cond_8

    if-lez p1, :cond_8

    move/from16 v3, p1

    if-ne v3, v14, :cond_9

    iget-object v6, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 34
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    if-lt v5, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    move/from16 v3, p1

    :cond_9
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_a

    .line 35
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 36
    :cond_a
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 37
    iget-object v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v6, 0x14

    const/4 v7, 0x0

    .line 38
    invoke-interface {v4, v6, v7, v3, v5}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v3

    .line 39
    check-cast v3, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    goto :goto_7

    :cond_b
    move v7, v2

    .line 41
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 42
    iget-wide v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    const-wide/16 v3, 0x0

    .line 43
    iput-wide v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    :goto_7
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    if-eqz v1, :cond_c

    .line 45
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    goto :goto_8

    :cond_c
    move-object v1, v2

    .line 46
    :goto_8
    iget v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 47
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 48
    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v4, 0x6

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    .line 49
    iget-object v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    move v5, v3

    goto :goto_9

    :cond_d
    move v5, v7

    :goto_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v7

    const/4 v9, -0x1

    move-object/from16 v0, p0

    .line 52
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public final updateAvailableCommands()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->permanentAvailableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 3
    new-instance v2, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentWindowSeekable()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    const/4 v1, 0x5

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    const/4 v1, 0x6

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousWindow()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentWindowLive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentWindowSeekable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v5

    .line 11
    :goto_2
    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    const/4 v1, 0x7

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextWindow()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    const/16 v1, 0x8

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextWindow()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentWindowLive()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentWindowDynamic()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    move v4, v5

    .line 16
    :goto_4
    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    const/16 v1, 0x9

    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    const/16 v1, 0xa

    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentWindowSeekable()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v3

    goto :goto_5

    :cond_7
    move v4, v5

    :goto_5
    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    const/16 v1, 0xb

    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentWindowSeekable()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 22
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0xe

    new-instance v2, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_9
    return-void
.end method

.method public final updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJI)V
    .locals 37
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playbackInfo",
            "timelineChangeReason",
            "playWhenReadyChangeReason",
            "seekProcessed",
            "positionDiscontinuity",
            "positionDiscontinuityReason",
            "discontinuityWindowStartPositionUs",
            "oldMaskingWindowIndex"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    .line 1
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2
    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 3
    iget-object v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 5
    iget-object v6, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 6
    iget-object v7, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    const/4 v9, -0x1

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-eqz v8, :cond_0

    .line 9
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 11
    :cond_0
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v14

    if-eq v8, v14, :cond_1

    .line 12
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 13
    :cond_1
    iget-object v8, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 14
    invoke-virtual {v6, v8, v14}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 15
    iget-object v14, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v6, v8, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 16
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 17
    invoke-virtual {v7, v8, v14}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 18
    iget-object v14, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v7, v8, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 19
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p5, :cond_2

    if-nez v2, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    if-ne v2, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    move v4, v12

    .line 20
    :goto_0
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_1

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_5
    if-eqz p5, :cond_6

    if-nez v2, :cond_6

    .line 22
    iget-object v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v14, v4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v4, v6, v14

    if-gez v4, :cond_6

    .line 23
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_6
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :goto_1
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 26
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 27
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v8, 0x0

    if-eqz v6, :cond_9

    .line 28
    iget-object v7, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 29
    iget-object v7, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v10, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v10, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 30
    invoke-virtual {v7, v10, v14}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 31
    iget-object v10, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v14, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v10, v7, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    goto :goto_2

    :cond_7
    move-object v7, v8

    :goto_2
    if-eqz v7, :cond_8

    .line 32
    iget-object v10, v7, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    goto :goto_3

    :cond_8
    sget-object v10, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    :goto_3
    move-object/from16 v36, v10

    move-object v10, v7

    move-object/from16 v7, v36

    goto :goto_4

    :cond_9
    move-object v10, v8

    .line 33
    :goto_4
    iget-object v14, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v15, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 34
    new-instance v14, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v14, v7, v8}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaMetadata$1;)V

    .line 35
    iget-object v7, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move v15, v13

    .line 36
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v15, v8, :cond_b

    .line 37
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/metadata/Metadata;

    move v12, v13

    .line 38
    :goto_6
    iget-object v11, v8, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v9, v11

    if-ge v12, v9, :cond_a

    .line 39
    aget-object v9, v11, v12

    .line 40
    invoke-interface {v9, v14}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v9, -0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v9, -0x1

    const/4 v12, 0x3

    goto :goto_5

    .line 41
    :cond_b
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v7

    .line 42
    :cond_c
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    .line 43
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 44
    iget-object v7, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v9, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 45
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v9, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda3;

    move/from16 v11, p2

    invoke-direct {v9, v1, v11, v13}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;II)V

    invoke-virtual {v7, v13, v9}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_d
    if-eqz p5, :cond_15

    .line 46
    new-instance v7, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 47
    iget-object v9, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 48
    iget-object v9, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 49
    iget-object v11, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v11, v9, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 50
    iget v11, v7, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 51
    iget-object v12, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v12, v9}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v12

    .line 52
    iget-object v14, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v15, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v14, v11, v15}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    move-object/from16 v19, v9

    move/from16 v18, v11

    move/from16 v20, v12

    move-object/from16 v17, v14

    goto :goto_7

    :cond_e
    move/from16 v18, p9

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_7
    if-nez v2, :cond_10

    .line 53
    iget-wide v11, v7, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v14, v7, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    add-long/2addr v11, v14

    .line 54
    iget-object v9, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 55
    iget-object v9, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v11, v9, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v9, v9, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    .line 56
    invoke-virtual {v7, v11, v9}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v11

    .line 57
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v14

    goto :goto_9

    .line 58
    :cond_f
    iget-object v7, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v7, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_12

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 59
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 60
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-static {v7}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v11

    goto :goto_8

    .line 61
    :cond_10
    iget-object v9, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 62
    iget-wide v11, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 63
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v14

    goto :goto_9

    .line 64
    :cond_11
    iget-wide v11, v7, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v14, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    add-long/2addr v11, v14

    :cond_12
    :goto_8
    move-wide v14, v11

    .line 65
    :goto_9
    new-instance v7, Lcom/google/android/exoplayer2/Player$PositionInfo;

    .line 66
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v21

    .line 67
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v23

    iget-object v9, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v11, v9, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v9, v9, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v16, v7

    move/from16 v25, v11

    move/from16 v26, v9

    invoke-direct/range {v16 .. v26}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v9

    .line 69
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v11, v11, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_13

    .line 70
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v12, v11, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v12, v12, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 71
    iget-object v11, v11, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v11, v12, v14}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 72
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v11, v11, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v11

    .line 73
    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v14, v14, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v15, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v14, v9, v15}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    move/from16 v29, v11

    move-object/from16 v28, v12

    move-object/from16 v26, v14

    goto :goto_a

    :cond_13
    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    .line 74
    :goto_a
    invoke-static/range {p7 .. p8}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v30

    .line 75
    new-instance v11, Lcom/google/android/exoplayer2/Player$PositionInfo;

    .line 76
    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v12, v12, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 77
    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-static {v12}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v14

    move-wide/from16 v32, v14

    goto :goto_b

    :cond_14
    move-wide/from16 v32, v30

    .line 78
    :goto_b
    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v12, v12, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v14, v12, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v12, v12, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v25, v11

    move/from16 v27, v9

    move/from16 v34, v14

    move/from16 v35, v12

    invoke-direct/range {v25 .. v35}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V

    .line 79
    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v12, 0xc

    new-instance v14, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v14, v2, v7, v11}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;-><init>(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V

    invoke-virtual {v9, v12, v14}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_15
    if-eqz v6, :cond_16

    .line 80
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v6, v10, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/MediaItem;I)V

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 81
    :cond_16
    iget-object v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eq v2, v4, :cond_17

    .line 82
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 83
    iget-object v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v2, :cond_17

    .line 84
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v2, v6, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 85
    :cond_17
    iget-object v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eq v2, v4, :cond_18

    .line 86
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 87
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    .line 88
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v6, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 89
    :cond_18
    iget-object v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 90
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_19
    if-eqz v8, :cond_1a

    .line 91
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 92
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v6, 0xf

    new-instance v7, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v7, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;)V

    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 93
    :cond_1a
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-eq v2, v4, :cond_1b

    .line 94
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v4, 0x4

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v13}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;I)V

    invoke-virtual {v2, v4, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 95
    :cond_1b
    iget v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v2, v4, :cond_1c

    iget-boolean v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eq v2, v4, :cond_1d

    .line 96
    :cond_1c
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v13}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;I)V

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 97
    :cond_1d
    iget v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v2, v4, :cond_1e

    .line 98
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v4, 0x5

    new-instance v6, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v2, v4, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 99
    :cond_1e
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eq v2, v4, :cond_1f

    .line 100
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v4, 0x6

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda3;

    move/from16 v7, p3

    invoke-direct {v6, v1, v7, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;II)V

    invoke-virtual {v2, v4, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 101
    :cond_1f
    iget v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    iget v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-eq v2, v4, :cond_20

    .line 102
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v4, 0x7

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;I)V

    invoke-virtual {v2, v4, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 103
    :cond_20
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlaying(Lcom/google/android/exoplayer2/PlaybackInfo;)Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlaying(Lcom/google/android/exoplayer2/PlaybackInfo;)Z

    move-result v4

    if-eq v2, v4, :cond_21

    .line 104
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v4, 0x8

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;I)V

    invoke-virtual {v2, v4, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 105
    :cond_21
    iget-object v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 106
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v4, 0xd

    new-instance v5, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v5, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_22
    if-eqz p4, :cond_23

    .line 107
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    sget-object v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda5;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda5;

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 108
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateAvailableCommands()V

    .line 109
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 110
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    if-eq v2, v4, :cond_24

    .line 111
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 112
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;->onExperimentalOffloadSchedulingEnabledChanged(Z)V

    goto :goto_c

    .line 113
    :cond_24
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eq v2, v3, :cond_25

    .line 114
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 115
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;->onExperimentalSleepingForOffloadChanged(Z)V

    goto :goto_d

    :cond_25
    return-void
.end method
