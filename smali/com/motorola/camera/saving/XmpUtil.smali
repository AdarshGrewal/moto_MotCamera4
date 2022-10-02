.class public Lcom/motorola/camera/saving/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/XmpUtil$Section;
    }
.end annotation


# direct methods
.method public static addAppXSegments(I[BLjava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v3, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v3, v1}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>(Lcom/motorola/camera/saving/XmpUtil$1;)V

    add-int/lit16 p0, p0, 0xe0

    .line 3
    iput p0, v3, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    .line 4
    array-length p0, p1

    iput p0, v3, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    .line 5
    iput-object p1, v3, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    .line 6
    iput-boolean v2, v3, Lcom/motorola/camera/saving/XmpUtil$Section;->isBlob:Z

    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    return v0

    :cond_2
    move p0, v0

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/16 v3, 0xe1

    if-ge p0, p1, :cond_4

    .line 8
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget p1, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne p1, v3, :cond_3

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object p1, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {p1}, Lcom/motorola/camera/saving/XmpUtil;->hasXmpHeader([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p2, p0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 10
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget p1, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne p1, v3, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    move p1, v0

    .line 12
    :goto_2
    invoke-interface {p2, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p2, p0

    .line 15
    :goto_3
    :try_start_0
    invoke-static {p3, p2}, Lcom/motorola/camera/saving/XmpUtil;->writeJpegToStream(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method public static createSection([B[B)Lcom/motorola/camera/saving/XmpUtil$Section;
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0xfde8

    if-le v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4b

    new-array v2, v0, [B

    .line 3
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length p1, p1

    array-length v3, p0

    invoke-static {p0, v4, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance p0, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>(Lcom/motorola/camera/saving/XmpUtil$1;)V

    const/16 p1, 0xe1

    .line 6
    iput p1, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    add-int/lit8 v0, v0, 0x2

    .line 7
    iput v0, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    .line 8
    iput-object v2, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    .line 9
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static extractXmpMetadata(Ljava/io/InputStream;)Lcom/motorola/camera/saving/XmpData;
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/XmpUtil$Section;

    .line 3
    iget-object v4, v3, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {v4}, Lcom/motorola/camera/saving/XmpUtil;->hasXmpHeader([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    iget-object v2, v3, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    .line 5
    array-length v4, v2

    sub-int/2addr v4, v0

    :goto_1
    if-lt v4, v0, :cond_3

    .line 6
    aget-byte v5, v2, v4

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_2

    add-int/lit8 v5, v4, -0x1

    .line 7
    aget-byte v5, v2, v5

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 8
    :cond_3
    array-length v4, v2

    :goto_2
    const/16 v2, 0x1d

    sub-int/2addr v4, v2

    .line 9
    new-array v5, v4, [B

    .line 10
    iget-object v3, v3, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    const/4 v6, 0x0

    invoke-static {v3, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :try_start_0
    invoke-static {v5}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object v2
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    :cond_4
    if-eqz v2, :cond_5

    .line 12
    new-instance p0, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {p0, v2, v1}, Lcom/motorola/camera/saving/XmpData;-><init>(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)V

    move-object v1, p0

    :cond_5
    return-object v1
.end method

.method public static hasXmpHeader([B)Z
    .locals 3

    .line 1
    array-length v0, p0

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    new-array v0, v1, [B

    .line 2
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v2
.end method

.method public static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/motorola/camera/saving/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_b

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    if-eq v3, v2, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    .line 5
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_3

    .line 6
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v0

    :cond_3
    const/16 v5, 0xda

    const/4 v6, 0x0

    if-ne v3, v5, :cond_5

    if-nez p1, :cond_4

    .line 7
    :try_start_4
    new-instance p1, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {p1, v0}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>(Lcom/motorola/camera/saving/XmpUtil$1;)V

    .line 8
    iput v3, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    .line 9
    iput v4, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    .line 10
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    .line 11
    array-length v3, v2

    invoke-virtual {p0, v2, v6, v3}, Ljava/io/InputStream;->read([BII)I

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    :cond_4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-object v1

    .line 14
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 15
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v5, v4, :cond_9

    if-ne v7, v4, :cond_6

    goto :goto_3

    :cond_6
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v4, v7

    if-eqz p1, :cond_8

    const/16 v5, 0xe1

    if-ne v3, v5, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, -0x2

    int-to-long v3, v4

    .line 16
    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    .line 17
    :cond_8
    :goto_2
    new-instance v5, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v5, v0}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>(Lcom/motorola/camera/saving/XmpUtil$1;)V

    .line 18
    iput v3, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    .line 19
    iput v4, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    add-int/lit8 v4, v4, -0x2

    .line 20
    new-array v3, v4, [B

    iput-object v3, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    .line 21
    invoke-virtual {p0, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    .line 22
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 23
    :cond_9
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-object v0

    :cond_a
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    return-object v1

    :cond_b
    :goto_4
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_c

    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 24
    :catch_6
    :cond_c
    throw p1

    :catch_7
    if-eqz p0, :cond_d

    .line 25
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    :cond_d
    return-object v0
.end method

.method public static serializeMeta(Lcom/adobe/xmp/XMPMeta;)[B
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/16 v1, 0x40

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    const/16 v1, 0x10

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    .line 4
    invoke-static {p0, v0}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static stripAppSegments(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget v2, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    const/16 v3, 0xe1

    if-gt v3, v2, :cond_1

    const/16 v3, 0xef

    if-gt v2, v3, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5
    :cond_2
    :try_start_0
    invoke-static {p1, p0}, Lcom/motorola/camera/saving/XmpUtil;->writeJpegToStream(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static writeJpegToStream(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/saving/XmpUtil$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xff

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xd8

    .line 2
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/XmpUtil$Section;

    .line 4
    iget-boolean v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->isBlob:Z

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 6
    iget v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 7
    iget v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    if-lez v2, :cond_0

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 8
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 9
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 10
    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeXmpMeta(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;Lcom/motorola/camera/saving/XmpData;)Z
    .locals 16

    move-object/from16 v0, p2

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_1

    return v3

    .line 2
    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/saving/XmpUtil;->serializeMeta(Lcom/adobe/xmp/XMPMeta;)[B

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    .line 4
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v6, "MD5"

    .line 5
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 6
    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 8
    new-instance v7, Ljava/util/Formatter;

    invoke-direct {v7, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 9
    array-length v8, v6

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_3

    aget-byte v10, v6, v9

    const-string v11, "%02x"

    new-array v12, v2, [Ljava/lang/Object;

    add-int/lit16 v10, v10, 0x100

    .line 10
    rem-int/lit16 v10, v10, 0x100

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v3

    invoke-virtual {v7, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :catch_0
    move-object v5, v4

    :goto_2
    :try_start_1
    const-string v6, "http://ns.adobe.com/xmp/note/"

    const-string v7, "HasExtendedXMP"

    .line 12
    move-object v8, v1

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 13
    invoke-virtual {v8, v6, v7, v5, v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 15
    array-length v7, v0

    const v8, 0xfde8

    div-int/2addr v7, v8

    new-array v9, v8, [B

    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/16 v11, 0x4b

    new-array v11, v11, [B

    const-string v12, "http://ns.adobe.com/xmp/extension/\u0000"

    .line 17
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x23

    invoke-static {v12, v3, v11, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v12, v3, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v13

    const/4 v12, 0x4

    new-array v13, v12, [B

    .line 20
    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 21
    array-length v15, v0

    invoke-virtual {v14, v3, v15}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 22
    invoke-static {v13, v3, v11, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v12

    new-array v13, v12, [B

    .line 23
    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    move v15, v3

    :goto_3
    if-ge v15, v7, :cond_4

    mul-int v2, v15, v8

    .line 24
    invoke-virtual {v14, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 25
    invoke-static {v13, v3, v11, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-virtual {v10, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-static {v9, v11}, Lcom/motorola/camera/saving/XmpUtil;->createSection([B[B)Lcom/motorola/camera/saving/XmpUtil$Section;

    move-result-object v2

    .line 28
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    goto :goto_3

    .line 29
    :cond_4
    array-length v0, v0

    mul-int/2addr v7, v8

    sub-int/2addr v0, v7

    if-lez v0, :cond_5

    .line 30
    invoke-virtual {v14, v3, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 31
    invoke-static {v13, v3, v11, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    new-array v0, v0, [B

    .line 33
    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 34
    invoke-static {v0, v11}, Lcom/motorola/camera/saving/XmpUtil;->createSection([B[B)Lcom/motorola/camera/saving/XmpUtil$Section;

    move-result-object v0

    .line 35
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v0, p0

    goto :goto_4

    :catch_1
    return v3

    :cond_6
    move-object/from16 v0, p0

    move-object v6, v4

    .line 36
    :goto_4
    invoke-static {v0, v3}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-static {v1}, Lcom/motorola/camera/saving/XmpUtil;->serializeMeta(Lcom/adobe/xmp/XMPMeta;)[B

    move-result-object v1

    const/16 v2, 0xe1

    if-nez v1, :cond_7

    goto :goto_5

    .line 38
    :cond_7
    array-length v5, v1

    const v7, 0xffde

    if-le v5, v7, :cond_8

    :goto_5
    move-object v1, v4

    goto :goto_6

    .line 39
    :cond_8
    array-length v5, v1

    const/16 v7, 0x1d

    add-int/2addr v5, v7

    new-array v8, v5, [B

    const-string v9, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 40
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9, v3, v8, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    array-length v9, v1

    invoke-static {v1, v3, v8, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    new-instance v1, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v1, v4}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>(Lcom/motorola/camera/saving/XmpUtil$1;)V

    .line 43
    iput v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    add-int/lit8 v5, v5, 0x2

    .line 44
    iput v5, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    .line 45
    iput-object v8, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    :goto_6
    if-nez v1, :cond_9

    return v3

    :cond_9
    if-eqz v0, :cond_10

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-gt v5, v7, :cond_a

    goto :goto_a

    .line 47
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget v5, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne v5, v2, :cond_d

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v2, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    .line 50
    array-length v5, v2

    const/4 v7, 0x6

    if-ge v5, v7, :cond_b

    goto :goto_7

    :cond_b
    :try_start_2
    new-array v5, v7, [B

    .line 51
    invoke-static {v2, v3, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    new-instance v2, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v2, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v5, "Exif\u0000\u0000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_c

    const/4 v7, 0x1

    goto :goto_8

    :catch_2
    :cond_c
    :goto_7
    move v7, v3

    :goto_8
    if-eqz v7, :cond_d

    const/4 v7, 0x1

    goto :goto_9

    :cond_d
    move v7, v3

    .line 53
    :goto_9
    invoke-interface {v0, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v2, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {v2}, Lcom/motorola/camera/saving/XmpUtil;->hasXmpHeader([B)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v7, v7, 0x1

    .line 55
    :cond_e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_f

    .line 56
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10
    :goto_a
    if-nez v4, :cond_11

    return v3

    :cond_11
    move-object/from16 v1, p1

    .line 58
    :try_start_3
    invoke-static {v1, v4}, Lcom/motorola/camera/saving/XmpUtil;->writeJpegToStream(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 60
    throw v2

    .line 61
    :catch_3
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return v3
.end method
