.class public final Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent$startFlipAnimation$1;
.super Ljava/lang/Object;
.source "PreviewSwapComponent.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent;->startFlipAnimation(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $it:Landroid/view/View;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent$startFlipAnimation$1;->$it:Landroid/view/View;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent$startFlipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent$startFlipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent$startFlipAnimation$1;->$it:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent$startFlipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/multicamera/DualCaptureStateHelper;

    .line 7
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/multicamera/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent$startFlipAnimation$1;->$it:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/PreviewSwapComponent$startFlipAnimation$1;->$it:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
