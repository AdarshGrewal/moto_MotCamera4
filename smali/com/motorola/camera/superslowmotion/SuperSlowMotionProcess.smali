.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;
.super Ljava/lang/Object;
.source "SuperSlowMotionProcess.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;,
        Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperSlowMotionProcess.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperSlowMotionProcess.kt\ncom/motorola/camera/superslowmotion/SuperSlowMotionProcess\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,429:1\n1#2:430\n*E\n"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public activeTracks:I

.field public baseFrameRate:I

.field public context:Landroid/content/Context;

.field public final decoderCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

.field public final eventHandler:Landroid/os/Handler;

.field public final handlerThread:Landroid/os/HandlerThread;

.field public mediaExtractor:Landroid/media/MediaExtractor;

.field public mediaMuxer:Landroid/media/MediaMuxer;

.field public orientationHint:I

.field public final processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

.field public final slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

.field public final superSlowMotionEnd:J

.field public final superSlowMotionStart:J

.field public tempFile:Ljava/io/File;

.field public tempFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public transcodeStatus:I

.field public final trimEnd:J

.field public final trimStart:J

.field public videoDecoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

.field public videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

.field public videoTrack:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;JJJJLcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;)V
    .locals 1

    const-string/jumbo v0, "slowMotionData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 3
    iput-wide p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimStart:J

    .line 4
    iput-wide p5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimEnd:J

    .line 5
    iput-wide p7, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionStart:J

    .line 6
    iput-wide p9, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionEnd:J

    .line 7
    iput-object p11, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    .line 9
    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->handlerThread:Landroid/os/HandlerThread;

    .line 10
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    .line 12
    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;)V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->decoderCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    return-void
.end method


# virtual methods
.method public final abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 3
    :cond_1
    sget-object p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    const-string v0, "abortProcess: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->cleanUpFiles()V

    .line 6
    iput v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    invoke-interface {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;->onProcessingError()V

    return-void
.end method

.method public final cleanUpFiles()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFile:Ljava/io/File;

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-void
.end method

.method public final configureEncoderOutputFormat(Lcom/motorola/camera/mediacodec/MediaCodecHelper;)Landroid/media/MediaFormat;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    const-string p1, "mime"

    const-string/jumbo v0, "video/avc"

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bitrate"

    const v1, 0x2625a00

    .line 3
    invoke-virtual {p0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "frame-rate"

    const/16 v1, 0x1e

    .line 4
    invoke-virtual {p0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "i-frame-interval"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "bitrate-mode"

    .line 6
    invoke-virtual {p0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7
    invoke-static {v0}, Lcom/motorola/camera/mediacodec/CodecUtil;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/mediacodec/CodecUtil;->getProfileLevel(Ljava/lang/String;Landroid/media/MediaCodecInfo;)I

    move-result p1

    const-string v0, "level"

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "height"

    .line 9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const-string/jumbo v0, "slice-height"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-bframes"

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoDecoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    .line 5
    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoDecoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 8
    :goto_3
    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 9
    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->deinitFrc()V

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    :cond_4
    return-void
.end method
