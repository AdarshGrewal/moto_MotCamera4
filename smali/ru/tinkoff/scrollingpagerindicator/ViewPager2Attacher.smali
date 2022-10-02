.class public Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;
.super Lru/tinkoff/scrollingpagerindicator/AbstractViewPagerAttacher;
.source "ViewPager2Attacher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/tinkoff/scrollingpagerindicator/AbstractViewPagerAttacher<",
        "Landroidx/viewpager2/widget/ViewPager2;",
        ">;"
    }
.end annotation


# instance fields
.field public attachedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public dataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public onPageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public pager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lru/tinkoff/scrollingpagerindicator/AbstractViewPagerAttacher;-><init>()V

    return-void
.end method
