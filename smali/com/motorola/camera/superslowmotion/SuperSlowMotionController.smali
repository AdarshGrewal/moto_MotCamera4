.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;
.super Ljava/lang/Object;
.source "SuperSlowMotionController.kt"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;,
        Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;,
        Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;,
        Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$RendererListener;,
        Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperSlowMotionController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperSlowMotionController.kt\ncom/motorola/camera/superslowmotion/SuperSlowMotionController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,310:1\n1849#2,2:311\n11448#3:313\n11568#3,4:314\n11448#3:318\n11568#3,4:319\n*S KotlinDebug\n*F\n+ 1 SuperSlowMotionController.kt\ncom/motorola/camera/superslowmotion/SuperSlowMotionController\n*L\n201#1:311,2\n231#1:313\n231#1:314,4\n236#1:318\n236#1:319,4\n*E\n"
.end annotation


# instance fields
.field public final data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

.field public dataLoaded:Z

.field public final defaultDuration:I

.field public final editActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;",
            ">;"
        }
    .end annotation
.end field

.field public final exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field public final frameRateRatio:I

.field public final handler:Lcom/google/android/exoplayer2/PlayerMessage$Target;

.field public final listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;

.field public final messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/PlayerMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final slowMotionProgressFactor:I

.field public superSlowMotionProcess:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

