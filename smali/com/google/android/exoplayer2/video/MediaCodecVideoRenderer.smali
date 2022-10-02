.class public Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field public static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field public static deviceNeedsSetOutputSurfaceWorkaround:Z

.field public static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field public final allowedJoiningTimeMs:J

.field public buffersInCodecCount:I

.field public codecHandlesHdr10PlusOutOfBandMetadata:Z

.field public codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

.field public codecNeedsSetOutputSurfaceWorkaround:Z

.field public consecutiveDroppedFrameCount:I

.field public final context:Landroid/content/Context;

.field public currentHeight:I

.field public currentPixelWidthHeightRatio:F

.field public currentUnappliedRotationDegrees:I

.field public currentWidth:I

.field public final deviceNeedsNoPostProcessWorkaround:Z

.field public droppedFrameAccumulationStartTimeMs:J

.field public droppedFrames:I

.field public dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

.field public final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field public frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field public final frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

.field public haveReportedFirstFrameRenderedForCurrentSurface:Z

.field public initialPositionUs:J

.field public joiningDeadlineMs:J

.field public lastBufferPresentationTimeUs:J

.field public lastRenderRealtimeUs:J

.field public final maxDroppedFramesToNotify:I

.field public mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field public renderedFirstFrameAfterEnable:Z

.field public renderedFirstFrameAfterReset:Z

.field public reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field public scalingMode:I

.field public surface:Landroid/view/Surface;

.field public totalVideoFrameProcessingOffsetUs:J

.field public tunneling:Z

.field public tunnelingAudioSessionId:I

.field public tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field public videoFrameProcessingOffsetCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mediaCodecSelector",
            "allowedJoiningTimeMs",
            "enableDecoderFallback",
            "eventHandler",
            "eventListener",
            "maxDroppedFramesToNotify"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    const/4 v1, 0x2

    const/high16 v5, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v3, p2

    move v4, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZF)V

    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    .line 4
    iput p8, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p6, p7}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 8
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string p2, "NVIDIA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 12
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 13
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-void
.end method

.method public static getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "format"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 2
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    if-ne v1, v2, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video/dolby-vision"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const-string/jumbo v6, "video/hevc"

    const/4 v7, 0x1

    const-string/jumbo v8, "video/avc"

    if-eqz v4, :cond_3

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_1

    if-eq p1, v7, :cond_1

    if-ne p1, v5, :cond_2

    :cond_1
    move-object v3, v8

    goto :goto_0

    :cond_2
    move-object v3, v6

    .line 7
    :cond_3
    :goto_0
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x3

    const/4 v9, 0x4

    sparse-switch p1, :sswitch_data_0

    :goto_1
    move v7, v2

    goto :goto_2

    :sswitch_0
    const-string/jumbo p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_1
    const-string/jumbo p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v7, v9

    goto :goto_2

    :sswitch_2
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v7, v4

    goto :goto_2

    :sswitch_3
    const-string/jumbo p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v7, v5

    goto :goto_2

    :sswitch_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :sswitch_5
    const-string/jumbo p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :cond_9
    :goto_2
    packed-switch v7, :pswitch_data_0

    return v2

    .line 8
    :pswitch_0
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "Amazon"

    .line 9
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "KFSOWI"

    .line 10
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "AFTS"

    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    const/16 p0, 0x10

    .line 12
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int/2addr v0, p1

    mul-int/2addr v0, p0

    mul-int/2addr v0, p0

    goto :goto_4

    :cond_b
    :goto_3
    return v2

    :pswitch_1
    mul-int/2addr v0, v1

    goto :goto_5

    :pswitch_2
    mul-int/2addr v0, v1

    :goto_4
    move v9, v5

    :goto_5
    mul-int/2addr v0, v4

    mul-int/2addr v9, v5

    .line 13
    div-int/2addr v0, v9

    return v0

    :cond_c
    :goto_6
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaCodecSelector",
            "format",
            "requiresSecureDecoder",
            "requiresTunnelingDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    const-string/jumbo v1, "video/dolby-vision"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-ne p1, v0, :cond_3

    const-string/jumbo p1, "video/avc"

    .line 11
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 12
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo p1, "video/hevc"

    .line 13
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 14
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    :cond_3
    :goto_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "format"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 3
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result p0

    return p0
.end method

.method public static isBufferLate(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "earlyUs"
        }
    .end annotation

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "oldFormat",
            "newFormat"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    .line 3
    iget v2, p3, Lcom/google/android/exoplayer2/Format;->width:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v4, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v2, v4, :cond_0

    iget v2, p3, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-le v2, v3, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 4
    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-le v2, p0, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    move v7, v1

    .line 5
    new-instance p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_3
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    :goto_0
    move v6, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object p0
.end method

.method public final clearRenderedFirstFrame()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_0
    return-void
.end method

