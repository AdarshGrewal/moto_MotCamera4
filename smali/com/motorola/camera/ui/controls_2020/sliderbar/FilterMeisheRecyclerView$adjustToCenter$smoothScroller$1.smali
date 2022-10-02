.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$adjustToCenter$smoothScroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "FilterMeisheRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->adjustToCenter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$adjustToCenter$smoothScroller$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    sub-int/2addr p4, p3

    .line 1
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    sub-int/2addr p4, p2

    return p4
.end method

.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    int-to-float p0, p0

    const/high16 p1, 0x43160000    # 150.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public onStop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$adjustToCenter$smoothScroller$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$adjustToCenter$smoothScroller$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    :cond_0
    return-void
.end method
