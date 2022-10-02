.class public Lcom/motorola/camera/editor/parser/XMPStream;
.super Ljava/io/InputStream;
.source "XMPStream.java"


# instance fields
.field public chunk:I

.field public extended:Ljava/lang/String;

.field public status:I

.field public stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    .line 4
    new-instance v0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/camera/editor/parser/XMPStream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-byte p0, v1, v2

    :goto_0
    return p0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    if-lez v0, :cond_1

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    sub-int/2addr v0, p3

    .line 4
    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->read([BII)I

    move-result p0

    return p0

    .line 6
    :cond_1
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v4, -0x28

    if-eq v0, v4, :cond_2

    return v2

    .line 8
    :cond_2
    iput v3, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    goto :goto_1

    :cond_3
    if-eq v0, v3, :cond_10

    if-ne v0, v1, :cond_4

    goto/16 :goto_7

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v4, -0x27

    const/4 v5, 0x0

    if-eq v0, v4, :cond_e

    const/16 v4, -0x40

    if-lt v0, v4, :cond_5

    const/16 v4, -0x31

    if-gt v0, v4, :cond_5

    const/16 v4, -0x3c

    if-eq v0, v4, :cond_5

    const/16 v4, -0x38

    if-eq v0, v4, :cond_5

    const/16 v4, -0x34

    if-eq v0, v4, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    if-eqz v4, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v4, -0x1f

    if-ne v0, v4, :cond_4

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    .line 11
    invoke-virtual {v0}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readShort()S

    move-result v0

    const v4, 0xffff

    and-int/2addr v0, v4

    .line 12
    iget v4, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    if-ne v4, v3, :cond_9

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_7

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    add-int/lit8 v0, v0, -0x2

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    goto :goto_1

    .line 14
    :cond_7
    iget-object v5, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    invoke-virtual {v5, v4}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 15
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x2

    .line 16
    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    goto :goto_5

    .line 17
    :cond_8
    iget-object v5, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v4

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    goto :goto_1

    :cond_9
    const/16 v4, 0x23

    if-ge v0, v4, :cond_a

    .line 18
    iget-object v4, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    add-int/lit8 v0, v0, -0x2

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    goto :goto_1

    .line 19
    :cond_a
    iget-object v6, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    invoke-virtual {v6, v4}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://ns.adobe.com/xmp/extension/\u0000"

    .line 20
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 21
    iget-object v6, p0, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    if-nez v6, :cond_b

    goto :goto_4

    .line 22
    :cond_b
    iget-object v5, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 23
    iget-object v6, p0, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_1

    .line 24
    :cond_c
    iget-object v1, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x2a

    .line 25
    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    goto :goto_5

    .line 26
    :cond_d
    iget-object v5, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v4

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    goto/16 :goto_1

    .line 27
    :cond_e
    :goto_3
    iput v1, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    :goto_4
    move v3, v5

    :goto_5
    if-eqz v3, :cond_10

    .line 28
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    if-lez v0, :cond_10

    if-le v0, p3, :cond_f

    goto :goto_6

    :cond_f
    move p3, v0

    :goto_6
    sub-int/2addr v0, p3

    .line 29
    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->read([BII)I

    move-result p0

    return p0

    :cond_10
    :goto_7
    return v2
.end method
