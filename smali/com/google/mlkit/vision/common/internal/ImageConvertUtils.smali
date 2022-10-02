.class public Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"


# direct methods
.method public static convertToNv21Buffer(Lcom/google/mlkit/vision/common/InputImage;Z)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0    # Lcom/google/mlkit/vision/common/InputImage;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "null reference"

    if-eq v0, v2, :cond_8

    const/16 v2, 0x11

    if-eq v0, v2, :cond_5

    const/16 v2, 0x23

    if-eq v0, v2, :cond_4

    const v1, 0x32315659

    if-ne v0, v1, :cond_3

    .line 2
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/lit8 v1, v0, 0x6

    if-eqz p1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    mul-int/lit8 v3, v1, 0x4

    if-ge v2, v3, :cond_1

    .line 8
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int v2, v1, v1

    if-ge v0, v2, :cond_2

    add-int v2, v3, v0

    rem-int/lit8 v4, v0, 0x2

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    .line 9
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p1

    .line 10
    :cond_3
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const/16 p1, 0xd

    const-string v0, "Unsupported image format"

    invoke-direct {p0, v0, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 11
    :cond_4
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    :cond_5
    if-eqz p1, :cond_7

    .line 12
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 13
    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    .line 17
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 18
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_3

    .line 19
    :cond_7
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 20
    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_3
    return-object p0

    .line 21
    :cond_8
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method