.method public codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string p0, "OMX.google"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    .line 2
    :cond_0
    const-class p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-boolean v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_9a

    .line 4
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0x1c

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-gt v0, v5, :cond_8

    .line 5
    sget-object v9, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_0
    move v9, v7

    goto :goto_1

    :sswitch_0
    const-string v10, "machuca"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    move v9, v1

    goto :goto_1

    :sswitch_1
    const-string v10, "once"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move v9, v2

    goto :goto_1

    :sswitch_2
    const-string v10, "magnolia"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    move v9, v3

    goto :goto_1

    :sswitch_3
    const-string v10, "oneday"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    move v9, v4

    goto :goto_1

    :sswitch_4
    const-string v10, "dangalUHD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    move v9, v6

    goto :goto_1

    :sswitch_5
    const-string v10, "dangalFHD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    move v9, v8

    goto :goto_1

    :sswitch_6
    const-string v10, "dangal"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    move v9, p1

    :goto_1
    packed-switch v9, :pswitch_data_0

    :cond_8
    const/16 v9, 0x1b

    if-gt v0, v9, :cond_9

    .line 6
    :try_start_1
    sget-object v10, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v11, "HWEML"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :pswitch_0
    move p1, v8

    goto/16 :goto_6

    :cond_9
    const/16 v10, 0x1a

    if-gt v0, v10, :cond_99

    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :goto_2
    move v1, v7

    goto/16 :goto_3

    :sswitch_7
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/16 v1, 0x8b

    goto/16 :goto_3

    :sswitch_8
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/16 v1, 0x8a

    goto/16 :goto_3

    :sswitch_9
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    const/16 v1, 0x89

    goto/16 :goto_3

    :sswitch_a
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    const/16 v1, 0x88

    goto/16 :goto_3

    :sswitch_b
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    const/16 v1, 0x87

    goto/16 :goto_3

    :sswitch_c
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    const/16 v1, 0x86

    goto/16 :goto_3

    :sswitch_d
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2

    :cond_10
    const/16 v1, 0x85

    goto/16 :goto_3

    :sswitch_e
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    const/16 v1, 0x84

    goto/16 :goto_3

    :sswitch_f
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2

    :cond_12
    const/16 v1, 0x83

    goto/16 :goto_3

    :sswitch_10
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v1, 0x82

    goto/16 :goto_3

    :sswitch_11
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v1, 0x81

    goto/16 :goto_3

    :sswitch_12
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v1, 0x80

    goto/16 :goto_3

    :sswitch_13
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v1, 0x7f

    goto/16 :goto_3

    :sswitch_14
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_2

    :cond_17
    const/16 v1, 0x7e

    goto/16 :goto_3

    :sswitch_15
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_2

    :cond_18
    const/16 v1, 0x7d

    goto/16 :goto_3

    :sswitch_16
    const-string/jumbo v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_2

    :cond_19
    const/16 v1, 0x7c

    goto/16 :goto_3

    :sswitch_17
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_2

    :cond_1a
    const/16 v1, 0x7b

    goto/16 :goto_3

    :sswitch_18
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_2

    :cond_1b
    const/16 v1, 0x7a

    goto/16 :goto_3

    :sswitch_19
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_2

    :cond_1c
    const/16 v1, 0x79

    goto/16 :goto_3

    :sswitch_1a
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_2

    :cond_1d
    const/16 v1, 0x78

    goto/16 :goto_3

    :sswitch_1b
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_2

    :cond_1e
    const/16 v1, 0x77

    goto/16 :goto_3

    :sswitch_1c
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_2

    :cond_1f
    const/16 v1, 0x76

    goto/16 :goto_3

    :sswitch_1d
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_2

    :cond_20
    const/16 v1, 0x75

    goto/16 :goto_3

    :sswitch_1e
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_2

    :cond_21
    const/16 v1, 0x74

    goto/16 :goto_3

    :sswitch_1f
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_2

    :cond_22
    const/16 v1, 0x73

    goto/16 :goto_3

    :sswitch_20
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_2

    :cond_23
    const/16 v1, 0x72

    goto/16 :goto_3

    :sswitch_21
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_2

    :cond_24
    const/16 v1, 0x71

    goto/16 :goto_3

    :sswitch_22
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_2

    :cond_25
    const/16 v1, 0x70

    goto/16 :goto_3

    :sswitch_23
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_2

    :cond_26
    const/16 v1, 0x6f

    goto/16 :goto_3

    :sswitch_24
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_2

    :cond_27
    const/16 v1, 0x6e

    goto/16 :goto_3

    :sswitch_25
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_2

    :cond_28
    const/16 v1, 0x6d

    goto/16 :goto_3

    :sswitch_26
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_2

    :cond_29
    const/16 v1, 0x6c

    goto/16 :goto_3

    :sswitch_27
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_2

    :cond_2a
    const/16 v1, 0x6b

    goto/16 :goto_3

    :sswitch_28
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_2

    :cond_2b
    const/16 v1, 0x6a

    goto/16 :goto_3

    :sswitch_29
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_2

    :cond_2c
    const/16 v1, 0x69

    goto/16 :goto_3

    :sswitch_2a
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_2

    :cond_2d
    const/16 v1, 0x68

    goto/16 :goto_3

    :sswitch_2b
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_2

    :cond_2e
    const/16 v1, 0x67

    goto/16 :goto_3

    :sswitch_2c
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_2

    :cond_2f
    const/16 v1, 0x66

    goto/16 :goto_3

    :sswitch_2d
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_2

    :cond_30
    const/16 v1, 0x65

    goto/16 :goto_3

    :sswitch_2e
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_2

    :cond_31
    const/16 v1, 0x64

    goto/16 :goto_3

    :sswitch_2f
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_2

    :cond_32
    const/16 v1, 0x63

    goto/16 :goto_3

    :sswitch_30
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_2

    :cond_33
    const/16 v1, 0x62

    goto/16 :goto_3

    :sswitch_31
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_2

    :cond_34
    const/16 v1, 0x61

    goto/16 :goto_3

    :sswitch_32
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_2

    :cond_35
    const/16 v1, 0x60

    goto/16 :goto_3

    :sswitch_33
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_2

    :cond_36
    const/16 v1, 0x5f

    goto/16 :goto_3

    :sswitch_34
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_2

    :cond_37
    const/16 v1, 0x5e

    goto/16 :goto_3

    :sswitch_35
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_2

    :cond_38
    const/16 v1, 0x5d

    goto/16 :goto_3

    :sswitch_36
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_2

    :cond_39
    const/16 v1, 0x5c

    goto/16 :goto_3

    :sswitch_37
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_2

    :cond_3a
    const/16 v1, 0x5b

    goto/16 :goto_3

    :sswitch_38
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_2

    :cond_3b
    const/16 v1, 0x5a

    goto/16 :goto_3

    :sswitch_39
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_2

    :cond_3c
    const/16 v1, 0x59

    goto/16 :goto_3

    :sswitch_3a
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_2

    :cond_3d
    const/16 v1, 0x58

    goto/16 :goto_3

    :sswitch_3b
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_2

    :cond_3e
    const/16 v1, 0x57

    goto/16 :goto_3

    :sswitch_3c
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_2

    :cond_3f
    const/16 v1, 0x56

    goto/16 :goto_3

    :sswitch_3d
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_2

    :cond_40
    const/16 v1, 0x55

    goto/16 :goto_3

    :sswitch_3e
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_2

    :cond_41
    const/16 v1, 0x54

    goto/16 :goto_3

    :sswitch_3f
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_2

    :cond_42
    const/16 v1, 0x53

    goto/16 :goto_3

    :sswitch_40
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_2

    :cond_43
    const/16 v1, 0x52

    goto/16 :goto_3

    :sswitch_41
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_2

    :cond_44
    const/16 v1, 0x51

    goto/16 :goto_3

    :sswitch_42
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_2

    :cond_45
    const/16 v1, 0x50

    goto/16 :goto_3

    :sswitch_43
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_2

    :cond_46
    const/16 v1, 0x4f

    goto/16 :goto_3

    :sswitch_44
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_2

    :cond_47
    const/16 v1, 0x4e

    goto/16 :goto_3

    :sswitch_45
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_2

    :cond_48
    const/16 v1, 0x4d

    goto/16 :goto_3

    :sswitch_46
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_2

    :cond_49
    const/16 v1, 0x4c

    goto/16 :goto_3

    :sswitch_47
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_2

    :cond_4a
    const/16 v1, 0x4b

    goto/16 :goto_3

    :sswitch_48
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_2

    :cond_4b
    const/16 v1, 0x4a

    goto/16 :goto_3

    :sswitch_49
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_2

    :cond_4c
    const/16 v1, 0x49

    goto/16 :goto_3

    :sswitch_4a
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_2

    :cond_4d
    const/16 v1, 0x48

    goto/16 :goto_3

    :sswitch_4b
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_2

    :cond_4e
    const/16 v1, 0x47

    goto/16 :goto_3

    :sswitch_4c
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_2

    :cond_4f
    const/16 v1, 0x46

    goto/16 :goto_3

    :sswitch_4d
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_2

    :cond_50
    const/16 v1, 0x45

    goto/16 :goto_3

    :sswitch_4e
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_2

    :cond_51
    const/16 v1, 0x44

    goto/16 :goto_3

    :sswitch_4f
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_2

    :cond_52
    const/16 v1, 0x43

    goto/16 :goto_3

    :sswitch_50
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_2

    :cond_53
    const/16 v1, 0x42

    goto/16 :goto_3

    :sswitch_51
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_2

    :cond_54
    const/16 v1, 0x41

    goto/16 :goto_3

    :sswitch_52
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_2

    :cond_55
    const/16 v1, 0x40

    goto/16 :goto_3

    :sswitch_53
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_2

    :cond_56
    const/16 v1, 0x3f

    goto/16 :goto_3

    :sswitch_54
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_2

    :cond_57
    const/16 v1, 0x3e

    goto/16 :goto_3

    :sswitch_55
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_2

    :cond_58
    const/16 v1, 0x3d

    goto/16 :goto_3

    :sswitch_56
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_2

    :cond_59
    const/16 v1, 0x3c

    goto/16 :goto_3

    :sswitch_57
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_2

    :cond_5a
    const/16 v1, 0x3b

    goto/16 :goto_3

    :sswitch_58
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_2

    :cond_5b
    const/16 v1, 0x3a

    goto/16 :goto_3

    :sswitch_59
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_2

    :cond_5c
    const/16 v1, 0x39

    goto/16 :goto_3

    :sswitch_5a
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_2

    :cond_5d
    const/16 v1, 0x38

    goto/16 :goto_3

    :sswitch_5b
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_2

    :cond_5e
    const/16 v1, 0x37

    goto/16 :goto_3

    :sswitch_5c
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_2

    :cond_5f
    const/16 v1, 0x36

    goto/16 :goto_3

    :sswitch_5d
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_2

    :cond_60
    const/16 v1, 0x35

    goto/16 :goto_3

    :sswitch_5e
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_2

    :cond_61
    const/16 v1, 0x34

    goto/16 :goto_3

    :sswitch_5f
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_2

    :cond_62
    const/16 v1, 0x33

    goto/16 :goto_3

    :sswitch_60
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_2

    :cond_63
    const/16 v1, 0x32

    goto/16 :goto_3

    :sswitch_61
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_2

    :cond_64
    const/16 v1, 0x31

    goto/16 :goto_3

    :sswitch_62
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_2

    :cond_65
    const/16 v1, 0x30

    goto/16 :goto_3

    :sswitch_63
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_2

    :cond_66
    const/16 v1, 0x2f

    goto/16 :goto_3

    :sswitch_64
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_2

    :cond_67
    const/16 v1, 0x2e

    goto/16 :goto_3

    :sswitch_65
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_2

    :cond_68
    const/16 v1, 0x2d

    goto/16 :goto_3

    :sswitch_66
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_2

    :cond_69
    const/16 v1, 0x2c

    goto/16 :goto_3

    :sswitch_67
    const-string/jumbo v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_2

    :cond_6a
    const/16 v1, 0x2b

    goto/16 :goto_3

    :sswitch_68
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_2

    :cond_6b
    const/16 v1, 0x2a

    goto/16 :goto_3

    :sswitch_69
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_2

    :cond_6c
    const/16 v1, 0x29

    goto/16 :goto_3

    :sswitch_6a
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_2

    :cond_6d
    const/16 v1, 0x28

    goto/16 :goto_3

    :sswitch_6b
    const-string/jumbo v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_2

    :cond_6e
    const/16 v1, 0x27

    goto/16 :goto_3

    :sswitch_6c
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_2

    :cond_6f
    const/16 v1, 0x26

    goto/16 :goto_3

    :sswitch_6d
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_2

    :cond_70
    const/16 v1, 0x25

    goto/16 :goto_3

    :sswitch_6e
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_2

    :cond_71
    const/16 v1, 0x24

    goto/16 :goto_3

    :sswitch_6f
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_2

    :cond_72
    const/16 v1, 0x23

    goto/16 :goto_3

    :sswitch_70
    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_2

    :cond_73
    const/16 v1, 0x22

    goto/16 :goto_3

    :sswitch_71
    const-string/jumbo v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_2

    :cond_74
    const/16 v1, 0x21

    goto/16 :goto_3

    :sswitch_72
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_2

    :cond_75
    const/16 v1, 0x20

    goto/16 :goto_3

    :sswitch_73
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_2

    :cond_76
    const/16 v1, 0x1f

    goto/16 :goto_3

    :sswitch_74
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_2

    :cond_77
    const/16 v1, 0x1e

    goto/16 :goto_3

    :sswitch_75
    const-string/jumbo v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_2

    :cond_78
    const/16 v1, 0x1d

    goto/16 :goto_3

    :sswitch_76
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_2

    :cond_79
    move v1, v5

    goto/16 :goto_3

    :sswitch_77
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_2

    :cond_7a
    move v1, v9

    goto/16 :goto_3

    :sswitch_78
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_2

    :cond_7b
    move v1, v10

    goto/16 :goto_3

    :sswitch_79
    const-string v1, "A10-70F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_2

    :cond_7c
    const/16 v1, 0x19

    goto/16 :goto_3

    :sswitch_7a
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_2

    :cond_7d
    const/16 v1, 0x18

    goto/16 :goto_3

    :sswitch_7b
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_2

    :cond_7e
    const/16 v1, 0x17

    goto/16 :goto_3

    :sswitch_7c
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_2

    :cond_7f
    const/16 v1, 0x16

    goto/16 :goto_3

    :sswitch_7d
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_2

    :cond_80
    const/16 v1, 0x15

    goto/16 :goto_3

    :sswitch_7e
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_2

    :cond_81
    const/16 v1, 0x14

    goto/16 :goto_3

    :sswitch_7f
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_2

    :cond_82
    const/16 v1, 0x13

    goto/16 :goto_3

    :sswitch_80
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_2

    :cond_83
    const/16 v1, 0x12

    goto/16 :goto_3

    :sswitch_81
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_2

    :cond_84
    const/16 v1, 0x11

    goto/16 :goto_3

    :sswitch_82
    const-string/jumbo v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_2

    :cond_85
    const/16 v1, 0x10

    goto/16 :goto_3

    :sswitch_83
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_2

    :cond_86
    const/16 v1, 0xf

    goto/16 :goto_3

    :sswitch_84
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_2

    :cond_87
    const/16 v1, 0xe

    goto/16 :goto_3

    :sswitch_85
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_2

    :cond_88
    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_86
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_2

    :cond_89
    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_87
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_2

    :cond_8a
    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_88
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_2

    :cond_8b
    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_89
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_2

    :cond_8c
    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_8a
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_2

    :cond_8d
    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_8b
    const-string v1, "PGN528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_2

    :cond_8e
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_8c
    const-string v2, "NX573J"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_2

    :sswitch_8d
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_2

    :cond_8f
    move v1, v2

    goto :goto_3

    :sswitch_8e
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_2

    :cond_90
    move v1, v3

    goto :goto_3

    :sswitch_8f
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_2

    :cond_91
    move v1, v4

    goto :goto_3

    :sswitch_90
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_2

    :cond_92
    move v1, v6

    goto :goto_3

    :sswitch_91
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_2

    :cond_93
    move v1, v8

    goto :goto_3

    :sswitch_92
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_2

    :cond_94
    move v1, p1

    :cond_95
    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 8
    :try_start_2
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_4
    move v6, v7

    goto :goto_5

    :sswitch_93
    const-string v1, "AFTN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_4

    :sswitch_94
    const-string v1, "AFTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_4

    :cond_96
    move v6, v8

    goto :goto_5

    :sswitch_95
    const-string v1, "JSN-L21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_4

    :cond_97
    move v6, p1

    :cond_98
    :goto_5
    packed-switch v6, :pswitch_data_2

    .line 9
    :cond_99
    :goto_6
    :try_start_3
    sput-boolean p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 10
    sput-boolean v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 11
    :cond_9a
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    sget-boolean p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_6
        -0x48b8f57f -> :sswitch_5
        -0x48b8bd30 -> :sswitch_4
        -0x3c588c8a -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_92
        -0x7fd6c381 -> :sswitch_91
        -0x7fd6c368 -> :sswitch_90
        -0x7d026749 -> :sswitch_8f
        -0x78929d6a -> :sswitch_8e
        -0x75f50a1e -> :sswitch_8d
        -0x75f4fe9d -> :sswitch_8c
        -0x736f875c -> :sswitch_8b
        -0x736f83c2 -> :sswitch_8a
        -0x736f83c1 -> :sswitch_89
        -0x7327ce1c -> :sswitch_88
        -0x705c574b -> :sswitch_87
        -0x651ebb62 -> :sswitch_86
        -0x6423293b -> :sswitch_85
        -0x604f5117 -> :sswitch_84
        -0x5f691e13 -> :sswitch_83
        -0x5ca40cc4 -> :sswitch_82
        -0x58520ec1 -> :sswitch_81
        -0x58520eba -> :sswitch_80
        -0x58520eb9 -> :sswitch_7f
        -0x4eaed329 -> :sswitch_7e
        -0x4892fb4f -> :sswitch_7d
        -0x465b3df3 -> :sswitch_7c
        -0x43e6c939 -> :sswitch_7b
        -0x3ec0fcc5 -> :sswitch_7a
        -0x3b33cca0 -> :sswitch_79
        -0x3b33cc9a -> :sswitch_78
        -0x398ae3f6 -> :sswitch_77
        -0x391f0fb4 -> :sswitch_76
        -0x346837ae -> :sswitch_75
        -0x323788e3 -> :sswitch_74
        -0x30f57652 -> :sswitch_73
        -0x2f88a116 -> :sswitch_72
        -0x2f61ed98 -> :sswitch_71
        -0x2efd0837 -> :sswitch_70
        -0x2e9e9441 -> :sswitch_6f
        -0x2247b8b1 -> :sswitch_6e
        -0x1f0fa2b7 -> :sswitch_6d
        -0x19af3b41 -> :sswitch_6c
        -0x114fad3e -> :sswitch_6b
        -0x10dae90b -> :sswitch_6a
        -0x1084b7b7 -> :sswitch_69
        -0xa5988e9 -> :sswitch_68
        -0x35f9fbf -> :sswitch_67
        0x84e -> :sswitch_66
        0xa04 -> :sswitch_65
        0xa9b -> :sswitch_64
        0xa9f -> :sswitch_63
        0xc13 -> :sswitch_62
        0xd9b -> :sswitch_61
        0x11ebd -> :sswitch_60
        0x12711 -> :sswitch_5f
        0x127db -> :sswitch_5e
        0x12beb -> :sswitch_5d
        0x1334d -> :sswitch_5c
        0x135c9 -> :sswitch_5b
        0x13aea -> :sswitch_5a
        0x158d2 -> :sswitch_59
        0x1821e -> :sswitch_58
        0x18220 -> :sswitch_57
        0x18401 -> :sswitch_56
        0x18c69 -> :sswitch_55
        0x1716e6 -> :sswitch_54
        0x171ac8 -> :sswitch_53
        0x171ac9 -> :sswitch_52
        0x208c61 -> :sswitch_51
        0x208c63 -> :sswitch_50
        0x208c80 -> :sswitch_4f
        0x208c9f -> :sswitch_4e
        0x208cbe -> :sswitch_4d
        0x208cc0 -> :sswitch_4c
        0x252f5f -> :sswitch_4b
        0x25981d -> :sswitch_4a
        0x259b88 -> :sswitch_49
        0x290a13 -> :sswitch_48
        0x3021fd -> :sswitch_47
        0x321e47 -> :sswitch_46
        0x332327 -> :sswitch_45
        0x33ab63 -> :sswitch_44
        0x27691fb -> :sswitch_43
        0x30f8881 -> :sswitch_42
        0x30f8c42 -> :sswitch_41
        0x349f581 -> :sswitch_40
        0x3ab0ea7 -> :sswitch_3f
        0x3e53ea5 -> :sswitch_3e
        0x3f25a44 -> :sswitch_3d
        0x3f25a46 -> :sswitch_3c
        0x3f25a49 -> :sswitch_3b
        0x3f25e05 -> :sswitch_3a
        0x3f25e07 -> :sswitch_39
        0x3f25e09 -> :sswitch_38
        0x3f261c6 -> :sswitch_37
        0x48dce49 -> :sswitch_36
        0x48dd589 -> :sswitch_35
        0x48dd8af -> :sswitch_34
        0x4d36832 -> :sswitch_33
        0x4f0b0e7 -> :sswitch_32
        0x5e2479e -> :sswitch_31
        0x60acc05 -> :sswitch_30
        0x6214744 -> :sswitch_2f
        0x9d91379 -> :sswitch_2e
        0xadc0551 -> :sswitch_2d
        0xea056b3 -> :sswitch_2c
        0x1121dbc3 -> :sswitch_2b
        0x1255818c -> :sswitch_2a
        0x1263990d -> :sswitch_29
        0x12d90f3a -> :sswitch_28
        0x12d90f4c -> :sswitch_27
        0x12d98b1b -> :sswitch_26
        0x12d98b22 -> :sswitch_25
        0x1844c711 -> :sswitch_24
        0x1e3e8044 -> :sswitch_23
        0x2f5336ed -> :sswitch_22
        0x2f54115e -> :sswitch_21
        0x2f541849 -> :sswitch_20
        0x31cf010e -> :sswitch_1f
        0x36ad82f4 -> :sswitch_1e
        0x391a0b61 -> :sswitch_1d
        0x3f3728cd -> :sswitch_1c
        0x448ec687 -> :sswitch_1b
        0x46260f63 -> :sswitch_1a
        0x4c505106 -> :sswitch_19
        0x4de67084 -> :sswitch_18
        0x506ac5a9 -> :sswitch_17
        0x5abad9cd -> :sswitch_16
        0x64d2e6e9 -> :sswitch_15
        0x64d2eac5 -> :sswitch_14
        0x65e4085b -> :sswitch_13
        0x6f373556 -> :sswitch_12
        0x719f1dcb -> :sswitch_11
        0x75d9a0f0 -> :sswitch_10
        0x7796d144 -> :sswitch_f
        0x785bcb26 -> :sswitch_e
        0x78fc0e50 -> :sswitch_d
        0x790521fb -> :sswitch_c
        0x7933207f -> :sswitch_b
        0x7a05a409 -> :sswitch_a
        0x7a0696bd -> :sswitch_9
        0x7a16dfe7 -> :sswitch_8
        0x7a1f0e95 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x236fe21d -> :sswitch_95
        0x1e9d52 -> :sswitch_94
        0x1e9d5f -> :sswitch_93
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createDecoderException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cause",
            "codecInfo"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method public getCodecNeedsEosPropagation()Z
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetPlaybackSpeed",
            "format",
            "streamFormats"
        }
    .end annotation

    .line 1
    array-length p0, p3

    const/high16 p2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v2, p3, v0

    .line 2
    iget v2, v2, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_0

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p0, v1, p2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    mul-float p2, v1, p1

    :goto_1
    return p2
