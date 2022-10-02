.class public final Lcom/motorola/camera/utility/SurfaceUtil;
.super Ljava/lang/Object;
.source "SurfaceUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/SurfaceUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/utility/SurfaceUtil;

    invoke-direct {v0}, Lcom/motorola/camera/utility/SurfaceUtil;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/SurfaceUtil;->INSTANCE:Lcom/motorola/camera/utility/SurfaceUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newDelayPreviewImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;
    .locals 7

    const-string v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/SurfaceUtil;->INSTANCE:Lcom/motorola/camera/utility/SurfaceUtil;

    invoke-virtual {v0, p1, p3, p4}, Lcom/motorola/camera/utility/SurfaceUtil;->getUsage(ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J

    move-result-wide v5

    .line 2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    const-string p1, "newInstance(size.width, \u2026format, maxImages, usage)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, p1, p5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-object p0
.end method

.method public static final newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;
    .locals 7

    const-string v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/SurfaceUtil;->INSTANCE:Lcom/motorola/camera/utility/SurfaceUtil;

    invoke-virtual {v0, p1, p3, p4}, Lcom/motorola/camera/utility/SurfaceUtil;->getUsage(ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J

    move-result-wide v5

    .line 2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    const-string p1, "newInstance(size.width, \u2026format, maxImages, usage)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;
    .locals 7

    const-string v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/SurfaceUtil;->INSTANCE:Lcom/motorola/camera/utility/SurfaceUtil;

    invoke-virtual {v0, p1, p3, p4}, Lcom/motorola/camera/utility/SurfaceUtil;->getUsage(ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J

    move-result-wide v5

    .line 2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 3
    new-instance p0, Lcom/motorola/camera/utility/ImageReaderWrapper;

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;-><init>(Landroid/media/ImageReader;)V

    return-object p0
.end method


# virtual methods
.method public final getUsage(ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGrallocUsageFlags:[Ljava/lang/String;

    invoke-static {p2}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p2

    aget-object p0, p0, p2

    .line 2
    sget-object p2, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->DEFAULT:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x23f7b020

    if-eq v0, v1, :cond_3

    const v1, 0x5209eeeb

    if-eq v0, v1, :cond_1

    const v1, 0x5c13d641

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_1
    const-string v0, "mtk_g9x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    sget-object p2, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->MTKG9X:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    goto :goto_1

    :cond_3
    const-string v0, "qsm8250"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    sget-object p2, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->QSM8250:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    goto :goto_1

    :cond_5
    :goto_0
    const-string v0, "GrallocUsageFlags not found: "

    .line 6
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SurfaceUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_6
    :goto_1
    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J

    move-result-wide p0

    return-wide p0
.end method
