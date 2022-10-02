.class public Lcom/motorola/camera/saving/SoftJpegCaptureHolder;
.super Lcom/motorola/camera/saving/CaptureHolder;
.source "SoftJpegCaptureHolder.java"


# instance fields
.field public mJpegData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/saving/CaptureHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageData()Lcom/motorola/camera/saving/ImageDataHolder;
    .locals 9

    .line 1
    new-instance v8, Lcom/motorola/camera/saving/ImageDataHolder;

    iget-object v2, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mJpegData:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/saving/ImageDataHolder;-><init>(ILjava/nio/ByteBuffer;II[ILjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-object v8
.end method
