.class public final Lcom/google/android/exoplayer2/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public adTagUri:Landroid/net/Uri;

.field public adsId:Ljava/lang/Object;

.field public clipRelativeToDefaultPosition:Z

.field public clipRelativeToLiveWindow:Z

.field public clipStartPositionMs:J

.field public clipStartsAtKeyFrame:Z

.field public customCacheKey:Ljava/lang/String;

.field public drmForceDefaultLicenseUri:Z

.field public drmKeySetId:[B

.field public drmLicenseRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public drmLicenseUri:Landroid/net/Uri;

.field public drmMultiSession:Z

.field public drmPlayClearContentWithoutKey:Z

.field public drmSessionForClearTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public drmUuid:Ljava/util/UUID;

.field public liveMaxOffsetMs:J

.field public liveMaxPlaybackSpeed:F

.field public liveMinOffsetMs:J

.field public liveMinPlaybackSpeed:F

.field public liveTargetOffsetMs:J

.field public mediaId:Ljava/lang/String;

.field public mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field public mimeType:Ljava/lang/String;

.field public streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem$Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    const v0, -0x800001

    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_4

    .line 3
    new-instance v12, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 4
    iget-object v14, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    if-eqz v14, :cond_2

    .line 5
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iget-object v15, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmMultiSession:Z

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmForceDefaultLicenseUri:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmPlayClearContentWithoutKey:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmKeySetId:[B

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v13 .. v22}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[BLcom/google/android/exoplayer2/MediaItem$1;)V

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 6
    :goto_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adTagUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    new-instance v6, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsId:Ljava/lang/Object;

    invoke-direct {v6, v2, v7, v1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    move-object/from16 v16, v12

    goto :goto_4

    :cond_4
    move-object/from16 v16, v1

    .line 7
    :goto_4
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem;

    .line 8
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const-string v2, ""

    :goto_5
    move-object v14, v2

    new-instance v15, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartPositionMs:J

    const-wide/high16 v5, -0x8000000000000000L

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToLiveWindow:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToDefaultPosition:Z

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartsAtKeyFrame:Z

    const/4 v10, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;-><init>(JJZZZLcom/google/android/exoplayer2/MediaItem$1;)V

    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    iget v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    iget v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-wide/from16 v22, v7

    move/from16 v24, v9

    move/from16 v25, v10

    invoke-direct/range {v17 .. v25}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    .line 9
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    sget-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    :goto_6
    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object v13, v1

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v19}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v1
.end method
