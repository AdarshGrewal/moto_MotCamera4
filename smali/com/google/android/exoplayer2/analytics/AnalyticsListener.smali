.class public interface abstract Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    }
.end annotation


# virtual methods
.method public onAudioCodecError()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "audioCodecError"
        }
    .end annotation

    return-void
.end method

.method public onAudioDecoderInitialized()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderName",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation

    return-void
.end method

.method public onAudioDecoderInitialized1()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderName",
            "initializationDurationMs"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAudioDecoderReleased()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderName"
        }
    .end annotation

    return-void
.end method

.method public onAudioDisabled()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderCounters"
        }
    .end annotation

    return-void
.end method

.method public onAudioEnabled()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderCounters"
        }
    .end annotation

    return-void
.end method

.method public onAudioInputFormatChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "format"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAudioInputFormatChanged1()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "format",
            "decoderReuseEvaluation"
        }
    .end annotation

    return-void
.end method

.method public onAudioPositionAdvancing()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "playoutStartSystemTimeMs"
        }
    .end annotation

    return-void
.end method

.method public onAudioSinkError()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "audioSinkError"
        }
    .end annotation

    return-void
.end method

.method public onAudioUnderrun()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "bufferSize",
            "bufferSizeMs",
            "elapsedSinceLastFeedMs"
        }
    .end annotation

    return-void
.end method

.method public onAvailableCommandsChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "availableCommands"
        }
    .end annotation

    return-void
.end method

.method public onBandwidthEstimate()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "totalLoadTimeMs",
            "totalBytesLoaded",
            "bitrateEstimate"
        }
    .end annotation

    return-void
.end method

.method public onDecoderDisabled()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackType",
            "decoderCounters"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDecoderEnabled()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackType",
            "decoderCounters"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDecoderInitialized()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackType",
            "decoderName",
            "initializationDurationMs"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDecoderInputFormatChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackType",
            "format"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDownstreamFormatChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "mediaLoadData"
        }
    .end annotation

    return-void
.end method

.method public onDrmKeysLoaded()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation

    return-void
.end method

.method public onDrmKeysRemoved()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation

    return-void
.end method

.method public onDrmKeysRestored()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation

    return-void
.end method

.method public onDrmSessionAcquired()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDrmSessionAcquired1()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "state"
        }
    .end annotation

    return-void
.end method

.method public onDrmSessionManagerError()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "error"
        }
    .end annotation

    return-void
.end method

.method public onDrmSessionReleased()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation

    return-void
.end method

.method public onDroppedVideoFrames()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "droppedFrames",
            "elapsedMs"
        }
    .end annotation

    return-void
.end method

.method public onEvents()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "events"
        }
    .end annotation

    return-void
.end method

.method public onIsLoadingChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "isLoading"
        }
    .end annotation

    return-void
.end method

.method public onIsPlayingChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "isPlaying"
        }
    .end annotation

    return-void
.end method

.method public onLoadCanceled()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "loadEventInfo",
            "mediaLoadData"
        }
    .end annotation

    return-void
.end method

.method public onLoadCompleted()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "loadEventInfo",
            "mediaLoadData"
        }
    .end annotation

    return-void
.end method

.method public onLoadError()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "loadEventInfo",
            "mediaLoadData",
            "error",
            "wasCanceled"
        }
    .end annotation

    return-void
.end method

.method public onLoadStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "loadEventInfo",
            "mediaLoadData"
        }
    .end annotation

    return-void
.end method

.method public onLoadingChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "isLoading"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onMediaItemTransition()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "mediaItem",
            "reason"
        }
    .end annotation

    return-void
.end method

.method public onMediaMetadataChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "mediaMetadata"
        }
    .end annotation

    return-void
.end method

.method public onMetadata()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "metadata"
        }
    .end annotation

    return-void
.end method

.method public onPlayWhenReadyChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "playWhenReady",
            "reason"
        }
    .end annotation

    return-void
.end method

.method public onPlaybackParametersChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "playbackParameters"
        }
    .end annotation

    return-void
.end method

.method public onPlaybackStateChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "playbackSuppressionReason"
        }
    .end annotation

    return-void
.end method

.method public onPlayerError()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "error"
        }
    .end annotation

    return-void
.end method

.method public onPlayerReleased()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation

    return-void
.end method

.method public onPlayerStateChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "playWhenReady",
            "playbackState"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "reason"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPositionDiscontinuity1()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "oldPosition",
            "newPosition",
            "reason"
        }
    .end annotation

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "output",
            "renderTimeMs"
        }
    .end annotation

    return-void
.end method

.method public onRepeatModeChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "repeatMode"
        }
    .end annotation

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSeekStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onShuffleModeChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "shuffleModeEnabled"
        }
    .end annotation

    return-void
.end method

.method public onSkipSilenceEnabledChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "skipSilenceEnabled"
        }
    .end annotation

    return-void
.end method

.method public onStaticMetadataChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "metadataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSurfaceSizeChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "width",
            "height"
        }
    .end annotation

    return-void
.end method

.method public onTimelineChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "reason"
        }
    .end annotation

    return-void
.end method

.method public onTracksChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackGroups",
            "trackSelections"
        }
    .end annotation

    return-void
.end method

.method public onVideoCodecError()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "videoCodecError"
        }
    .end annotation

    return-void
.end method

.method public onVideoDecoderInitialized()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderName",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation

    return-void
.end method

.method public onVideoDecoderInitialized1()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderName",
            "initializationDurationMs"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onVideoDecoderReleased()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderName"
        }
    .end annotation

    return-void
.end method

.method public onVideoDisabled()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderCounters"
        }
    .end annotation

    return-void
.end method

.method public onVideoEnabled()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "decoderCounters"
        }
    .end annotation

    return-void
.end method

.method public onVideoFrameProcessingOffset()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "totalProcessingOffsetUs",
            "frameCount"
        }
    .end annotation

    return-void
.end method

.method public onVideoInputFormatChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "format"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onVideoInputFormatChanged1()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "format",
            "decoderReuseEvaluation"
        }
    .end annotation

    return-void
.end method

.method public onVideoSizeChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "videoSize"
        }
    .end annotation

    return-void
.end method

.method public onVideoSizeChanged1()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "width",
            "height",
            "unappliedRotationDegrees",
            "pixelWidthHeightRatio"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onVolumeChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "volume"
        }
    .end annotation

    return-void
.end method
