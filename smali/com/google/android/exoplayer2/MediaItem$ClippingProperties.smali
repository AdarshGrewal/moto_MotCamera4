.class public final Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClippingProperties"
.end annotation


# instance fields
.field public final endPositionMs:J

.field public final relativeToDefaultPosition:Z

.field public final relativeToLiveWindow:Z

.field public final startPositionMs:J

.field public final startsAtKeyFrame:Z


# direct methods
.method public constructor <init>(JJZZZLcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    .line 4
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    .line 5
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    .line 6
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    .line 3
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    add-int/2addr v0, p0

    return v0
.end method
