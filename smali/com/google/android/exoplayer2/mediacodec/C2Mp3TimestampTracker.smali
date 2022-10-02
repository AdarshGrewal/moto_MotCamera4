.class public final Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;
.super Ljava/lang/Object;
.source "C2Mp3TimestampTracker.java"


# instance fields
.field public anchorTimestampUs:J

.field public processedFrames:J

.field public seenInvalidMpegAudioHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBufferTimestampUs(J)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleRate"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    const-wide/16 v4, 0x211

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    div-long/2addr v2, p1

    const-wide/16 p0, 0x0

    .line 2
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method
