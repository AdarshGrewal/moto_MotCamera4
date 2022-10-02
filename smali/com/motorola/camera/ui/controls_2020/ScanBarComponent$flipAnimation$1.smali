.class public final Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;
.super Ljava/lang/Object;
.source "ScanBarComponent.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $data:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

.field public final synthetic $grow:Landroid/view/animation/ScaleAnimation;

.field public final synthetic $icon:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;Landroid/widget/ImageView;Landroid/view/animation/ScaleAnimation;Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;->$icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;->$grow:Landroid/view/animation/ScaleAnimation;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;->$data:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;->$data:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getIcon()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v2, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getBgColor()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getBackground()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;->$icon:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;->$grow:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
