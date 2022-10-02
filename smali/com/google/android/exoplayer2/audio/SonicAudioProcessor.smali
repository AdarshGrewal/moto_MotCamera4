.class public final Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field public inputBytes:J

.field public inputEnded:Z

.field public outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public outputBytes:J

.field public pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field public pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field public pendingOutputSampleRate:I

.field public pendingSonicRecreation:Z

.field public pitch:F

.field public shortBuffer:Ljava/nio/ShortBuffer;

.field public sonic:Lcom/google/android/exoplayer2/audio/Sonic;

.field public speed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 4
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 8
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputAudioFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 5
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    return-object v2

    .line 7
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw p0
.end method

.method public flush()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 4
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    if-eqz v3, :cond_0

    .line 5
    new-instance v3, Lcom/google/android/exoplayer2/audio/Sonic;

    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v6, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v7, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    iget v8, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    iget v9, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/audio/Sonic;-><init>(IIFFI)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_1

    .line 7
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 8
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 9
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    .line 10
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 11
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 12
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 13
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 14
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    .line 15
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    .line 16
    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    .line 17
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 19
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 20
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 9
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    iget v4, v0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    div-int/2addr v3, v4

    iget v4, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 10
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v5, v0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 11
    iget v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 12
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v0, v0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v0

    mul-int/2addr v2, v0

    invoke-static {v4, v3, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 17
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isActive()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    sub-float/2addr v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz p0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget p0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public queueEndOfStream()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_2

    .line 2
    iget v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 3
    iget v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v3, v0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v2, v3

    .line 4
    iget v4, v0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    mul-float/2addr v4, v3

    .line 5
    iget v3, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    int-to-float v5, v1

    div-float/2addr v5, v2

    iget v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    div-float/2addr v5, v4

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v5, v2

    float-to-int v2, v5

    add-int/2addr v3, v2

    .line 6
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v4, v0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    .line 7
    invoke-virtual {v0, v2, v1, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    const/4 v2, 0x0

    move v4, v2

    .line 8
    :goto_0
    iget v5, v0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v7, v5, v6

    if-ge v4, v7, :cond_0

    .line 9
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    aput-short v2, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    add-int/2addr v5, v1

    iput v5, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 12
    iget v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    if-le v1, v3, :cond_1

    .line 13
    iput v3, v0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 14
    :cond_1
    iput v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 15
    iput v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 16
    iput v2, v0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    :cond_2
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 6
    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 7
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result p0

    iget v3, v0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    div-int/2addr p0, v3

    mul-int/2addr v3, p0

    mul-int/lit8 v3, v3, 0x2

    .line 8
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v5, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    invoke-virtual {v0, v4, v5, p0}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 9
    iget v5, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v6, v0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v6

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v5, v3}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 10
    iget v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    add-int/2addr v1, p0

    iput v1, v0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 3
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 14
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method
