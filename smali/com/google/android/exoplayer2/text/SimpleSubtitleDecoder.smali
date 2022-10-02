.class public abstract Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
        "Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;",
        "Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 p1, 0x2

    new-array v0, p1, [Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    new-array p1, p1, [Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    .line 2
    iget p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length p1, p0

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object v0, p0, v1

    const/16 v2, 0x400

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "inputBuffer",
            "outputBuffer",
            "reset"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    check-cast p2, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;

    move-result-object v3

    .line 5
    iget-wide v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLcom/google/android/exoplayer2/text/Subtitle;J)V

    .line 6
    iget p0, p2, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    iput p0, p2, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-object p0
.end method

.method public abstract decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "size",
            "reset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method public setPositionUs(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    return-void
.end method