.field public superSlowMotionRange:[I

.field public trimRange:[I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;ILcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 3
    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->defaultDuration:I

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;

    .line 5
    iget p2, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    .line 6
    div-int/lit8 p2, p2, 0x1e

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    .line 7
    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;)V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->handler:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 8
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0058

    .line 9
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->slowMotionProgressFactor:I

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 11
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    new-array p3, p2, [I

    .line 12
    fill-array-data p3, :array_1

    iput-object p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    .line 13
    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/Set;

    .line 14
    new-instance p3, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    .line 15
    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;)V

    .line 16
    invoke-direct {v0, p4, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;-><init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$RendererListener;)V

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAudioTrackPlaybackParams:Z

    .line 18
    invoke-direct {p3, p4, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    .line 19
    iget-boolean p4, p3, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr p4, v1

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 20
    iput-boolean v1, p3, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    .line 21
    new-instance p4, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p4, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)V

    .line 22
    iput-object p4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 p3, 0x0

    .line 23
    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 24
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 25
    iget-object p3, p4, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {p3, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setRepeatMode(I)V

    .line 26
    sget-object p3, Lcom/google/android/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    .line 27
    invoke-virtual {p4, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 29
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object p1

    .line 30
    new-instance p3, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 31
    iput-object p1, p3, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 32
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 33
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 34
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    .line 35
    invoke-static {p3, p3, p1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 36
    iget p3, p4, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    cmpl-float p3, p3, p1

    if-nez p3, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    iput p1, p4, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 38
    iget-object p3, p4, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    .line 39
    iget p3, p3, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    mul-float/2addr p3, p1

    .line 40
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p4, v1, p2, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 41
    iget-object p2, p4, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVolumeChanged(F)V

    .line 42
    iget-object p2, p4, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/audio/AudioListener;

    .line 43
    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/audio/AudioListener;->onVolumeChanged(F)V

    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->prepare()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data
.end method


# virtual methods
.method public final getRecordingDuration()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public onIsLoadingChanged(Z)V
    .locals 10

    if-nez p1, :cond_c

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    if-nez p1, :cond_c

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v0

    .line 3
    iget p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->defaultDuration:I

    mul-int/lit8 v2, p1, 0x3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, v0

    .line 4
    div-int/lit8 p1, p1, 0x3

    .line 5
    :goto_0
    sget-object v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 6
    const-class v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter v2

    int-to-long v3, p1

    cmp-long v5, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v5, :cond_1

    long-to-int p1, v0

    :try_start_0
    const-string v0, "McfStandAloneSubjectMotion"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default window is shorter than video length. Suggested window: start="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms, end="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto/16 :goto_8

    :cond_1
    move v5, v6

    .line 9
    :goto_1
    :try_start_1
    sget-object v8, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 10
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    .line 11
    iget v8, v8, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->motion:F

    const v9, 0x3da3d70a    # 0.08f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_2
    if-nez v5, :cond_4

    sub-long v8, v0, v3

    long-to-float p1, v8

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr p1, v5

    float-to-int p1, p1

    add-long/2addr v0, v3

    long-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const-string v1, "McfStandAloneSubjectMotion"

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough motion detected. Suggested window: start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms, end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_8

    .line 14
    :cond_4
    :try_start_2
    new-instance v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;

    invoke-direct {v3, p1, v0, v1}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;-><init>(IJ)V

    .line 15
    :goto_3
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->increaseEndIfPossible()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getCloserToMidpointScore()F

    move-result p1

    .line 17
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getRange()Landroid/util/Pair;

    move-result-object v0

    .line 18
    :cond_6
    :goto_4
    iget v1, v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    .line 19
    sget-object v4, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_7

    move v1, v7

    goto :goto_5

    :cond_7
    move v1, v6

    :goto_5
    if-nez v1, :cond_a

    .line 21
    iget v1, v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    add-int/2addr v1, v7

    iput v1, v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    .line 22
    :goto_6
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->increaseEndIfPossible()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    .line 23
    :cond_8
    iget v1, v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    .line 24
    sget-object v4, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_9

    move v1, v7

    goto :goto_7

    :cond_9
    move v1, v6

    :goto_7
    if-nez v1, :cond_6

    .line 26
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getCloserToMidpointScore()F

    move-result v1

    .line 27
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getRange()Landroid/util/Pair;

    move-result-object v4

    cmpl-float v5, v1, p1

    if-lez v5, :cond_6

    move p1, v1

    move-object v0, v4

    goto :goto_4

    :cond_a
    const-string p1, "McfStandAloneSubjectMotion"

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suggested window: start="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "ms, end="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    monitor-exit v2

    :goto_8
    const/4 p1, 0x2

    new-array v1, p1, [I

    .line 30
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "highestMotionWindowRange.first"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aput v2, v1, v6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "highestMotionWindowRange.second"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    aput v0, v1, v7

    .line 31
    iput-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    new-array p1, p1, [I

    aput v6, p1, v6

    .line 32
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v0

    long-to-int v0, v0

    aput v0, p1, v7

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    .line 33
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;

    if-nez p1, :cond_b

    goto :goto_9

    :cond_b
    invoke-interface {p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;->onLoadingComplete()V

    .line 34
    :goto_9
    iput-boolean v7, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    goto :goto_a

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v2

    throw p0

    :cond_c
    :goto_a
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v0

    iget p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    :goto_0
    return-void
.end method

.method public final processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 4
    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 5
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "ANALYTICS_SSMACTION"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANALYTICS_SSMEDIT"

    .line 10
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 12
    :cond_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-void
.end method

.method public final resetVideoPosition()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v3, v3

    mul-long/2addr v3, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    return-void
.end method

.method public final schedulePlaybackSpeedChangeMessages()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/PlayerMessage;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 5
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled:Z

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->handler:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v1

    .line 10
    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    .line 11
    aget v4, v4, v2

    int-to-long v4, v4

    iget v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    .line 12
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/2addr v6, v3

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 13
    iput-wide v4, v1, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    const/high16 v4, 0x3f800000    # 1.0f

    .line 14
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    .line 15
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 16
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    .line 17
    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 18
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v4

    .line 19
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/2addr v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 20
    iput-object v4, v1, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->handler:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v1

    .line 24
    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    .line 25
    aget v4, v4, v3

    int-to-long v4, v4

    iget v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    .line 26
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/2addr v6, v3

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 27
    iput-wide v4, v1, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    .line 28
    iget v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    .line 29
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 30
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    .line 31
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 32
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object p0

    .line 33
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 34
    iput-object p0, v1, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    .line 35
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public final updatePlaybackSpeed(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    .line 3
    aget v1, v1, v3

    int-to-long v4, v1

    cmp-long p1, p1, v4

    if-gtz p1, :cond_1

    .line 4
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->setPlaybackSpeed(F)V

    goto :goto_0

    :cond_1
    float-to-int p1, v0

    .line 6
    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    if-eq p1, p2, :cond_2

    int-to-float p1, p2

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->setPlaybackSpeed(F)V

    :cond_2
    :goto_0
    return-void
.end method
