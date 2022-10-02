.class public Lcom/motorola/patternlibrary/widget/CardViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CardViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/patternlibrary/widget/CardViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/motorola/patternlibrary/widget/CardViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mMotoCardViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/patternlibrary/api/MotoCardView;",
            ">;"
        }
    .end annotation
.end field

.field public mSize:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/patternlibrary/api/MotoCardView;",
            ">;",
            "Landroidx/viewpager2/widget/ViewPager2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    iput p3, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mSize:I

    .line 4
    iput-object p2, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mMotoCardViews:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mSize:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/motorola/patternlibrary/widget/CardViewAdapter$ViewHolder;

    .line 2
    iget-object v0, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/patternlibrary/api/MotoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/patternlibrary/api/MotoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mMotoCardViews:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/motorola/patternlibrary/widget/CardViewAdapter$ViewHolder;->motoCardView:Lcom/motorola/patternlibrary/api/MotoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 6
    iget-object v0, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/patternlibrary/api/MotoCardView;

    sget-object v1, Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;->GONE:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    invoke-virtual {v0, v1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setOverLineVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V

    .line 7
    iget-object v0, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/patternlibrary/api/MotoCardView;

    sget-object v1, Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;->LARGE:Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;

    invoke-virtual {v0, v1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setCardStyle(Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;)V

    .line 8
    iget-object p1, p1, Lcom/motorola/patternlibrary/widget/CardViewAdapter$ViewHolder;->motoCardView:Lcom/motorola/patternlibrary/api/MotoCardView;

    iget-object p0, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0d006b

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 2
    new-instance p1, Lcom/motorola/patternlibrary/widget/CardViewAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/motorola/patternlibrary/widget/CardViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
