.class public final Lcom/google/android/exoplayer2/text/TextRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

.field public final decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

.field public decoderReplacementState:I

.field public finalStreamEndPositionUs:J

.field public final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field public inputStreamEnded:Z

.field public nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

.field public nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

.field public nextSubtitleEventIndex:I

.field public final output:Lcom/google/android/exoplayer2/text/TextOutput;

.field public final outputHandler:Landroid/os/Handler;

.field public outputStreamEnded:Z

.field public streamFormat:Lcom/google/android/exoplayer2/Format;

.field public subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

.field public waitingForKeyFrame:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outputLooper"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    const/4 v1, 0x3

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    return-void
.end method


# virtual methods
.method public final clearOutput()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v1, p0, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/text/TextOutput;->onCues(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "TextRenderer"

    return-object p0
.end method

.method public final getNextEventTime()J
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 5
    iget-object v3, v3, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v3}, Lcom/google/android/exoplayer2/text/Subtitle;->getEventTimeCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iget p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/text/Subtitle;->getEventTime(I)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    add-long/2addr v1, v3

    :goto_0
    return-wide v1
.end method

.method public final handleDecoderError(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->replaceDecoder()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/text/TextOutput;->onCues(Ljava/util/List;)V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final initDecoder()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_b

    const/4 v3, -0x1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v0, v3

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "application/ttml+xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "application/x-subrip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "application/cea-708"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "application/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "text/x-ssa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v4, "application/pgs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :sswitch_a
    const-string v0, "application/dvbsubs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 7
    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;-><init>()V

    goto :goto_2

    .line 8
    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;-><init>()V

    goto :goto_2

    .line 9
    :pswitch_2
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;

    iget v1, v2, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;-><init>(ILjava/util/List;)V

    goto :goto_2

    .line 10
    :pswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    const-wide/16 v3, 0x3e80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;-><init>(Ljava/lang/String;IJ)V

    goto :goto_2

    .line 11
    :pswitch_4
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;

    iget-object v1, v2, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;-><init>(Ljava/util/List;)V

    goto :goto_2

    .line 12
    :pswitch_5
    new-instance v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;

    iget-object v1, v2, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;-><init>(Ljava/util/List;)V

    goto :goto_2

    .line 13
    :pswitch_6
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;-><init>()V

    goto :goto_2

    .line 14
    :pswitch_7
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;-><init>()V

    goto :goto_2

    .line 15
    :pswitch_8
    new-instance v0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;-><init>()V

    goto :goto_2

    .line 16
    :pswitch_9
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;

    iget-object v1, v2, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;-><init>(Ljava/util/List;)V

    .line 17
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    return-void

    .line 18
    :cond_b
    :goto_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_4
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_a
        -0x4a6813e3 -> :sswitch_9
        -0x3d28a9ba -> :sswitch_8
        -0x3be2f26c -> :sswitch_7
        0x2935f49f -> :sswitch_6
        0x310bebca -> :sswitch_5
        0x37713300 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDisabled()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->release()V

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 0
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

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 5
    iget p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->replaceDecoder()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p0}, Lcom/google/android/exoplayer2/decoder/Decoder;->flush()V

    :goto_0
    return-void
.end method

.method public onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "formats",
            "startPositionUs",
            "offsetUs"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->initDecoder()V

    :goto_0
    return-void
.end method

.method public final releaseBuffers()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->release()V

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->release()V

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    :cond_1
    return-void
.end method

.method public render(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "elapsedRealtimeUs"
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 4
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    .line 5
    :cond_0
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    if-eqz p3, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-nez p3, :cond_2

    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->setPositionUs(J)V

    .line 10
    :try_start_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {p3}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->handleDecoderError(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    return-void

    .line 14
    :cond_2
    :goto_0
    iget p3, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    return-void

    .line 15
    :cond_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    move p3, v1

    :goto_1
    cmp-long v2, v2, p1

    if-gtz v2, :cond_5

    .line 17
    iget p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    move p3, p4

    goto :goto_1

    :cond_4
    move p3, v1

    .line 19
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 20
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p3, :cond_9

    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_9

    .line 22
    iget v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne v2, v0, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->replaceDecoder()V

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 25
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_2

    .line 26
    :cond_7
    iget-wide v4, v2, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->timeUs:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_9

    .line 27
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz p3, :cond_8

    .line 28
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->release()V

    .line 29
    :cond_8
    iget-object p3, v2, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    .line 30
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-wide v4, v2, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long v4, p1, v4

    invoke-interface {p3, v4, v5}, Lcom/google/android/exoplayer2/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result p3

    .line 32
    iput p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 33
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 34
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move p3, p4

    :cond_9
    :goto_2
    if-eqz p3, :cond_b

    .line 35
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 36
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 38
    iget-object v2, p3, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lcom/google/android/exoplayer2/text/Subtitle;

    .line 39
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-wide v4, p3, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long/2addr p1, v4

    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz p2, :cond_a

    .line 42
    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 43
    :cond_a
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/text/TextOutput;->onCues(Ljava/util/List;)V

    .line 44
    :cond_b
    :goto_3
    iget p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne p1, v0, :cond_c

    return-void

    .line 45
    :cond_c
    :goto_4
    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    if-nez p1, :cond_14

    .line 46
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-nez p1, :cond_e

    .line 47
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-nez p1, :cond_d

    return-void

    .line 50
    :cond_d
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 51
    :cond_e
    iget p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne p2, p4, :cond_f

    const/4 p2, 0x4

    .line 52
    iput p2, p1, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    .line 53
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 56
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 57
    iput v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    return-void

    .line 58
    :cond_f
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/exoplayer2/BaseRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_13

    .line 59
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 60
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 61
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    goto :goto_6

    .line 62
    :cond_10
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p2, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    if-nez p2, :cond_11

    return-void

    .line 63
    :cond_11
    iget-wide p2, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 64
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 65
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isKeyFrame()Z

    move-result p3

    if-nez p3, :cond_12

    move p3, p4

    goto :goto_5

    :cond_12
    move p3, v1

    :goto_5
    and-int/2addr p2, p3

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    .line 66
    :goto_6
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    if-nez p2, :cond_c

    .line 67
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 68
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 70
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_13
    const/4 p1, -0x3

    if-ne p2, p1, :cond_c

    return-void

    :catch_1
    move-exception p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->handleDecoderError(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    :cond_14
    return-void
.end method

.method public final replaceDecoder()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->initDecoder()V

    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    check-cast p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v0, "text/vtt"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "text/x-ssa"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-subrip"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-quicktime-tx3g"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-608"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-cea-608"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/dvbsubs"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/pgs"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_3

    .line 14
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez p0, :cond_2

    const/4 p0, 0x4

    goto :goto_2

    :cond_2
    const/4 p0, 0x2

    :goto_2
    or-int/2addr p0, v2

    or-int/2addr p0, v2

    return p0

    .line 15
    :cond_3
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method
