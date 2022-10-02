.class public final Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "CliPhotoPreviewPresentation.kt"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCliPhotoPreviewPresentation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CliPhotoPreviewPresentation.kt\ncom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1#2:123\n*E\n"
.end annotation


# instance fields
.field public cameraData:Lcom/motorola/camera/CameraData;

.field public cliPreviewBmp:Landroid/widget/ImageView;

.field public cliPreviewLayout:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

.field public cliPreviewLoading:Landroid/widget/ProgressBar;

.field public final data:Landroid/os/Bundle;

.field public dismissed:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getCameraData()Lcom/motorola/camera/CameraData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

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

.method public onOrientationChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLayout:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;->setOrientation(I)V

    :goto_0
    return-void
.end method

.method public onViewAdded()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    const-string v1, "THUMB_DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    const-string v2, "FILE_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    const-string v2, "FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    const-string v2, "ORIENTATION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    const-string v2, "WIDTH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    const-string v2, "HEIGHT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    const-string v2, "DATE_TAKEN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    const-string v2, "DATE_MODIFIED"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "decodeByteArray(it, 0, byteArray.size)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->showImagePreview(Landroid/graphics/Bitmap;)V

    .line 10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    const-string v1, "URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/Uri;

    if-nez v5, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-nez v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v14}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;-><init>(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIJJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onViewInflated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const v2, 0x7f0a00e8

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLayout:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    const v2, 0x7f0a00e7

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewBmp:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x7f0a00e9

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ProgressBar;

    :goto_2
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLoading:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onViewRemoved()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->dismissed:Z

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getCameraData()Lcom/motorola/camera/CameraData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->getTaskKey(Landroid/net/Uri;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 7
    monitor-exit v0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_1
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    .line 9
    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    .line 11
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 12
    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 13
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d0036

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->dismissed:Z

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->showImagePreview(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final showImagePreview(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewBmp:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLoading:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewBmp:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    :goto_2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;)V

    const-wide/16 v1, 0xbb8

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->acquireCliWakeLock()V

    return-void
.end method
