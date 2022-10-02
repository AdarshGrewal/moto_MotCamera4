.class public final Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;


# instance fields
.field public final asynchronousMediaCodecCallback:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

.field public final bufferEnqueuer:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

.field public final codec:Landroid/media/MediaCodec;

.field public codecReleased:Z

.field public state:I

.field public final synchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 3
    new-instance p6, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    invoke-direct {p6, p2}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;-><init>(Landroid/os/HandlerThread;)V

    iput-object p6, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    .line 4
    new-instance p2, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Z)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 5
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->synchronizeCodecInteractionsWithQueueing:Z

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    return-void
.end method

.method public static access$100(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v2, Landroid/os/Handler;

    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 6
    iput-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    const-string v0, "configureCodec"

    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 9
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 11
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance p2, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;

    iget-object p3, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    .line 14
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;-><init>(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Landroid/os/Looper;)V

    iput-object p2, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    .line 15
    iput-boolean v3, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    :cond_1
    const-string/jumbo p1, "startCodec"

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 18
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 19
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    return-void
.end method

.method public static createThreadLabel(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trackType",
            "prefix"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v1, :cond_3

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->remove()I

    move-result v2

    :goto_1
    monitor-exit v0

    :goto_2
    return v2

    .line 10
    :cond_3
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 11
    throw v1

    .line 12
    :cond_4
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 13
    throw v1

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferInfo"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v1, :cond_6

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    .line 8
    iget v3, v1, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 9
    monitor-exit v0

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->remove()I

    move-result v2

    if-ltz v2, :cond_3

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCodec$BufferInfo;

    .line 13
    iget v4, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_1

    :cond_3
    const/4 p1, -0x2

    if-ne v2, p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    .line 15
    :cond_4
    :goto_1
    monitor-exit v0

    :goto_2
    return v2

    .line 16
    :cond_5
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 17
    throw v1

    .line 18
    :cond_6
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 19
    throw v1

    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flush()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Landroid/media/MediaCodec;)V

    .line 4
    iget-object p0, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v2, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    .line 6
    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    new-instance v3, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    if-eqz p0, :cond_0

    .line 4
    monitor-exit v0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeBlockOnQueueing()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->synchronizeCodecInteractionsWithQueueing:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->blockUntilHandlerThreadIsIdle()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public needsReconfiguration()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "offset",
            "size",
            "presentationTimeUs",
            "flags"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->getMessageParams()Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    move-result-object v0

    .line 4
    iput p1, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    .line 5
    iput p2, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    .line 6
    iput p3, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->size:I

    .line 7
    iput-wide p4, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    .line 8
    iput p6, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    .line 9
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queueSecureInputBuffer(IILcom/google/android/exoplayer2/decoder/CryptoInfo;JI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "offset",
            "info",
            "presentationTimeUs",
            "flags"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->getMessageParams()Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    move-result-object v0

    .line 4
    iput p1, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    .line 5
    iput p2, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    const/4 p1, 0x0

    .line 6
    iput p1, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->size:I

    .line 7
    iput-wide p4, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    .line 8
    iput p6, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    .line 9
    iget-object p1, v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 10
    iget p2, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iput p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 11
    iget-object p2, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 12
    invoke-static {p2, p4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([I[I)[I

    move-result-object p2

    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 13
    iget-object p2, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 14
    invoke-static {p2, p4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([I[I)[I

    move-result-object p2

    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 15
    iget-object p2, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-static {p2, p4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([B[B)[B

    move-result-object p2

    .line 16
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 18
    iget-object p2, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-static {p2, p4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([B[B)[B

    move-result-object p2

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 21
    iget p2, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    iput p2, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 22
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p4, 0x18

    if-lt p2, p4, :cond_0

    .line 23
    new-instance p2, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget p4, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->encryptedBlocks:I

    iget p3, p3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->clearBlocks:I

    invoke-direct {p2, p4, p3}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    if-ne v1, v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 3
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flush()V

    .line 5
    iget-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    .line 8
    iget-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    .line 10
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    .line 12
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 13
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    if-nez v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 16
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    .line 17
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    if-nez v2, :cond_3

    .line 18
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 19
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    .line 20
    :cond_3
    throw v1
.end method

.method public releaseOutputBuffer(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "renderTimeStampNs"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "render"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public setOnFrameRenderedListener(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "handler"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalingMode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method
