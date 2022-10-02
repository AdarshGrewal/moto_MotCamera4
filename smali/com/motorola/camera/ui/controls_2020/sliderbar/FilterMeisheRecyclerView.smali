.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FilterMeisheRecyclerView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "MotCamera4-v9.0.12.67_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public disableScroll:Z

.field public isDragging:Z

.field public paddingSet:Z

.field public registered:Z

.field public final scrollListener:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;

.field public final snapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

.field public systemGestureRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {p2}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->snapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->scrollListener:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;

    .line 5
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    invoke-direct {p2, p1, v0, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/16 p1, 0x168

    int-to-float p1, p1

    const/4 v1, 0x0

    sub-float/2addr p1, v1

    cmpg-float v2, p1, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_0

    add-float/2addr p1, v3

    :cond_0
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    sub-float/2addr p1, v3

    :cond_1
    add-float/2addr v1, p1

    .line 7
    iput v1, p2, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->rotation:F

    .line 8
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070243

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 11
    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;-><init>(II)V

    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x2

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public final adjustToCenter(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$adjustToCenter$smoothScroller$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$adjustToCenter$smoothScroller$1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;Landroid/content/Context;)V

    .line 3
    iput p1, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->paddingSet:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->paddingSet:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    const/4 v0, 0x2

    div-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    new-array p2, v0, [Landroid/graphics/Rect;

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, p2, v2

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v1, v3, v2, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, p2, p1

    .line 8
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->systemGestureRects:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->isDragging:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->scrollListener:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->isDragging:Z

    goto :goto_0

    .line 5
    :cond_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->isDragging:Z

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    .line 7
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->scrollListener:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView$scrollListener$1;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 9
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
