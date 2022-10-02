.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/MultiLineFlexboxLayoutManager;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;
.source "MultiLineFlexboxLayoutManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/controlpanel/MultiLineFlexboxLayoutManager;",
        "Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;",
        "Landroid/content/Context;",
        "context",
        "",
        "flexDirection",
        "justifyContent",
        "<init>",
        "(Landroid/content/Context;II)V",
        "MotCamera4-v9.0.12.67_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eq p1, p3, :cond_0

    .line 3
    iput p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 3
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    :goto_1
    check-cast v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    if-ne v0, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    const/4 v6, 0x3

    if-le v3, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 5
    :goto_2
    iput-boolean v3, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    :goto_3
    if-lt v4, v1, :cond_3

    goto :goto_4

    :cond_3
    move v3, v4

    goto :goto_0

    .line 6
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