.end method

.method public getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaCodecSelector",
            "format",
            "requiresSecureDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    invoke-static {p1, p2, p3, p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .locals 21
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "format",
            "crypto",
            "codecOperatingRate"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v2, p4

    .line 1
    iget-object v4, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-boolean v6, v4, Lcom/google/android/exoplayer2/video/DummySurface;->secure:Z

    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eq v6, v7, :cond_0

    .line 2
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/video/DummySurface;->release()V

    .line 3
    iput-object v5, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 4
    :cond_0
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 5
    iget-object v5, v0, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    .line 6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v6, v3, Lcom/google/android/exoplayer2/Format;->width:I

    .line 8
    iget v7, v3, Lcom/google/android/exoplayer2/Format;->height:I

    .line 9
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v8

    .line 10
    array-length v9, v5

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    if-eq v8, v10, :cond_1

    .line 11
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v5

    if-eq v5, v10, :cond_1

    int-to-float v8, v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 12
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 13
    :cond_1
    new-instance v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    move-object/from16 v20, v4

    goto/16 :goto_f

    .line 14
    :cond_2
    array-length v9, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v9, :cond_7

    aget-object v13, v5, v11

    .line 15
    iget-object v14, v3, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v14, :cond_3

    iget-object v14, v13, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v14, :cond_3

    .line 16
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    iget-object v14, v3, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 17
    iput-object v14, v13, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 18
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    .line 19
    :cond_3
    invoke-virtual {v1, v3, v13}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v14

    iget v14, v14, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v14, :cond_6

    .line 20
    iget v14, v13, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v14, v10, :cond_5

    iget v15, v13, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v15, v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v15, 0x1

    :goto_2
    or-int/2addr v12, v15

    .line 21
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 22
    iget v14, v13, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 23
    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_7
    if-eqz v12, :cond_15

    const/16 v5, 0x42

    const-string v9, "Resolutions unknown. Codec max resolution: "

    const-string/jumbo v10, "x"

    .line 24
    invoke-static {v5, v9, v6, v10, v7}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "MediaCodecVideoRenderer"

    .line 25
    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget v5, v3, Lcom/google/android/exoplayer2/Format;->height:I

    iget v11, v3, Lcom/google/android/exoplayer2/Format;->width:I

    if-le v5, v11, :cond_8

    const/4 v12, 0x1

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_9

    move v13, v5

    goto :goto_4

    :cond_9
    move v13, v11

    :goto_4
    if-eqz v12, :cond_a

    move v5, v11

    :cond_a
    int-to-float v11, v5

    int-to-float v14, v13

    div-float/2addr v11, v14

    .line 27
    sget-object v14, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v15, v14

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_5
    if-ge v2, v15, :cond_14

    move/from16 v16, v15

    aget v15, v14, v2

    move-object/from16 v17, v14

    int-to-float v14, v15

    mul-float/2addr v14, v11

    float-to-int v14, v14

    if-le v15, v13, :cond_14

    if-gt v14, v5, :cond_b

    goto/16 :goto_c

    :cond_b
    move/from16 v18, v5

    .line 28
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    move/from16 v19, v11

    const/16 v11, 0x15

    if-lt v5, v11, :cond_10

    if-eqz v12, :cond_c

    move v5, v14

    goto :goto_6

    :cond_c
    move v5, v15

    :goto_6
    if-eqz v12, :cond_d

    goto :goto_7

    :cond_d
    move v15, v14

    .line 29
    :goto_7
    iget-object v11, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v11, :cond_e

    goto :goto_8

    .line 30
    :cond_e
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    if-nez v11, :cond_f

    :goto_8
    const/4 v5, 0x0

    goto :goto_9

    .line 31
    :cond_f
    invoke-static {v11, v5, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object v5

    .line 32
    :goto_9
    iget v11, v3, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 33
    iget v14, v5, Landroid/graphics/Point;->x:I

    iget v15, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v20, v4

    float-to-double v3, v11

    invoke-virtual {v1, v14, v15, v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_d

    :cond_10
    move-object/from16 v20, v4

    const/16 v3, 0x10

    .line 34
    :try_start_0
    invoke-static {v15, v3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v4

    mul-int/2addr v4, v3

    .line 35
    invoke-static {v14, v3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v5

    mul-int/2addr v5, v3

    mul-int v3, v4, v5

    .line 36
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v11

    if-gt v3, v11, :cond_13

    .line 37
    new-instance v2, Landroid/graphics/Point;

    if-eqz v12, :cond_11

    move v3, v5

    goto :goto_a

    :cond_11
    move v3, v4

    :goto_a
    if-eqz v12, :cond_12

    goto :goto_b

    :cond_12
    move v4, v5

    .line 38
    :goto_b
    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v2

    goto :goto_d

    :cond_13
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p2

    move/from16 v15, v16

    move-object/from16 v14, v17

    move/from16 v5, v18

    move/from16 v11, v19

    move-object/from16 v4, v20

    goto :goto_5

    :cond_14
    :goto_c
    move-object/from16 v20, v4

    :catch_0
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_16

    .line 39
    iget v2, v5, Landroid/graphics/Point;->x:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 40
    iget v2, v5, Landroid/graphics/Point;->y:I

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 42
    iput v6, v2, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 43
    iput v7, v2, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 44
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    .line 46
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v2, 0x39

    const-string v3, "Codec max resolution adjusted to: "

    .line 47
    invoke-static {v2, v3, v6, v10, v7}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_15
    move-object/from16 v20, v4

    .line 49
    :cond_16
    :goto_e
    new-instance v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    .line 50
    :goto_f
    iput-object v5, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 51
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 52
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v3, :cond_17

    iget v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    goto :goto_10

    :cond_17
    const/4 v3, 0x0

    .line 53
    :goto_10
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    move-object/from16 v7, v20

    .line 54
    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p2

    .line 55
    iget v7, v6, Lcom/google/android/exoplayer2/Format;->width:I

    const-string/jumbo v8, "width"

    invoke-virtual {v4, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 56
    iget v7, v6, Lcom/google/android/exoplayer2/Format;->height:I

    const-string v8, "height"

    invoke-virtual {v4, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 57
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 58
    iget v7, v6, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_18

    const-string v9, "frame-rate"

    .line 59
    invoke-virtual {v4, v9, v7}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 60
    :cond_18
    iget v7, v6, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const-string v9, "rotation-degrees"

    invoke-static {v4, v9, v7}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 61
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v7, :cond_19

    .line 62
    iget v9, v7, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const-string v10, "color-transfer"

    invoke-static {v4, v10, v9}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 63
    iget v9, v7, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    const-string v10, "color-standard"

    invoke-static {v4, v10, v9}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 64
    iget v9, v7, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    const-string v10, "color-range"

    invoke-static {v4, v10, v9}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 65
    iget-object v7, v7, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v7, :cond_19

    .line 66
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    const-string v9, "hdr-static-info"

    invoke-virtual {v4, v9, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 67
    :cond_19
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v9, "video/dolby-vision"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 68
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 69
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v9, "profile"

    .line 71
    invoke-static {v4, v9, v7}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 72
    :cond_1a
    iget v7, v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string v9, "max-width"

    invoke-virtual {v4, v9, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 73
    iget v7, v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    const-string v9, "max-height"

    invoke-virtual {v4, v9, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 74
    iget v5, v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const-string v7, "max-input-size"

    invoke-static {v4, v7, v5}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 75
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v5, v7, :cond_1b

    const-string v5, "priority"

    const/4 v7, 0x0

    .line 76
    invoke-virtual {v4, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v5, p4

    cmpl-float v7, v5, v8

    if-eqz v7, :cond_1b

    const-string v7, "operating-rate"

    .line 77
    invoke-virtual {v4, v7, v5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1b
    if-eqz v2, :cond_1c

    const-string v2, "no-post-process"

    const/4 v5, 0x1

    .line 78
    invoke-virtual {v4, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "auto-frc"

    const/4 v7, 0x0

    .line 79
    invoke-virtual {v4, v2, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_11

    :cond_1c
    const/4 v5, 0x1

    :goto_11
    if-eqz v3, :cond_1d

    const-string/jumbo v2, "tunneled-playback"

    .line 80
    invoke-virtual {v4, v2, v5}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v2, "audio-session-id"

    .line 81
    invoke-virtual {v4, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    :cond_1d
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v2, :cond_20

    .line 83
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 84
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez v2, :cond_1e

    .line 85
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 86
    :cond_1e
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    goto :goto_12

    .line 87
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 88
    :cond_20
    :goto_12
    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    iget-object v5, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p3

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v7
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecVideoRenderer"

    return-object p0
.end method

.method public handleInputBufferSupplementalData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 10
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_1

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 12
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 15
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 17
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq p2, p1, :cond_f

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 4
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_f

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    goto/16 :goto_5

    .line 6
    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    goto/16 :goto_5

    .line 7
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz p0, :cond_f

    .line 9
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    goto/16 :goto_5

    .line 10
    :cond_3
    instance-of p1, p2, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    check-cast p2, Landroid/view/Surface;

    goto :goto_0

    :cond_4
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_6

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz p1, :cond_5

    move-object p2, p1

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 15
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq p1, p2, :cond_d

    .line 16
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    instance-of v2, p2, Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v2, :cond_7

    move-object v2, v1

    goto :goto_2

    :cond_7
    move-object v2, p2

    .line 19
    :goto_2
    iget-object v3, p1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-ne v3, v2, :cond_8

    goto :goto_3

    .line 20
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 21
    iput-object v2, p1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    :goto_3
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 24
    iget p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_a

    .line 26
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_9

    if-eqz p2, :cond_9

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_9

    .line 27
    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_4

    .line 28
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_a
    :goto_4
    if-eqz p2, :cond_c

    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eq p2, v0, :cond_c

    .line 31
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz p2, :cond_b

    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 33
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_b

    .line 34
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/video/VideoSize;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_f

    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_5

    .line 37
    :cond_c
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_5

    :cond_d
    if-eqz p2, :cond_f

    .line 39
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eq p2, p1, :cond_f

    .line 40
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz p1, :cond_e

    .line 41
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 42
    iget-object v0, p2, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 43
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/video/VideoSize;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    :cond_e
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    if-eqz p1, :cond_f

    .line 45
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 46
    iget-object p2, p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_f

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 48
    iget-object p2, p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    :goto_5
    return-void
.end method

.method public isReady()Z
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    .line 5
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    return v4

    .line 6
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    return v1

    .line 7
    :cond_4
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v4
.end method

.method public final maybeNotifyDroppedFrames()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 5
    iget-object v6, v4, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 6
    new-instance v7, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_1
    return-void
.end method

.method public maybeNotifyRenderedFirstFrame()V
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 5
    iget-object v3, v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 7
    iget-object v5, v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    :cond_1
    return-void
.end method

.method public final maybeNotifyVideoSizeChanged()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-eq v2, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    if-ne v2, v0, :cond_1

    iget v2, v1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v2, v3, :cond_1

    iget v1, v1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 2
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/video/VideoSize;

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(IIIF)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 5
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/video/VideoSize;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "presentationTimeUs",
            "releaseTimeNs",
            "format"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 3
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public onCodecError(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecError"
        }
    .end annotation

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 2
    iget-object v7, v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3
    new-instance v8, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 p3, 0x0

    const/16 p4, 0x1d

    if-lt p2, p4, :cond_2

    iget-object p2, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string/jumbo p4, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_2

    aget-object p5, p1, p4

    .line 9
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v0, 0x4000

    if-ne p5, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 11
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_3

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 13
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_3
    return-void
.end method

.method public onCodecReleased(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDisabled()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 5
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;->unregister()V

    .line 7
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 11
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-enter p0

    .line 14
    monitor-exit p0

    .line 15
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 16
    new-instance v2, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-enter p0

    .line 19
    monitor-exit p0

    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 21
    new-instance v3, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_2
    throw v0
.end method

.method public onEnabled(ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "joining",
            "mayRenderStartOfStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 5
    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eq v2, p1, :cond_2

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 10
    iget-object v3, p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 11
    new-instance v4, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v4, p1, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 13
    iget-object v2, p1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v2, :cond_4

    .line 14
    iget-object v2, p1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 15
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v2, v2, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    iget-object v1, p1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;->register(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;)V

    .line 18
    :cond_4
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    .line 19
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    return-void
.end method

.method public onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formatHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object v0
.end method

.method public onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "mediaFormat"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 5
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    goto :goto_3

    .line 6
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "crop-top"

    const-string v4, "crop-bottom"

    const-string v5, "crop-left"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v0, v6

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "width"

    .line 12
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v6

    goto :goto_2

    :cond_4
    const-string v0, "height"

    .line 14
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 15
    :goto_3
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 16
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_6

    .line 17
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_5

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_7

    .line 18
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 19
    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 20
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    goto :goto_4

    .line 22
    :cond_6
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    .line 23
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 24
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 25
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 26
    iget-object p2, p1, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 27
    iget-object p2, p1, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 28
    iput-boolean v1, p1, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    iput-wide v2, p1, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 30
    iput v1, p1, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    .line 31
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "joining"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 6
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 9
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_0
    return-void
.end method

.method public onProcessedOutputBuffer(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_0
    return-void
.end method

.method public onProcessedStreamChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method public onProcessedTunneledBuffer(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 5
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 6
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez p1, :cond_0

    .line 7
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_0
    return-void
.end method

.method public onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 3
    :cond_0
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_1
    return-void
.end method

.method public onReset()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/DummySurface;->release()V

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 9
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 10
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v2, :cond_3

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v3, v2, :cond_2

    .line 13
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 14
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/DummySurface;->release()V

    .line 15
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 16
    :cond_3
    throw v1
.end method

.method public onStarted()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->started:Z

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public onStopped()V
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 5
    iget-object v5, v2, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 6
    new-instance v6, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, v3, v4, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;JI)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 8
    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 10
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->started:Z

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    return-void
.end method

.method public processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .locals 27
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
            0x0
        }
        names = {
            "positionUs",
            "elapsedRealtimeUs",
            "codec",
            "buffer",
            "bufferIndex",
            "bufferFlags",
            "sampleCount",
            "bufferPresentationTimeUs",
            "isDecodeOnlyBuffer",
            "isLastBuffer",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-wide/from16 v5, p10

    .line 1
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 3
    iput-wide v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 4
    :cond_0
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    cmp-long v7, v5, v7

    const-wide/16 v11, 0x3e8

    const-wide/16 v15, -0x1

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    .line 5
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 6
    iget-wide v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    cmp-long v17, v13, v15

    if-eqz v17, :cond_1

    .line 7
    iput-wide v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 8
    iget-wide v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iput-wide v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    .line 9
    :cond_1
    iget-wide v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v17, 0x1

    add-long v13, v13, v17

    iput-wide v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 10
    iget-object v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    mul-long v9, v5, v11

    .line 11
    iget-object v14, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v14, v9, v10}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 12
    iget-object v14, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 13
    iput-boolean v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    goto :goto_2

    .line 14
    :cond_2
    iget-wide v11, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v11, v19

    if-eqz v11, :cond_6

    .line 15
    iget-boolean v11, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v11, :cond_4

    iget-object v11, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    move-wide/from16 v23, v9

    .line 16
    iget-wide v8, v11, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v25, 0x0

    cmp-long v10, v8, v25

    if-nez v10, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    .line 17
    :cond_3
    iget-object v10, v11, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    sub-long v8, v8, v17

    const-wide/16 v17, 0xf

    .line 18
    rem-long v8, v8, v17

    long-to-int v8, v8

    .line 19
    aget-boolean v8, v10, v8

    :goto_0
    if-eqz v8, :cond_5

    goto :goto_1

    :cond_4
    move-wide/from16 v23, v9

    .line 20
    :goto_1
    iget-object v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 21
    iget-object v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    iget-wide v9, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    :cond_5
    const/4 v8, 0x1

    .line 22
    iput-boolean v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 23
    iget-object v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    move-wide/from16 v9, v23

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 24
    :cond_6
    :goto_2
    iget-boolean v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v8, :cond_7

    iget-object v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 25
    iget-object v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 26
    iget-object v11, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    iput-object v11, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 27
    iput-object v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    const/4 v8, 0x0

    .line 28
    iput-boolean v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 29
    :cond_7
    iput-wide v9, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 30
    iget-object v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    goto :goto_3

    :cond_8
    iget v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    :goto_3
    iput v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    .line 31
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    .line 32
    iput-wide v5, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 33
    :cond_9
    iget-wide v7, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamOffsetUs:J

    sub-long v9, v5, v7

    if-eqz p12, :cond_a

    if-nez p13, :cond_a

    .line 34
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;I)V

    const/4 v0, 0x1

    return v0

    .line 35
    :cond_a
    iget v11, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    float-to-double v13, v11

    .line 36
    iget v11, v0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b

    const/4 v11, 0x1

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    .line 37
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    const-wide/16 v21, 0x3e8

    mul-long v23, v23, v21

    sub-long/2addr v5, v1

    long-to-double v5, v5

    div-double/2addr v5, v13

    double-to-long v5, v5

    if-eqz v11, :cond_c

    sub-long v12, v23, p3

    sub-long/2addr v5, v12

    .line 38
    :cond_c
    iget-object v12, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v13, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-ne v12, v13, :cond_e

    .line 39
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 40
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;I)V

    .line 41
    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_e
    iget-wide v13, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    sub-long v23, v23, v13

    .line 43
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v13, :cond_f

    if-nez v11, :cond_10

    .line 44
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v13, :cond_11

    goto :goto_5

    .line 45
    :cond_f
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v13, :cond_11

    :cond_10
    :goto_5
    const/16 p3, 0x1

    goto :goto_6

    :cond_11
    const/16 p3, 0x0

    .line 46
    :goto_6
    iget-wide v12, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v12, v18

    if-nez v12, :cond_14

    cmp-long v7, v1, v7

    if-ltz v7, :cond_14

    if-nez p3, :cond_13

    if-eqz v11, :cond_14

    .line 47
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v7

    if-eqz v7, :cond_12

    const-wide/32 v7, 0x186a0

    cmp-long v7, v23, v7

    if-lez v7, :cond_12

    const/4 v7, 0x1

    goto :goto_7

    :cond_12
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_14

    :cond_13
    const/4 v7, 0x1

    goto :goto_8

    :cond_14
    const/4 v7, 0x0

    :goto_8
    const/16 v8, 0x15

    if-eqz v7, :cond_16

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    move-object/from16 p8, p0

    move-wide/from16 p9, v9

    move-wide/from16 p11, v1

    move-object/from16 p13, p14

    .line 49
    invoke-virtual/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 50
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v7, v8, :cond_15

    .line 51
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_9

    .line 52
    :cond_15
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;I)V

    .line 53
    :goto_9
    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    const/4 v0, 0x1

    return v0

    :cond_16
    if-eqz v11, :cond_2f

    .line 54
    iget-wide v11, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v7, v1, v11

    if-nez v7, :cond_17

    goto/16 :goto_18

    .line 55
    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v5, v13

    add-long/2addr v5, v11

    .line 56
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 57
    iget-wide v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1c

    iget-object v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 58
    iget-object v13, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 59
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v14

    if-eqz v14, :cond_19

    iget-object v13, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 60
    iget-wide v14, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    const-wide/16 v23, 0x0

    cmp-long v16, v14, v23

    if-nez v16, :cond_18

    move-wide/from16 v13, v23

    move-wide/from16 v23, v9

    goto :goto_a

    :cond_18
    move-wide/from16 v23, v9

    iget-wide v8, v13, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    div-long v13, v8, v14

    goto :goto_a

    :cond_19
    move-wide/from16 v23, v9

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    :goto_a
    iget-wide v8, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    iget-wide v3, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-wide v1, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    sub-long/2addr v3, v1

    mul-long/2addr v3, v13

    long-to-float v1, v3

    iget v2, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    add-long/2addr v8, v1

    sub-long v1, v5, v8

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x1312d00

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_b

    :cond_1a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_1b

    move-wide v5, v8

    goto :goto_c

    .line 63
    :cond_1b
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    goto :goto_c

    :cond_1c
    move-wide/from16 v23, v9

    .line 64
    :goto_c
    iget-wide v1, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide v1, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 65
    iput-wide v5, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    .line 66
    iget-object v1, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v1, :cond_21

    iget-wide v2, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v8

    if-nez v2, :cond_1d

    goto :goto_f

    .line 67
    :cond_1d
    iget-wide v1, v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    cmp-long v3, v1, v8

    if-nez v3, :cond_1e

    goto :goto_f

    .line 68
    :cond_1e
    iget-wide v3, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    sub-long v8, v5, v1

    .line 69
    div-long/2addr v8, v3

    mul-long/2addr v8, v3

    add-long/2addr v8, v1

    cmp-long v1, v5, v8

    if-gtz v1, :cond_1f

    sub-long v1, v8, v3

    goto :goto_d

    :cond_1f
    add-long/2addr v3, v8

    move-wide v1, v8

    move-wide v8, v3

    :goto_d
    sub-long v3, v8, v5

    sub-long/2addr v5, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_20

    goto :goto_e

    :cond_20
    move-wide v8, v1

    .line 70
    :goto_e
    iget-wide v1, v7, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    sub-long/2addr v8, v1

    move-wide v5, v8

    :cond_21
    :goto_f
    sub-long v1, v5, v11

    const-wide/16 v3, 0x3e8

    .line 71
    div-long/2addr v1, v3

    .line 72
    iget-wide v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v7

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_10

    :cond_22
    const/4 v3, 0x0

    :goto_10
    const-wide/32 v7, -0x7a120

    cmp-long v4, v1, v7

    if-gez v4, :cond_23

    const/4 v4, 0x1

    goto :goto_11

    :cond_23
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_24

    if-nez p13, :cond_24

    const/4 v4, 0x1

    goto :goto_12

    :cond_24
    const/4 v4, 0x0

    :goto_12
    if-eqz v4, :cond_28

    .line 73
    iget-object v4, v0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 74
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-wide v7, v0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    sub-long v7, p1, v7

    invoke-interface {v4, v7, v8}, Lcom/google/android/exoplayer2/source/SampleStream;->skipData(J)I

    move-result v4

    if-nez v4, :cond_25

    const/4 v4, 0x0

    goto :goto_14

    .line 76
    :cond_25
    iget-object v7, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v8, v7, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v7, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 77
    iget v8, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v8, v4

    if-eqz v3, :cond_26

    .line 78
    iget v4, v7, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v4, v8

    iput v4, v7, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_13

    .line 79
    :cond_26
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 80
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_27
    const/4 v4, 0x1

    :goto_14
    if-eqz v4, :cond_28

    const/4 v4, 0x0

    return v4

    .line 82
    :cond_28
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v4

    if-eqz v4, :cond_29

    if-nez p13, :cond_29

    const/4 v4, 0x1

    goto :goto_15

    :cond_29
    const/4 v4, 0x0

    :goto_15
    if-eqz v4, :cond_2b

    if-eqz v3, :cond_2a

    move-object/from16 v3, p5

    move/from16 v4, p7

    .line 83
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;I)V

    const/4 v3, 0x1

    goto :goto_16

    :cond_2a
    move-object/from16 v3, p5

    move/from16 v4, p7

    const-string v5, "dropVideoBuffer"

    .line 84
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 85
    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 86
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    const/4 v3, 0x1

    .line 87
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 88
    :goto_16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v3

    :cond_2b
    move-object/from16 v3, p5

    move/from16 v4, p7

    .line 89
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2c

    const-wide/32 v7, 0xc350

    cmp-long v7, v1, v7

    if-gez v7, :cond_2e

    move-object/from16 p8, p0

    move-wide/from16 p9, v23

    move-wide/from16 p11, v5

    move-object/from16 p13, p14

    .line 90
    invoke-virtual/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 91
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    const/4 v0, 0x1

    return v0

    :cond_2c
    const-wide/16 v7, 0x7530

    cmp-long v7, v1, v7

    if-gez v7, :cond_2e

    const-wide/16 v7, 0x2af8

    cmp-long v7, v1, v7

    if-lez v7, :cond_2d

    const-wide/16 v7, 0x2710

    sub-long v7, v1, v7

    const-wide/16 v9, 0x3e8

    .line 93
    :try_start_0
    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_17

    .line 94
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return v0

    :cond_2d
    :goto_17
    move-object/from16 p8, p0

    move-wide/from16 p9, v23

    move-wide/from16 p11, v5

    move-object/from16 p13, p14

    .line 95
    invoke-virtual/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 96
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;I)V

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    const/4 v0, 0x1

    return v0

    :cond_2e
    const/4 v0, 0x0

    return v0

    :cond_2f
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "presentationTimeUs"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string v0, "releaseOutputBuffer"

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method public renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "presentationTimeUs",
            "releaseTimeNs"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string v0, "releaseOutputBuffer"

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IJ)V

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method public resetCodecStateForFlush()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method public final setJoiningDeadlineMs()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentPlaybackSpeed",
            "targetPlaybackSpeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecInfo"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "presentationTimeUs"
        }
    .end annotation

    const-string/jumbo v0, "skipVideoBuffer"

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaCodecSelector",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object p0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    .line 4
    :goto_0
    invoke-static {p1, p2, p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v2

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {p1, p2, v0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v2

    .line 7
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/Format;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 p0, 0x2

    return p0

    .line 9
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 10
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v3

    .line 11
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x10

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    :goto_1
    if-eqz v3, :cond_6

    .line 12
    invoke-static {p1, p2, p0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 v0, 0x20

    :cond_6
    if-eqz v3, :cond_7

    const/4 p0, 0x4

    goto :goto_2

    :cond_7
    const/4 p0, 0x3

    :goto_2
    or-int/2addr p0, v2

    or-int/2addr p0, v0

    return p0
.end method

.method public updateDroppedBufferCounters(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "droppedBufferCount"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 4
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 5
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 6
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt v0, p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method

.method public updateVideoFrameProcessingOffsetCounters(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processingOffsetUs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 2
    iget-wide v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    .line 3
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->videoFrameProcessingOffsetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->videoFrameProcessingOffsetCount:I

    .line 4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 5
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    return-void
.end method
