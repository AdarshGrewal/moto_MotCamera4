.class public final Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceFactory;


# instance fields
.field public final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public liveMaxOffsetMs:J

.field public liveMaxSpeed:F

.field public liveMinOffsetMs:J

.field public liveMinSpeed:F

.field public liveTargetOffsetMs:J

.field public final mediaSourceFactories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final supportedTypes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "extractorsFactory"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 4
    const-class p1, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const-class v1, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "com.google.android.exoplayer2.source.dash.DashMediaSource$Factory"

    .line 5
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 6
    invoke-virtual {v5, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p1, v6, v3

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 8
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v5, "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"

    .line 9
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 10
    invoke-virtual {v5, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p1, v6, v3

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 12
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v5, "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"

    .line 13
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 14
    invoke-virtual {v5, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p1, v7, v3

    .line 15
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 16
    invoke-virtual {v2, v6, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    const-string p1, "com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory"

    .line 17
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 p1, 0x4

    .line 20
    new-instance v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v1, v0, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->mediaSourceFactories:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->supportedTypes:[I

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->mediaSourceFactories:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->supportedTypes:[I

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->mediaSourceFactories:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    aput p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 26
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 27
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    const p1, -0x800001

    .line 28
    iput p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 29
    iput p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    return-void
.end method


# virtual methods
.method public createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaItem"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->mimeType:Ljava/lang/String;

    .line 4
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_a

    .line 5
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v7, "rtsp"

    if-ne v7, v0, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v2, v8, :cond_1

    goto :goto_2

    :cond_1
    move v8, v5

    :goto_0
    if-ge v8, v2, :cond_4

    .line 7
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 8
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_2

    goto :goto_1

    :cond_2
    or-int/lit8 v9, v9, 0x20

    add-int/lit8 v9, v9, -0x61

    int-to-char v9, v9

    const/16 v11, 0x1a

    if-ge v9, v11, :cond_3

    or-int/lit8 v10, v10, 0x20

    add-int/lit8 v10, v10, -0x61

    int-to-char v10, v10

    if-ne v9, v10, :cond_3

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    move v0, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v6

    :goto_4
    if-eqz v0, :cond_5

    goto/16 :goto_6

    .line 9
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_9

    .line 10
    :cond_6
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mpd"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_7

    :cond_7
    const-string v1, ".m3u8"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_8

    .line 13
    :cond_8
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->ISM_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "format=mpd-time-csf"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    const-string v1, "format=m3u8-aapl"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_8

    .line 18
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v7, "application/x-rtsp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x3

    goto :goto_5

    :sswitch_1
    const-string v7, "application/dash+xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    const/4 v1, 0x2

    goto :goto_5

    :sswitch_2
    const-string v7, "application/vnd.ms-sstr+xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    const/4 v1, 0x1

    goto :goto_5

    :sswitch_3
    const-string v7, "application/x-mpegURL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_0

    goto :goto_9

    :goto_6
    :pswitch_0
    move v2, v4

    goto :goto_9

    :goto_7
    :pswitch_1
    move v2, v5

    goto :goto_9

    :cond_f
    :pswitch_2
    move v2, v6

    goto :goto_9

    :goto_8
    :pswitch_3
    move v2, v3

    .line 19
    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->mediaSourceFactories:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    const/16 v1, 0x44

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No suitable media source factory found for content type: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v7

    const v3, -0x800001

    if-nez v2, :cond_11

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    cmp-long v2, v9, v7

    if-nez v2, :cond_15

    :cond_11
    iget v2, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_12

    iget v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_15

    :cond_12
    iget v2, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_13

    iget v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_15

    :cond_13
    iget-wide v9, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v2, v9, v7

    if-nez v2, :cond_14

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    cmp-long v2, v9, v7

    if-nez v2, :cond_15

    :cond_14
    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_1b

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1b

    .line 23
    :cond_15
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    .line 24
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v9, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v2, v9, v7

    if-nez v2, :cond_16

    .line 25
    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 26
    :cond_16
    iput-wide v9, v1, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    .line 27
    iget v2, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v4, v2, v3

    if-nez v4, :cond_17

    .line 28
    iget v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 29
    :cond_17
    iput v2, v1, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    .line 30
    iget v2, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_18

    .line 31
    iget v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    .line 32
    :cond_18
    iput v2, v1, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    .line 33
    iget-wide v2, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v4, v2, v7

    if-nez v4, :cond_19

    .line 34
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 35
    :cond_19
    iput-wide v2, v1, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    .line 36
    iget-wide v2, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long p1, v2, v7

    if-nez p1, :cond_1a

    .line 37
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    .line 38
    :cond_1a
    iput-wide v2, v1, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    .line 39
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 40
    :cond_1b
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 41
    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->subtitles:Ljava/util/List;

    .line 42
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v6

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 44
    aput-object v0, v2, v5

    .line 45
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 46
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_1c

    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto :goto_a

    .line 49
    :cond_1c
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 52
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 53
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 58
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 59
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 60
    throw p0

    :cond_1d
    :goto_a
    move-object v1, v0

    .line 61
    iget-object p0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v4, v7

    if-nez v0, :cond_1e

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    if-nez p0, :cond_1e

    goto :goto_b

    .line 62
    :cond_1e
    new-instance p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    .line 63
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    .line 64
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    xor-int/2addr v6, v7

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJZZZ)V

    move-object v1, p0

    .line 65
    :goto_b
    iget-object p0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 66
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-nez p0, :cond_1f

    goto :goto_c

    :cond_1f
    const-string p0, "DefaultMediaSourceFactory"

    const-string p1, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
