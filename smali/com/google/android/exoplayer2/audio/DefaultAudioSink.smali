.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;
    }
.end annotation


# instance fields
.field public activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

.field public audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field public final audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field public final audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

.field public audioSessionId:I

.field public audioTrack:Landroid/media/AudioTrack;

.field public audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field public final audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

.field public auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

.field public avSyncHeader:Ljava/nio/ByteBuffer;

.field public bytesUntilNextAvSync:I

.field public final channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

.field public configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

.field public drainingAudioProcessorIndex:I

.field public final enableAudioTrackPlaybackParams:Z

.field public final enableFloatOutput:Z

.field public externalAudioSessionIdProvided:Z

.field public framesPerEncodedSample:I

.field public handledEndOfStream:Z

.field public final initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;",
            ">;"
        }
    .end annotation
.end field

.field public inputBuffer:Ljava/nio/ByteBuffer;

.field public inputBufferAccessUnitCount:I

.field public isWaitingForOffloadEndOfStreamHandled:Z

.field public lastFeedElapsedRealtimeMs:J

.field public listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

.field public mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

.field public final mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;",
            ">;"
        }
    .end annotation
.end field

.field public offloadDisabledUntilNextConfiguration:Z

.field public final offloadMode:I

.field public offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public outputBuffers:[Ljava/nio/ByteBuffer;

.field public pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

.field public playing:Z

.field public preV21OutputBuffer:[B

.field public preV21OutputBufferOffset:I

.field public final releasingConditionVariable:Landroid/os/ConditionVariable;

.field public startMediaTimeUs:J

.field public startMediaTimeUsNeedsInit:Z

.field public startMediaTimeUsNeedsSync:Z

.field public stoppedAudioTrack:Z

.field public submittedEncodedFrames:J

.field public submittedPcmBytes:J

.field public final toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public final toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public final trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

.field public tunneling:Z

.field public volume:F

.field public final writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;",
            ">;"
        }
    .end annotation
.end field

.field public writtenEncodedFrames:J

.field public writtenPcmBytes:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;ZZI)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioCapabilities",
            "audioProcessorChain",
            "enableFloatOutput",
            "enableAudioTrackPlaybackParams",
            "offloadMode"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 2
    iput-object v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

    .line 4
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_0

    if-eqz p3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableFloatOutput:Z

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    if-eqz p4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    .line 5
    :goto_1
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    move/from16 v2, p5

    goto :goto_2

    :cond_2
    move v2, v5

    .line 6
    :goto_2
    iput v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    .line 7
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 8
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    new-instance v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    .line 9
    new-instance v2, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    .line 10
    new-instance v3, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    .line 11
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;

    .line 12
    new-instance v8, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;-><init>()V

    aput-object v8, v7, v5

    aput-object v2, v7, v4

    const/4 v2, 0x2

    aput-object v3, v7, v2

    invoke-static {v6, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13
    check-cast v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 14
    iget-object v1, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 15
    invoke-static {v6, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array v1, v5, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 16
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-array v1, v4, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 17
    new-instance v2, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;-><init>()V

    aput-object v2, v1, v5

    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    iput v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 19
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 20
    iput v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 21
    new-instance v1, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;-><init>(IF)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 22
    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    sget-object v2, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct/range {v6 .. v13}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 23
    iput-object v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    const/4 v1, -0x1

    .line 24
    iput v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    new-array v1, v5, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 25
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-array v1, v5, [Ljava/nio/ByteBuffer;

    .line 26
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 27
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 28
    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    const-wide/16 v2, 0x64

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;-><init>(J)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 29
    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;-><init>(J)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    return-void
.end method

.method public static getAudioFormat(III)Landroid/media/AudioFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleRate",
            "channelConfig",
            "encoding"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getEncodingAndChannelConfigForPassthrough(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "audioCapabilities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/audio/AudioCapabilities;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/16 v8, 0x12

    if-eq v1, v3, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v8, :cond_2

    const/16 v9, 0x11

    if-eq v1, v9, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v7, :cond_2

    const/16 v9, 0xe

    if-ne v1, v9, :cond_1

    goto :goto_0

    :cond_1
    move v9, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v9, v5

    :goto_1
    if-nez v9, :cond_3

    return-object v0

    :cond_3
    if-ne v1, v8, :cond_4

    .line 4
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v9

    if-nez v9, :cond_4

    move v1, v6

    goto :goto_2

    :cond_4
    if-ne v1, v7, :cond_5

    .line 5
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v9

    if-nez v9, :cond_5

    move v1, v4

    .line 6
    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v9

    if-nez v9, :cond_6

    return-object v0

    :cond_6
    const/4 v9, 0x3

    if-ne v1, v8, :cond_a

    .line 7
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x1d

    if-lt p1, v10, :cond_9

    .line 8
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 9
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 10
    invoke-virtual {p1, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v9}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    move v10, v7

    :goto_3
    if-lez v10, :cond_8

    .line 13
    new-instance v11, Landroid/media/AudioFormat$Builder;

    invoke-direct {v11}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 14
    invoke-virtual {v11, v8}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 15
    invoke-virtual {v11, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 16
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 17
    invoke-virtual {v11}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v11

    .line 18
    invoke-static {v11, p1}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v2, v10

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-nez v2, :cond_b

    const-string p0, "DefaultAudioSink"

    const-string p1, "E-AC3 JOC encoding supported but no channel count supported"

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    move v2, v6

    goto :goto_5

    .line 20
    :cond_a
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 21
    iget p0, p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    if-le v2, p0, :cond_b

    return-object v0

    .line 22
    :cond_b
    :goto_5
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p1, 0x1c

    if-gt p0, p1, :cond_d

    if-ne v2, v4, :cond_c

    move v6, v7

    goto :goto_6

    :cond_c
    if-eq v2, v9, :cond_e

    const/4 p1, 0x4

    if-eq v2, p1, :cond_e

    if-ne v2, v3, :cond_d

    goto :goto_6

    :cond_d
    move v6, v2

    :cond_e
    :goto_6
    const/16 p1, 0x1a

    if-gt p0, p1, :cond_f

    .line 23
    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p1, "fugu"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    if-ne v6, v5, :cond_f

    const/4 v6, 0x2

    .line 24
    :cond_f
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->getAudioTrackChannelConfig(I)I

    move-result p0

    if-nez p0, :cond_10

    return-object v0

    .line 25
    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static isOffloadedPlayback(Landroid/media/AudioTrack;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioTrack"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final applyAudioProcessorPlaybackParametersAndSkipSilence(J)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioProcessorPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    :goto_0
    move-object v2, v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSkipSilenceEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;->applySkipSilenceEnabled(Z)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v9

    .line 6
    :goto_1
    iget-object v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v11, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide/16 v3, 0x0

    .line 7
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, v11

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 9
    invoke-virtual {v10, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    array-length v1, p1

    :goto_2
    if-ge v9, v1, :cond_3

    aget-object v2, p1, v9

    .line 13
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_2
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 17
    new-array v1, p1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 18
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flushAudioProcessors()V

    .line 20
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz p0, :cond_4

    .line 21
    check-cast p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 22
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 23
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 24
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 25
    new-instance p2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public configure(Lcom/google/android/exoplayer2/Format;I[I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputFormat",
            "specifiedBufferSize",
            "outputChannels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    .line 1
    iget-object v1, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 2
    iget v1, v2, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->isEncodingLinearPcm(I)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    iget v1, v2, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v1

    .line 4
    iget v4, v2, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 5
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v6, :cond_0

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    .line 6
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 8
    :goto_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    iget v6, v2, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v7, v2, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 9
    iput v6, v4, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimStartFrames:I

    .line 10
    iput v7, v4, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimEndFrames:I

    .line 11
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v4, v6, :cond_2

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_2

    if-nez p3, :cond_2

    const/4 v4, 0x6

    new-array v6, v4, [I

    move v7, v5

    :goto_2
    if-ge v7, v4, :cond_3

    .line 12
    aput v7, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    .line 13
    :cond_3
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    .line 14
    iput-object v6, v4, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 15
    new-instance v4, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v6, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v7, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v8, v2, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-direct {v4, v6, v7, v8}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 16
    array-length v6, v3

    move v7, v5

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, v3, v7

    .line 17
    :try_start_0
    invoke-interface {v8, v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    move-result-object v9

    .line 18
    invoke-interface {v8}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v8
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_4

    move-object v4, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)V

    throw v1

    .line 20
    :cond_5
    iget v6, v4, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 21
    iget v7, v4, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 22
    iget v8, v4, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v8

    .line 23
    iget v4, v4, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v6, v4}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v4

    move-object v11, v3

    move v9, v6

    move v3, v1

    move v6, v4

    move v4, v5

    goto :goto_5

    :cond_6
    new-array v1, v5, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 24
    iget v6, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 25
    iget-object v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {p0, p1, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->useOffloadedPlayback(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/AudioAttributes;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 26
    iget-object v7, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 27
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v8, v2, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 29
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 30
    iget v8, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v8

    goto :goto_4

    :cond_7
    const/4 v3, 0x2

    .line 31
    iget-object v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 32
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getEncodingAndChannelConfigForPassthrough(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 33
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 34
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v13, v8

    move v8, v7

    move v7, v13

    :goto_4
    move-object v11, v1

    move v9, v7

    move v7, v6

    move v6, v4

    move v4, v3

    move v3, v6

    :goto_5
    const-string v1, ") for: "

    if-eqz v9, :cond_a

    if-eqz v8, :cond_9

    .line 35
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 36
    new-instance v12, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    move-object v1, v12

    move-object v2, p1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, p2

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;-><init>(Lcom/google/android/exoplayer2/Format;IIIIIIIZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 38
    iput-object v12, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    goto :goto_6

    .line 39
    :cond_8
    iput-object v12, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    :goto_6
    return-void

    .line 40
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x36

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid output channel config (mode="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    throw v0

    .line 41
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid output encoding (mode="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    throw v0

    .line 42
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to configure passthrough for: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    throw v0
.end method

.method public disableTunneling()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    :cond_0
    return-void
.end method

.method public final drainToEndOfStream()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v3

    .line 3
    :goto_1
    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    .line 4
    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    .line 6
    :cond_1
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processBuffers(J)V

    .line 7
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 8
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0, v0, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v3

    .line 12
    :cond_4
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    return v2
.end method

.method public enableTunnelingV21()V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetSinkStateForFlush()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 12
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 13
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 15
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 16
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    if-nez v2, :cond_3

    .line 17
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    if-eqz v2, :cond_4

    .line 19
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 20
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 21
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->reset()V

    .line 22
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 23
    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;

    const-string v3, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Ljava/lang/String;Landroid/media/AudioTrack;)V

    .line 24
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 26
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    .line 27
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 28
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    return-void
.end method

.method public final flushAudioProcessors()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getAudioProcessorPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getMediaPositionParameters()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceEnded"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    if-eqz v1, :cond_0

    goto/16 :goto_10

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x3e8

    if-ne v2, v4, :cond_18

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v24

    cmp-long v2, v24, v10

    if-nez v2, :cond_1

    goto/16 :goto_7

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v13

    .line 8
    iget-wide v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    sub-long v7, v5, v7

    const-wide/16 v17, 0x7530

    cmp-long v2, v7, v17

    if-ltz v2, :cond_3

    .line 9
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    iget v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    sub-long v17, v24, v5

    aput-wide v17, v2, v7

    add-int/2addr v7, v9

    const/16 v2, 0xa

    .line 10
    rem-int/2addr v7, v2

    iput v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 11
    iget v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v7, v2, :cond_2

    add-int/2addr v7, v9

    .line 12
    iput v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 13
    :cond_2
    iput-wide v5, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 14
    iput-wide v10, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 15
    :goto_0
    iget v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v2, v7, :cond_3

    .line 16
    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    iget-object v8, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    aget-wide v17, v8, v2

    int-to-long v7, v7

    div-long v17, v17, v7

    add-long v7, v17, v10

    iput-wide v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x0

    goto :goto_0

    .line 17
    :cond_3
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v2, :cond_4

    goto/16 :goto_7

    .line 18
    :cond_4
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v7, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    const/4 v8, 0x4

    if-eqz v7, :cond_f

    iget-wide v10, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v10, v5, v10

    iget-wide v12, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_5

    goto/16 :goto_1

    .line 21
    :cond_5
    iput-wide v5, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 22
    iget-object v10, v7, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTrack:Landroid/media/AudioTrack;

    iget-object v11, v7, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v10, v11}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 23
    iget-object v11, v7, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v11, v11, Landroid/media/AudioTimestamp;->framePosition:J

    .line 24
    iget-wide v13, v7, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampRawPositionFrames:J

    cmp-long v13, v13, v11

    if-lez v13, :cond_6

    .line 25
    iget-wide v13, v7, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v17, 0x1

    add-long v13, v13, v17

    iput-wide v13, v7, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->rawTimestampFramePositionWrapCount:J

    .line 26
    :cond_6
    iput-wide v11, v7, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampRawPositionFrames:J

    .line 27
    iget-wide v13, v7, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->rawTimestampFramePositionWrapCount:J

    const/16 v17, 0x20

    shl-long v13, v13, v17

    add-long/2addr v11, v13

    iput-wide v11, v7, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampPositionFrames:J

    .line 28
    :cond_7
    iget v7, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    if-eqz v7, :cond_d

    if-eq v7, v9, :cond_b

    if-eq v7, v3, :cond_a

    if-eq v7, v4, :cond_9

    if-ne v7, v8, :cond_8

    goto :goto_2

    .line 29
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_9
    if-eqz v10, :cond_10

    .line 30
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_2

    :cond_a
    if-nez v10, :cond_10

    .line 31
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_2

    :cond_b
    if-eqz v10, :cond_c

    .line 32
    iget-object v4, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 33
    iget-wide v11, v4, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampPositionFrames:J

    .line 34
    iget-wide v13, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long v4, v11, v13

    if-lez v4, :cond_10

    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_2

    .line 36
    :cond_c
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_2

    :cond_d
    if-eqz v10, :cond_e

    .line 37
    iget-object v4, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 38
    iget-object v7, v4, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v11, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 39
    iget-wide v13, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long v7, v11, v13

    if-ltz v7, :cond_f

    .line 40
    iget-wide v11, v4, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampPositionFrames:J

    .line 41
    iput-wide v11, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 42
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_2

    .line 43
    :cond_e
    iget-wide v11, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long v11, v5, v11

    const-wide/32 v13, 0x7a120

    cmp-long v7, v11, v13

    if-lez v7, :cond_10

    .line 44
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_2

    :cond_f
    :goto_1
    const/4 v10, 0x0

    :cond_10
    :goto_2
    const-wide/32 v11, 0x4c4b40

    if-nez v10, :cond_11

    goto :goto_5

    .line 45
    :cond_11
    iget-object v4, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v4, :cond_12

    .line 46
    iget-object v7, v4, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v13, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v17, 0x3e8

    div-long v13, v13, v17

    move-wide/from16 v20, v13

    goto :goto_3

    :cond_12
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    if-eqz v4, :cond_13

    .line 47
    iget-wide v13, v4, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampPositionFrames:J

    goto :goto_4

    :cond_13
    const-wide/16 v13, -0x1

    :goto_4
    sub-long v17, v20, v5

    .line 48
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    cmp-long v4, v17, v11

    if-lez v4, :cond_14

    .line 49
    iget-object v4, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    move-object/from16 v17, v4

    move-wide/from16 v18, v13

    move-wide/from16 v22, v5

    invoke-interface/range {v17 .. v25}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 50
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_5

    .line 51
    :cond_14
    invoke-virtual {v1, v13, v14}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v17

    sub-long v17, v17, v24

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    cmp-long v4, v17, v11

    if-lez v4, :cond_15

    .line 52
    iget-object v4, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    move-object/from16 v17, v4

    move-wide/from16 v18, v13

    move-wide/from16 v22, v5

    invoke-interface/range {v17 .. v25}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 53
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_5

    .line 54
    :cond_15
    iget v4, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    if-ne v4, v8, :cond_16

    .line 55
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 56
    :cond_16
    :goto_5
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_18

    iget-wide v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    sub-long v7, v5, v7

    const-wide/32 v13, 0x7a120

    cmp-long v4, v7, v13

    if-ltz v4, :cond_18

    .line 57
    :try_start_0
    iget-object v4, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 58
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v2, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v13, v2

    const-wide/16 v17, 0x3e8

    mul-long v13, v13, v17

    iget-wide v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    sub-long/2addr v13, v7

    iput-wide v13, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/16 v7, 0x0

    .line 60
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    cmp-long v2, v13, v11

    if-lez v2, :cond_17

    .line 61
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v2, v13, v14}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onInvalidLatency(J)V

    const-wide/16 v7, 0x0

    .line 62
    iput-wide v7, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v2, 0x0

    .line 63
    iput-object v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 64
    :cond_17
    :goto_6
    iput-wide v5, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    .line 65
    :cond_18
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 66
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 67
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget v6, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    if-ne v6, v3, :cond_19

    move v12, v9

    goto :goto_8

    :cond_19
    const/4 v12, 0x0

    :goto_8
    if-eqz v12, :cond_1c

    .line 69
    iget-object v3, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v3, :cond_1a

    .line 70
    iget-wide v7, v3, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampPositionFrames:J

    goto :goto_9

    :cond_1a
    const-wide/16 v7, -0x1

    .line 71
    :goto_9
    invoke-virtual {v1, v7, v8}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v6

    .line 72
    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v2, :cond_1b

    .line 73
    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v2, v2, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    move-wide v15, v2

    goto :goto_a

    :cond_1b
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    :goto_a
    sub-long v2, v4, v15

    .line 74
    iget v8, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 75
    invoke-static {v2, v3, v8}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v2

    add-long/2addr v2, v6

    goto :goto_c

    .line 76
    :cond_1c
    iget v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-nez v2, :cond_1d

    .line 77
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v2

    goto :goto_b

    .line 78
    :cond_1d
    iget-wide v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-long/2addr v2, v4

    :goto_b
    if-nez p1, :cond_1e

    .line 79
    iget-wide v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 80
    :cond_1e
    :goto_c
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    if-eq v6, v12, :cond_1f

    .line 81
    iget-wide v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 82
    iget-wide v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    iput-wide v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    .line 83
    :cond_1f
    iget-wide v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    sub-long v6, v4, v6

    const-wide/32 v10, 0xf4240

    cmp-long v8, v6, v10

    if-gez v8, :cond_20

    .line 84
    iget-wide v13, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    iget v8, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 85
    invoke-static {v6, v7, v8}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v15

    add-long/2addr v15, v13

    const-wide/16 v13, 0x3e8

    mul-long/2addr v6, v13

    .line 86
    div-long/2addr v6, v10

    mul-long/2addr v2, v6

    sub-long v6, v13, v6

    mul-long/2addr v6, v15

    add-long/2addr v6, v2

    .line 87
    div-long v2, v6, v13

    .line 88
    :cond_20
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    if-nez v6, :cond_22

    iget-wide v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_22

    .line 89
    iput-boolean v9, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    sub-long v6, v2, v6

    .line 90
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    .line 91
    iget v8, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 92
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-nez v9, :cond_21

    goto :goto_d

    :cond_21
    long-to-double v6, v6

    float-to-double v8, v8

    div-double/2addr v6, v8

    .line 93
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 94
    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    sub-long/2addr v8, v6

    .line 95
    iget-object v6, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v6, v8, v9}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onPositionAdvancing(J)V

    .line 96
    :cond_22
    iput-wide v4, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 97
    iput-wide v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    .line 98
    iput-boolean v12, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    .line 99
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 100
    :goto_e
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 101
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_23

    .line 102
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_e

    .line 103
    :cond_23
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long v4, v1, v4

    .line 104
    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    sget-object v6, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 105
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v1, v4

    goto :goto_f

    .line 106
    :cond_24
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 107
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

    .line 108
    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;->getMediaDuration(J)J

    move-result-wide v1

    .line 109
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v1, v3

    goto :goto_f

    .line 110
    :cond_25
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 111
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 112
    iget-wide v4, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long/2addr v4, v1

    .line 113
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v1, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 114
    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v1

    .line 115
    iget-wide v3, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    sub-long v1, v3, v1

    .line 116
    :goto_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

    .line 117
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;->getSkippedOutputFrameCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3

    :cond_26
    :goto_10
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getFormatSupport(Lcom/google/android/exoplayer2/Format;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    const/16 p1, 0x21

    const-string v0, "Invalid PCM encoding: "

    const-string v1, "DefaultAudioSink"

    invoke-static {p1, v0, p0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;)V

    return v2

    .line 4
    :cond_0
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-eq p1, v3, :cond_2

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v3

    .line 5
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->useOffloadedPlayback(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 6
    :cond_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 7
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getEncodingAndChannelConfigForPassthrough(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    if-eqz v1, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public final getMediaPositionParameters()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    :goto_0
    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioProcessorPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getMediaPositionParameters()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->skipSilence:Z

    return p0
.end method

.method public final getWrittenFrames()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget p0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v3, p0

    div-long/2addr v1, v3

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :goto_0
    return-wide v1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "presentationTimeUs",
            "encodedAccessUnitCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 1
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v5, :cond_7

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    .line 4
    :cond_2
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v11, v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v12, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne v11, v12, :cond_3

    iget v11, v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v12, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    if-ne v11, v12, :cond_3

    iget v11, v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v12, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    if-ne v11, v12, :cond_3

    iget v11, v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v12, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    if-ne v11, v12, :cond_3

    iget v10, v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    if-ne v10, v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    if-nez v5, :cond_5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playPendingData()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v5

    if-eqz v5, :cond_4

    return v7

    .line 8
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    goto :goto_3

    .line 9
    :cond_5
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iput-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 10
    iput-object v9, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 11
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    if-eq v5, v8, :cond_6

    .line 12
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    .line 13
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v10, v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v11, v10, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v10, v10, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v5, v11, v10}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 14
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 15
    :cond_6
    :goto_3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 16
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v5

    if-nez v5, :cond_9

    .line 17
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializeAudioTrack()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 18
    iget-boolean v0, v2, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    if-nez v0, :cond_8

    .line 19
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    return v7

    .line 20
    :cond_8
    throw v2

    .line 21
    :cond_9
    :goto_4
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 22
    iput-object v9, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    .line 23
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_b

    .line 24
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 25
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 26
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    .line 27
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    if-eqz v5, :cond_a

    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v5, v11, :cond_a

    .line 28
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 29
    :cond_a
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 30
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    if-eqz v5, :cond_b

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->play()V

    .line 32
    :cond_b
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v11

    .line 33
    iget-object v13, v5, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 34
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v13}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v13

    .line 36
    iget-boolean v14, v5, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const/4 v15, 0x2

    if-eqz v14, :cond_d

    if-ne v13, v15, :cond_c

    .line 37
    iput-boolean v7, v5, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    goto :goto_5

    :cond_c
    if-ne v13, v6, :cond_d

    .line 38
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v16

    cmp-long v9, v16, v9

    if-nez v9, :cond_d

    :goto_5
    move v5, v7

    goto :goto_6

    .line 39
    :cond_d
    iget-boolean v9, v5, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    .line 40
    invoke-virtual {v5, v11, v12}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v10

    iput-boolean v10, v5, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    if-eqz v9, :cond_e

    if-nez v10, :cond_e

    if-eq v13, v6, :cond_e

    .line 41
    iget-object v9, v5, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    iget v10, v5, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    iget-wide v11, v5, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onUnderrun(IJ)V

    :cond_e
    move v5, v6

    :goto_6
    if-nez v5, :cond_f

    return v7

    .line 42
    :cond_f
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_28

    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v9, :cond_10

    move v5, v6

    goto :goto_7

    :cond_10
    move v5, v7

    :goto_7
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_11

    return v6

    .line 45
    :cond_11
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v9, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v9, :cond_20

    iget v9, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v9, :cond_20

    .line 46
    iget v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    const/16 v9, 0x400

    const/4 v10, -0x1

    const/16 v11, 0x10

    const/4 v12, -0x2

    packed-switch v5, :pswitch_data_0

    .line 47
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x26

    const-string v2, "Unexpected audio encoding: "

    invoke-static {v1, v2, v5}, Landroidx/cardview/R$style$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-array v5, v11, [B

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 49
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    new-instance v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v8, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    invoke-static {v8}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    move-result-object v5

    iget v9, v5, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    goto/16 :goto_14

    :pswitch_2
    const/16 v9, 0x200

    goto/16 :goto_14

    .line 52
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/lit8 v8, v8, -0xa

    move v9, v5

    :goto_8
    if-gt v9, v8, :cond_14

    add-int/lit8 v12, v9, 0x4

    .line 54
    sget v13, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 55
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    .line 56
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v13

    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v13, v14, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {v12}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v12

    :goto_9
    and-int/lit8 v12, v12, -0x2

    const v13, -0x78d9046

    if-ne v12, v13, :cond_13

    sub-int/2addr v9, v5

    goto :goto_a

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_14
    move v9, v10

    :goto_a
    if-ne v9, v10, :cond_15

    move v9, v7

    goto/16 :goto_14

    .line 57
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xbb

    if-ne v5, v8, :cond_16

    move v5, v6

    goto :goto_b

    :cond_16
    move v5, v7

    :goto_b
    const/16 v8, 0x28

    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v9

    if-eqz v5, :cond_17

    const/16 v5, 0x9

    goto :goto_c

    :cond_17
    const/16 v5, 0x8

    :goto_c
    add-int/2addr v10, v5

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x7

    shl-int v5, v8, v5

    mul-int/2addr v5, v11

    goto/16 :goto_13

    :pswitch_4
    const/16 v9, 0x800

    goto/16 :goto_14

    .line 59
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sget v8, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 60
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_18

    goto :goto_d

    :cond_18
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 62
    :goto_d
    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->parseMpegAudioFrameSampleCount(I)I

    move-result v9

    if-eq v9, v10, :cond_19

    goto/16 :goto_14

    .line 63
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 65
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-eq v8, v12, :cond_1c

    if-eq v8, v10, :cond_1b

    const/16 v9, 0x1f

    if-eq v8, v9, :cond_1a

    add-int/lit8 v8, v5, 0x4

    .line 66
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v6

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_f

    :cond_1a
    add-int/lit8 v8, v5, 0x5

    .line 67
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_e

    :cond_1b
    add-int/lit8 v8, v5, 0x4

    .line 68
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_e
    and-int/lit8 v5, v5, 0x3c

    goto :goto_10

    :cond_1c
    add-int/lit8 v8, v5, 0x5

    .line 69
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v6

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_f
    and-int/lit16 v5, v5, 0xfc

    :goto_10
    shr-int/2addr v5, v15

    or-int/2addr v5, v8

    add-int/2addr v5, v6

    mul-int/lit8 v9, v5, 0x20

    goto :goto_14

    .line 70
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xf8

    shr-int/2addr v5, v8

    const/16 v9, 0xa

    if-le v5, v9, :cond_1d

    move v5, v6

    goto :goto_11

    :cond_1d
    move v5, v7

    :goto_11
    if-eqz v5, :cond_1f

    .line 71
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v5, v5, 0x6

    if-ne v5, v8, :cond_1e

    goto :goto_12

    .line 72
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v8, v5, 0x4

    .line 73
    :goto_12
    sget-object v5, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v5, v5, v8

    mul-int/lit16 v5, v5, 0x100

    goto :goto_13

    :cond_1f
    const/16 v5, 0x600

    :goto_13
    move v9, v5

    .line 74
    :goto_14
    :pswitch_8
    iput v9, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v9, :cond_20

    return v6

    .line 75
    :cond_20
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v5, :cond_22

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_21

    return v7

    .line 77
    :cond_21
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    const/4 v5, 0x0

    .line 78
    iput-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 79
    :cond_22
    iget-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 80
    iget v10, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v10, :cond_23

    .line 81
    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget v12, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    goto :goto_15

    .line 82
    :cond_23
    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 83
    :goto_15
    iget-object v12, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    .line 84
    iget-wide v12, v12, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    mul-long/2addr v10, v12

    .line 85
    iget-object v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v12, v5

    div-long/2addr v10, v12

    add-long/2addr v10, v8

    .line 86
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-nez v5, :cond_24

    sub-long v8, v10, v2

    .line 87
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v12, 0x30d40

    cmp-long v5, v8, v12

    if-lez v5, :cond_24

    .line 88
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    new-instance v8, Lcom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;

    invoke-direct {v8, v2, v3, v10, v11}, Lcom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    check-cast v5, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 89
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 90
    :cond_24
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-eqz v5, :cond_26

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_25

    return v7

    :cond_25
    sub-long v8, v2, v10

    .line 92
    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    add-long/2addr v10, v8

    iput-wide v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 93
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 95
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v5, :cond_26

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_26

    .line 96
    check-cast v5, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 97
    iget-object v5, v5, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 98
    iput-boolean v6, v5, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 99
    :cond_26
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v5, :cond_27

    .line 100
    iget-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto :goto_16

    .line 101
    :cond_27
    iget-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    mul-int/2addr v5, v4

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 102
    :goto_16
    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 103
    iput v4, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 104
    :cond_28
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processBuffers(J)V

    .line 105
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 106
    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 107
    iput v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    return v6

    .line 108
    :cond_29
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    .line 109
    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2a

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2a

    move v0, v6

    goto :goto_17

    :cond_2a
    move v0, v7

    :goto_17
    if-eqz v0, :cond_2b

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    .line 111
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    return v6

    :cond_2b
    return v7

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public handleDiscontinuity()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    return-void
.end method

.method public hasPendingData()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initializeAudioTrack()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 5
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->buildAudioTrack(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    if-nez v2, :cond_0

    .line 10
    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 12
    iget-object v3, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {v1, v4, v2}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 13
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 16
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v4, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;ZIII)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->effectId:I

    if-eqz v1, :cond_3

    .line 19
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->sendLevel:F

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 21
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    return-void

    :catch_0
    move-exception v1

    .line 22
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 24
    :goto_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz p0, :cond_5

    .line 25
    check-cast p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 26
    :cond_5
    throw v1
.end method

.method public final isAudioTrackInitialized()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasPendingData()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public pause()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 4
    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 5
    iput v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 6
    iput-wide v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 7
    iput-wide v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 8
    iput-wide v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 9
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    .line 10
    iget-wide v2, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 11
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final playPendingData()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 6
    iput-wide v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playPendingData()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    :cond_0
    return-void
.end method

.method public final processBuffers(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avSyncPresentationTimeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    if-lez v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 6
    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    if-le v1, v4, :cond_3

    .line 7
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 8
    :cond_3
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 10
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 5
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    return-void
.end method

.method public final resetSinkStateForFlush()V
    .locals 12

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 6
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 7
    new-instance v11, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioProcessorPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v4

    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSkipSilenceEnabled()Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    iput-object v11, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 10
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    const/4 v3, 0x0

    .line 11
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 12
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 13
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 14
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 15
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 16
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 17
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    const/4 v4, -0x1

    .line 18
    iput v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 19
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 20
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    .line 22
    iput-wide v0, v2, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flushAudioProcessors()V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioAttributes"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    return-void
.end method

.method public final setAudioProcessorPlaybackParametersAndSkipSilence(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playbackParameters",
            "skipSilence"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getMediaPositionParameters()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->skipSilence:Z

    if-eq p2, v0, :cond_2

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    .line 6
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    :cond_2
    :goto_0
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSessionId"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    :cond_1
    return-void
.end method

.method public final setAudioTrackPlaybackParametersV23(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioTrackPlaybackParameters"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 5
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DefaultAudioSink"

    const-string v1, "Failed to set playback params"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    iget v1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 12
    iput v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 13
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auxEffectInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->effectId:I

    .line 3
    iget v1, p1, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->sendLevel:F

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->effectId:I

    if-eq v3, v0, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    return-void
.end method

.method public setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
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
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v1

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 4
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableAudioTrackPlaybackParams:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSkipSilenceEnabled()Z

    move-result p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setAudioProcessorPlaybackParametersAndSkipSilence(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    :goto_0
    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skipSilenceEnabled"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioProcessorPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setAudioProcessorPlaybackParametersAndSkipSilence(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternal()V

    :cond_0
    return-void
.end method

.method public final setVolumeInternal()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 4
    invoke-virtual {v0, p0}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 6
    invoke-virtual {v0, p0, p0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :goto_0
    return-void
.end method

.method public final shouldApplyAudioProcessorPlaybackParameters()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/raw"

    .line 2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 3
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getFormatSupport(Lcom/google/android/exoplayer2/Format;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final useOffloadedPlayback(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/AudioAttributes;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "audioAttributes"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_9

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    if-nez v2, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 6
    :cond_2
    iget v4, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-static {v4, v3, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 8
    invoke-static {v2, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    .line 9
    :cond_3
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    const/4 v2, 0x1

    if-nez p2, :cond_5

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v1

    goto :goto_1

    :cond_5
    :goto_0
    move p1, v2

    .line 10
    :goto_1
    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    if-ne p0, v2, :cond_6

    move p0, v2

    goto :goto_2

    :cond_6
    move p0, v1

    :goto_2
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    const/16 p0, 0x1e

    if-lt v0, p0, :cond_7

    .line 11
    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string p1, "Pixel"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v2

    goto :goto_3

    :cond_7
    move p0, v1

    :goto_3
    if-nez p0, :cond_8

    return v1

    :cond_8
    return v2

    :cond_9
    :goto_4
    return v1
.end method

.method public final writeBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "avSyncPresentationTimeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    goto :goto_1

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 5
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 7
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 8
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 10
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 14
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v4, v1, :cond_6

    .line 15
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 16
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v7

    iget p3, p2, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    int-to-long v9, p3

    mul-long/2addr v7, v9

    sub-long/2addr v5, v7

    long-to-int p3, v5

    .line 17
    iget p2, p2, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_c

    .line 18
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 19
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 20
    invoke-virtual {p3, v1, v5, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_10

    .line 21
    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    .line 23
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v1, :cond_f

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v5

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_2

    :cond_7
    move v1, v3

    .line 24
    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 25
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    const-wide/16 v7, 0x3e8

    const/16 v1, 0x1a

    if-lt v4, v1, :cond_8

    const/4 v9, 0x1

    mul-long v10, p2, v7

    move-object v7, p1

    move v8, v0

    .line 26
    invoke-virtual/range {v6 .. v11}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p2

    goto :goto_3

    .line 27
    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_9

    const/16 v1, 0x10

    .line 28
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 29
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 30
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    :cond_9
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    if-nez v1, :cond_a

    .line 32
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 33
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    mul-long/2addr p2, v7

    invoke-virtual {v1, v5, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 34
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 36
    :cond_a
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_d

    .line 37
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v6, p3, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_b

    .line 39
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    move p2, p3

    goto :goto_3

    :cond_b
    if-ge p3, p2, :cond_d

    :cond_c
    move p2, v3

    goto :goto_3

    .line 40
    :cond_d
    invoke-virtual {v6, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_e

    .line 41
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    goto :goto_3

    .line 42
    :cond_e
    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    goto :goto_3

    .line 43
    :cond_f
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 44
    invoke-virtual {p2, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    .line 45
    :cond_10
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    if-gez p2, :cond_18

    const/16 p1, 0x18

    if-lt v4, p1, :cond_11

    const/4 p1, -0x6

    if-eq p2, p1, :cond_12

    :cond_11
    const/16 p1, -0x20

    if-ne p2, p1, :cond_13

    :cond_12
    move v3, v2

    :cond_13
    if-eqz v3, :cond_15

    .line 46
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_4

    .line 47
    :cond_14
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 48
    :cond_15
    :goto_4
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object p3, p3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p1, p2, p3, v3}, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;-><init>(ILcom/google/android/exoplayer2/Format;Z)V

    .line 49
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz p2, :cond_16

    .line 50
    check-cast p2, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 51
    :cond_16
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    if-nez p2, :cond_17

    .line 52
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    return-void

    .line 53
    :cond_17
    throw p1

    .line 54
    :cond_18
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    const/4 v1, 0x0

    .line 55
    iput-object v1, p3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    .line 56
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 57
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-lez p3, :cond_19

    .line 58
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 59
    :cond_19
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    if-eqz p3, :cond_1a

    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz p3, :cond_1a

    if-ge p2, v0, :cond_1a

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    if-nez p3, :cond_1a

    .line 60
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    .line 61
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p3, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v4

    .line 62
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    check-cast p3, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 63
    iget-object p3, p3, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 64
    iget-object p3, p3, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->wakeupListener:Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    if-eqz p3, :cond_1a

    .line 65
    invoke-interface {p3, v4, v5}, Lcom/google/android/exoplayer2/Renderer$WakeupListener;->onSleep(J)V

    .line 66
    :cond_1a
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget p3, p3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez p3, :cond_1b

    .line 67
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    :cond_1b
    if-ne p2, v0, :cond_1e

    if-eqz p3, :cond_1d

    .line 68
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_1c

    goto :goto_5

    :cond_1c
    move v2, v3

    :goto_5
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 69
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    mul-int/2addr p3, v0

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 70
    :cond_1d
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    :cond_1e
    return-void
.end method
