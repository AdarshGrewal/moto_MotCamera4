.class public final Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;
.super Ljava/lang/Object;
.source "CliPhotoPreviewPresentation.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->onViewAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dateModified:J

.field public final synthetic $dateTaken:J

.field public final synthetic $fileName:Ljava/lang/String;

.field public final synthetic $filePath:Ljava/lang/String;

.field public final synthetic $height:I

.field public final synthetic $orientation:I

.field public final synthetic $this_run:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

.field public final synthetic $uri:Landroid/net/Uri;

.field public final synthetic $width:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIJJ)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$this_run:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    iput-object p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$filePath:Ljava/lang/String;

    iput p5, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$width:I

    iput p6, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$height:I

    iput p7, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$orientation:I

    iput-wide p8, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$dateTaken:J

    iput-wide p10, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$dateModified:J

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$this_run:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    iget-object v2, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$filePath:Ljava/lang/String;

    iget v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$width:I

    iget v5, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$height:I

    iget v11, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$orientation:I

    iget-wide v6, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$dateTaken:J

    .line 2
    iget-wide v8, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$dateModified:J

    .line 3
    iget-object v10, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v10, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v10, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-nez v10, :cond_1

    const/16 v10, 0x320

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 6
    :goto_0
    div-int v1, v10, v1

    .line 7
    new-instance v12, Landroid/util/Size;

    mul-int/2addr v1, v5

    invoke-direct {v12, v10, v1}, Landroid/util/Size;-><init>(II)V

    .line 8
    new-instance v13, Lcom/motorola/camera/CameraData;

    .line 9
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    move-object v1, v13

    move-wide v5, v6

    move-wide v7, v8

    move v9, v10

    move v10, v12

    move v12, v14

    .line 10
    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    iput-object v13, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    .line 11
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    .line 12
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->loadThumbnail(Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$2$1$1;->$this_run:Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-nez v0, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_2
    return-void
.end method
