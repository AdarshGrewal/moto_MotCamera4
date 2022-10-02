.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;
.super Ljava/lang/Object;
.source "GalleryThumbnailChangeController.kt"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;
.implements Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$LastCaptureHandler;
.implements Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;
.implements Lcom/motorola/camera/saving/SaveListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGalleryThumbnailChangeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GalleryThumbnailChangeController.kt\ncom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,346:1\n1#2:347\n*E\n"
.end annotation


# instance fields
.field public final eventHandler:Lcom/motorola/camera/EventListener;

.field public executor:Ljava/util/concurrent/ExecutorService;

.field public final onImageAvailable:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/graphics/Bitmap;",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public queryLastCaptureTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

.field public refreshing:Z

.field public updateOnly:Z

.field public visibleCameraData:Lcom/motorola/camera/CameraData;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/motorola/camera/EventListener;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/motorola/camera/EventListener;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/graphics/Bitmap;",
            "-",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onImageAvailable:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public getCameraData()Lcom/motorola/camera/CameraData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final handleCameraData(Lcom/motorola/camera/CameraData;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosProcessingSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V

    .line 5
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz p0, :cond_0

    .line 7
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/SecureMediaIdsManager;->clearMediaIds()V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    move v6, v5

    goto/16 :goto_8

    :cond_4
    if-eqz v3, :cond_3

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-nez v7, :cond_5

    move-object v7, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-eqz v6, :cond_8

    if-nez v7, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    const-string v8, "."

    const/4 v9, 0x2

    .line 13
    invoke-static {v7, v8, v4, v9}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v6, v8, v4, v9}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x6

    .line 14
    invoke-static {v6, v8, v4, v4, v10}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v11

    invoke-virtual {v6, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v11, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v7, v8, v4, v4, v10}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7, v4, v9}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v6

    goto :goto_4

    :cond_8
    :goto_3
    move v6, v4

    :goto_4
    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_5

    :cond_9
    move v6, v4

    .line 16
    :goto_5
    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-nez v7, :cond_a

    move-object v7, v1

    goto :goto_6

    :cond_a
    invoke-virtual {v7}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_6
    if-eqz v6, :cond_b

    goto :goto_1

    :cond_b
    if-eqz v7, :cond_d

    .line 17
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_d

    :cond_c
    :goto_7
    move v6, v4

    goto :goto_8

    .line 18
    :cond_d
    iget v6, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v7, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v6, v7, :cond_e

    goto/16 :goto_1

    :cond_e
    if-ge v6, v7, :cond_f

    goto :goto_7

    :cond_f
    if-eq v7, v6, :cond_c

    goto/16 :goto_1

    :goto_8
    if-nez v2, :cond_10

    if-eqz v3, :cond_13

    :cond_10
    if-eqz v3, :cond_14

    if-nez v2, :cond_12

    :cond_11
    move v2, v4

    goto :goto_9

    .line 19
    :cond_12
    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v2, v3, :cond_11

    move v2, v5

    :goto_9
    if-eqz v2, :cond_14

    :cond_13
    move v2, v5

    goto :goto_a

    :cond_14
    move v2, v4

    .line 20
    :goto_a
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->updateOnly:Z

    if-eqz v6, :cond_1b

    .line 21
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    .line 22
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbData()[B

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbData()[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->updateOnly:Z

    .line 23
    array-length v1, p1

    invoke-static {p1, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-nez v1, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v1

    if-ne v1, v5, :cond_16

    move v4, v5

    :cond_16
    :goto_b
    if-eqz v4, :cond_17

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    goto :goto_c

    .line 25
    :cond_17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez v0, :cond_18

    .line 26
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->SEGMENTATION_FIRST_SHOT:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    goto :goto_c

    .line 27
    :cond_18
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    .line 28
    :goto_c
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V

    goto :goto_d

    .line 29
    :cond_19
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 30
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    .line 31
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->loadThumbnail(Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;)V

    goto :goto_d

    .line 32
    :cond_1a
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V

    :cond_1b
    :goto_d
    return-void
.end method

.method public handleLastCapture(Lcom/motorola/camera/CameraData;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPostCaptureAvailable(ZLcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;)V
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object p1

    .line 3
    new-instance p2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3, p1, p0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v3, "IS_PRIMARY"

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v5, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-eq v4, v5, :cond_5

    .line 7
    sget-object v5, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v4, v5, :cond_6

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    if-le v3, v2, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    return-void

    .line 8
    :cond_7
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    const-string v3, ".dng"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    const/4 v3, 0x2

    if-eqz v0, :cond_a

    .line 11
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 12
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatSupportedByCurrentMode()Z

    move-result v4

    if-eqz v4, :cond_9

    if-ne v3, v0, :cond_9

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    if-eqz v0, :cond_a

    return-void

    .line 16
    :cond_a
    new-instance v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 20
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v4

    if-eq v4, v2, :cond_10

    .line 21
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v5, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v4, v5, :cond_b

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    if-le v0, v2, :cond_b

    goto/16 :goto_6

    .line 22
    :cond_b
    iget-object v0, p1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v4, "THUMB_DATA"

    .line 23
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/FormatHolder;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v0, :cond_c

    if-nez v5, :cond_c

    goto/16 :goto_6

    .line 25
    :cond_c
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    .line 26
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    invoke-static {p0, v6}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenReviewAllowed(Lcom/motorola/camera/settings/CameraType;I)Z

    move-result p0

    if-eqz p0, :cond_d

    move p0, v2

    goto :goto_4

    :cond_d
    move p0, v1

    :goto_4
    if-eqz p0, :cond_e

    .line 28
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 29
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 31
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_e

    move v1, v2

    :cond_e
    if-eqz v1, :cond_10

    .line 32
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    .line 33
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x3

    const-string v2, "com.motorola.camera3.EXTRA_CONTENT"

    .line 34
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FILE_NAME"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v1, p1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/google/android/exoplayer2/FormatHolder;

    const-string v2, "FILE_PATH"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getWidth()I

    move-result v1

    const-string v2, "WIDTH"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getHeight()I

    move-result v1

    const-string v2, "HEIGHT"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v1

    const-string v2, "ORIENTATION"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v1

    const-string v3, "DATE_TAKEN"

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v1

    const-string p1, "DATE_MODIFIED"

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v0, :cond_f

    .line 43
    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_5

    :cond_f
    const-string p1, "URI"

    .line 44
    invoke-virtual {p0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    :goto_5
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance()"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_10
    :goto_6
    return-void
.end method

.method public onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public onSaveProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbData()[B

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final queryLastCapture()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onImageAvailable:Lkotlin/jvm/functions/Function3;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->updateOnly:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final submitTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method
