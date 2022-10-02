.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/FileName;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/FileName;Ljava/io/File;ZJIIILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/saving/FileName;

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$1:Ljava/io/File;

    iput-boolean p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$2:Z

    iput-wide p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$3:J

    iput p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$4:I

    iput p7, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$5:I

    iput p8, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$6:I

    iput-object p9, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$7:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/saving/FileName;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$1:Ljava/io/File;

    iget-boolean v13, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$2:Z

    iget-wide v6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$3:J

    iget v10, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$4:I

    iget v11, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$5:I

    iget v12, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$6:I

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$7:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;

    .line 1
    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    move-result v2

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    if-eqz v2, :cond_0

    .line 5
    check-cast v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v3

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    .line 7
    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v1, v2}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    new-instance v1, Lcom/motorola/camera/CameraData;

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    .line 11
    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, v1, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;->onProcessingComplete(Lcom/motorola/camera/CameraData;Landroid/os/Bundle;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;->onProcessingFailed()V

    :goto_0
    return-void
.end method
