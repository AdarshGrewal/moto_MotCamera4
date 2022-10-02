.class public final Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$scanBarCallback$1;
.super Ljava/lang/Object;
.source "SceneDetectionOptInComponent.kt"

# interfaces
.implements Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_2
    return-void
.end method

.method public onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_2
    return-void
.end method
