.class public Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# instance fields
.field public final context:Landroid/content/Context;

.field public enableAudioTrackPlaybackParams:Z

.field public mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 3
    sget p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->$r8$clinit:I

    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventHandler",
            "videoRendererEventListener",
            "audioRendererEventListener",
            "textRendererOutput",
            "metadataRendererOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 3
    new-instance v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    const-wide/16 v5, 0x1388

    const/4 v7, 0x0

    const/16 v10, 0x32

    move-object v2, v11

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v11, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableAsynchronousBufferQueueing:Z

    .line 5
    iput-boolean v2, v11, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->forceAsyncQueueingSynchronizationWorkaround:Z

    .line 6
    iput-boolean v2, v11, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableSynchronizeCodecInteractionsWithQueueing:Z

    .line 7
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v3, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAudioTrackPlaybackParams:Z

    .line 9
    new-instance v15, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 10
    sget-object v4, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 11
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 13
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x11

    const/4 v7, 0x1

    if-lt v5, v6, :cond_1

    sget-object v6, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v9, "Amazon"

    .line 14
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "Xiaomi"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "external_surround_sound_enabled"

    invoke-static {v6, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 16
    sget-object v3, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    :goto_1
    move-object v5, v3

    goto :goto_3

    :cond_2
    const/16 v6, 0x1d

    const/16 v7, 0x8

    if-lt v5, v6, :cond_3

    .line 17
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 19
    invoke-static {}, Lcom/google/android/exoplayer2/audio/AudioCapabilities$Api29;->getDirectPlaybackSupportedEncodingsV29()[I

    move-result-object v4

    invoke-direct {v3, v4, v7}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_5

    const-string v3, "android.media.extra.AUDIO_PLUG_STATE"

    .line 20
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const-string v5, "android.media.extra.ENCODINGS"

    .line 22
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    const-string v6, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 23
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    goto :goto_1

    .line 24
    :cond_5
    :goto_2
    sget-object v3, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    goto :goto_1

    .line 25
    :goto_3
    new-instance v6, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    new-array v3, v2, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v6, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    .line 26
    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;ZZI)V

    .line 27
    iget-object v10, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-object v11, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v12, 0x0

    .line 28
    new-instance v3, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    move-object v9, v3

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 29
    iput-boolean v2, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableAsynchronousBufferQueueing:Z

    .line 30
    iput-boolean v2, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->forceAsyncQueueingSynchronizationWorkaround:Z

    .line 31
    iput-boolean v2, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableSynchronizeCodecInteractionsWithQueueing:Z

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 34
    new-instance v4, Lcom/google/android/exoplayer2/text/TextRenderer;

    move-object/from16 v5, p4

    invoke-direct {v4, v5, v3}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 36
    new-instance v4, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    move-object/from16 v5, p5

    invoke-direct {v4, v5, v3}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v3, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    check-cast v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    const-string v4, "context"

    .line 39
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;

    invoke-direct {v3, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v2, [Lcom/google/android/exoplayer2/Renderer;

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    return-object v0
.end method
