.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "PeekSource.java"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final buffer:Lokio/Buffer;

.field public closed:Z

.field public expectedPos:I

.field public expectedSegment:Lokio/Segment;

.field public pos:J

.field public final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 3
    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 4
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object p1, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz p1, :cond_0

    .line 5
    iget p1, p1, Lokio/Segment;->pos:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lokio/PeekSource;->expectedPos:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b

    .line 1
    iget-boolean v3, p0, Lokio/PeekSource;->closed:Z

    if-nez v3, :cond_a

    .line 2
    iget-object v3, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v3, v4, :cond_0

    iget v3, p0, Lokio/PeekSource;->expectedPos:I

    iget v4, v4, Lokio/Segment;->pos:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Peek source is invalid because upstream source was used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    return-wide v0

    .line 4
    :cond_2
    iget-object v2, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    iget-wide v3, p0, Lokio/PeekSource;->pos:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 p0, -0x1

    return-wide p0

    .line 5
    :cond_3
    iget-object v2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-nez v2, :cond_4

    iget-object v2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_4

    .line 6
    iput-object v2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 7
    iget v2, v2, Lokio/Segment;->pos:I

    iput v2, p0, Lokio/PeekSource;->expectedPos:I

    .line 8
    :cond_4
    iget-object v2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    iget-wide v4, p0, Lokio/PeekSource;->pos:J

    sub-long/2addr v2, v4

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    iget-object v2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-wide v10, p0, Lokio/PeekSource;->pos:J

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_9

    .line 10
    iget-wide v4, v2, Lokio/Buffer;->size:J

    move-wide v6, v10

    move-wide v8, p2

    invoke-static/range {v4 .. v9}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    cmp-long v3, p2, v0

    if-nez v3, :cond_5

    goto :goto_4

    .line 11
    :cond_5
    iget-wide v3, p1, Lokio/Buffer;->size:J

    add-long/2addr v3, p2

    iput-wide v3, p1, Lokio/Buffer;->size:J

    .line 12
    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    .line 13
    :goto_1
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, v10, v3

    if-ltz v5, :cond_6

    sub-long/2addr v10, v3

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_6
    move-wide v3, p2

    :goto_2
    cmp-long v5, v3, v0

    if-lez v5, :cond_8

    .line 14
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v5

    .line 15
    iget v6, v5, Lokio/Segment;->pos:I

    int-to-long v6, v6

    add-long/2addr v6, v10

    long-to-int v6, v6

    iput v6, v5, Lokio/Segment;->pos:I

    long-to-int v7, v3

    add-int/2addr v6, v7

    .line 16
    iget v7, v5, Lokio/Segment;->limit:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lokio/Segment;->limit:I

    .line 17
    iget-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_7

    .line 18
    iput-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    iput-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_3

    .line 19
    :cond_7
    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v6, v5}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 20
    :goto_3
    iget v6, v5, Lokio/Segment;->limit:I

    iget v5, v5, Lokio/Segment;->pos:I

    sub-int/2addr v6, v5

    int-to-long v5, v6

    sub-long/2addr v3, v5

    .line 21
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v10, v0

    goto :goto_2

    .line 22
    :cond_8
    :goto_4
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/PeekSource;->pos:J

    return-wide p2

    .line 23
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
