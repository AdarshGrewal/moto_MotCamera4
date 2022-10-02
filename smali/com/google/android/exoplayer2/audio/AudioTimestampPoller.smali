.class public final Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;
    }
.end annotation


# instance fields
.field public final audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

.field public initialTimestampPositionFrames:J

.field public initializeSystemTimeUs:J

.field public lastTimestampSampleTimeUs:J

.field public sampleIntervalUs:J

.field public state:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioTrack"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    :cond_0
    return-void
.end method

.method public final updateState(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const-wide/32 v0, 0x989680

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    goto :goto_0

    .line 5
    :cond_2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    const-wide/16 v2, -0x1

    .line 7
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 9
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    :goto_0
    return-void
.end method
