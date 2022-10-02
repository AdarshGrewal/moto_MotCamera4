.class public Lcom/morphoinc/app/panoramagp3/PanoramaGP3ImageFormat;
.super Ljava/lang/Object;
.source "PanoramaGP3ImageFormat.java"


# direct methods
.method public static getImageFormat(Landroid/media/Image;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p0

    if-ne p0, v0, :cond_0

    const-string p0, "YUV420_PLANAR"

    return-object p0

    :cond_0
    const-string p0, "YVU420_SEMIPLANAR"

    return-object p0
.end method
