.class public Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;
.super Ljava/lang/Object;
.source "MediaCodecEngine.java"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mediacodec/MediaCodecEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncoderCallback"
.end annotation


# instance fields
.field public final mAudioRecorder:Landroid/media/AudioRecord;

.field public mAudioTimestamp:Ljava/lang/Long;

.field public mTrack:I

.field public final synthetic this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Landroid/media/AudioRecord;)V
    .locals 2

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    .line 8
    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public final getTimestampWithPause(J)Ljava/lang/Long;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    const-wide/16 v2, 0x3e8

    .line 4
    div-long/2addr v0, v2

    :goto_0
    sub-long/2addr p1, v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public handleError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string v0, "MediaCodecEngine"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 4
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method

.method public handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 4
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string p1, "MediaCodecEngine"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 13

    .line 1
    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    const-wide/16 v2, 0x3e8

    const-string v4, "MediaCodecEngine"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_4

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 3
    iget-boolean v7, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz v7, :cond_0

    return-object v6

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v4, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/media/Image;

    if-nez v4, :cond_1

    return-object v6

    .line 7
    :cond_1
    iget-object v6, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 8
    iget-object v6, v6, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 9
    iget-object v6, v6, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 11
    new-instance p0, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {p0}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    return-object p0

    :cond_2
    const/4 v0, 0x1

    .line 12
    invoke-static {v4, p1, v0, v5, v5}, Lcom/motorola/camera/mcf/MotUtil;->copyImageToByteBuffer(Landroid/media/Image;Ljava/nio/ByteBuffer;ZZI)I

    move-result v8

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->getTimestampWithPause(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 14
    iget-object p0, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 15
    :cond_3
    new-instance p0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 16
    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 17
    new-instance v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v0}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    .line 18
    invoke-virtual {v0, p0}, Lcom/motorola/camera/mediacodec/BufferChunk;->setBufInfo(Landroid/media/MediaCodec$BufferInfo;)V

    .line 19
    iput-object p1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    return-object v0

    .line 20
    :catch_0
    sget-object p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string p0, "Unable to get input image"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_4
    if-nez p1, :cond_5

    .line 21
    sget-object p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string p0, "Expecting valid buffer to fill"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 22
    :cond_5
    iget-object v7, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 23
    iget v7, v7, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    .line 24
    invoke-virtual {v1, p1, v7}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 25
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 26
    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 27
    iput v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 28
    iget-object v8, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const-wide/32 v9, 0xf4240

    if-nez v8, :cond_7

    .line 29
    new-instance v8, Landroid/media/AudioTimestamp;

    invoke-direct {v8}, Landroid/media/AudioTimestamp;-><init>()V

    .line 30
    iget-object v11, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v11, v8, v5}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    move-result v5

    if-eqz v5, :cond_6

    .line 31
    sget-object p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string p0, "Unable to get timestamp - error code:"

    invoke-static {p0, v5, v4}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-object v6

    .line 32
    :cond_6
    iget-wide v4, v8, Landroid/media/AudioTimestamp;->framePosition:J

    mul-long/2addr v4, v9

    .line 33
    iget-object v6, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 34
    iget-object v6, v6, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 35
    iget v6, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    int-to-long v11, v6

    div-long/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    div-long/2addr v11, v2

    sub-long/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    .line 38
    :cond_7
    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 39
    iget-object v2, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 40
    iget v3, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    mul-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    int-to-long v5, v1

    .line 41
    div-long/2addr v5, v3

    mul-long/2addr v5, v9

    .line 42
    iget v1, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    int-to-long v1, v1

    div-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 44
    new-instance v3, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v3}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    .line 45
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 46
    iget-object v4, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 47
    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 48
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    goto :goto_0

    .line 49
    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->getTimestampWithPause(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 50
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    .line 51
    iput-object p1, v3, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v3, v7}, Lcom/motorola/camera/mediacodec/BufferChunk;->setBufInfo(Landroid/media/MediaCodec$BufferInfo;)V

    :goto_0
    return-object v3
.end method

.method public handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 7
    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 8
    invoke-virtual {v3}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 10
    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 11
    iget p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    invoke-virtual {v3, p0, v1, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 12
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 13
    invoke-virtual {p1, p0}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void
.end method
