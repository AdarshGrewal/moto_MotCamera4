.class public Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;
.super Ljava/lang/Object;
.source "UiMaskComponent.java"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReviewSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 0

    return-void
.end method

.method public onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastDocFinish:Z

    .line 9
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mReadyEdit:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->startDocEdit(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public onSaveProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastDocFinish:Z

    return-void
.end method
