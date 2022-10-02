.class public Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;
.super Ljava/lang/Object;
.source "HistogramComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferHolder"
.end annotation


# instance fields
.field public final mHeight:I

.field public mUVBuff:[B

.field public final mWidth:I

.field public mYBuff:[B


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;Landroid/media/Image;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mHeight:I

    .line 5
    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    .line 6
    div-int/lit8 v2, v2, 0x8

    mul-int/2addr v3, v2

    .line 7
    new-array v3, v3, [B

    move v4, v0

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    mul-int/lit8 v6, v4, 0x8

    mul-int/2addr v6, v1

    .line 8
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    invoke-virtual {p1, v3, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 10
    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mYBuff:[B

    .line 12
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HISTOGRAM_STYLE_RGB:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 16
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mHeight:I

    div-int/lit8 p2, p2, 0x2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    mul-int/2addr p2, v2

    new-array p2, p2, [B

    move v2, v0

    .line 17
    :goto_1
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    mul-int v3, v0, v1

    .line 18
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    invoke-virtual {p1, p2, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 20
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    mul-int/2addr v3, v1

    .line 21
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mWidth:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p2, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 23
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mUVBuff:[B

    :cond_2
    return-void
.end method
