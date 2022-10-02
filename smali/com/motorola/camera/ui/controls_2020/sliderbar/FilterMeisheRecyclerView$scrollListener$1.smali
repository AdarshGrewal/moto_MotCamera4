.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FilterMeisheRecyclerView.kt"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    .line 2
    iget-object p3, p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->snapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    .line 5
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 6
    new-instance p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;I)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
