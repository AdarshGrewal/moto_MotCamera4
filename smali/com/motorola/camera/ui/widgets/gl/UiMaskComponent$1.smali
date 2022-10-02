.class public Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;
.super Ljava/lang/Object;
.source "UiMaskComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;


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
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostCaptureAvailable(ZLcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p3, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mBuffer:Ljava/nio/Buffer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    new-instance p2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
