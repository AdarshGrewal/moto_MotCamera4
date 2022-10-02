.class public final Lcom/google/android/exoplayer2/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;,
        Lcom/google/android/exoplayer2/MediaItem$Subtitle;,
        Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;,
        Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$Builder;
    }
.end annotation


# instance fields
.field public final clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

.field public final liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public final mediaId:Ljava/lang/String;

.field public final mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field public final playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 5
    iput-object p5, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 2
    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    .line 4
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToLiveWindow:Z

    .line 5
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToDefaultPosition:Z

    .line 6
    iget-wide v2, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartPositionMs:J

    .line 7
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartsAtKeyFrame:Z

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    .line 11
    iget-wide v2, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    .line 12
    iget-wide v2, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    .line 13
    iget v2, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    .line 14
    iget v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iput v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    .line 15
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    if-eqz p0, :cond_1

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->customCacheKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->streamKeys:Ljava/util/List;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->subtitles:Ljava/util/List;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    .line 21
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 22
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v1, :cond_0

    .line 23
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    .line 24
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    .line 25
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmMultiSession:Z

    .line 26
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmForceDefaultLicenseUri:Z

    .line 27
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmPlayClearContentWithoutKey:Z

    .line 28
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    .line 29
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmKeySetId:[B

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-eqz p0, :cond_1

    .line 32
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adTagUri:Landroid/net/Uri;

    .line 33
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    iput-object p0, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsId:Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaMetadata;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
