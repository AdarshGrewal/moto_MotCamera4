.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Lcom/google/android/flexbox/FlexContainer;
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field public static final TEMP_RECT:Landroid/graphics/Rect;


# instance fields
.field public mAlignItems:I

.field public mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

.field public final mContext:Landroid/content/Context;

.field public mDirtyPosition:I

.field public mFlexDirection:I

.field public mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field public mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

.field public mFlexWrap:I

.field public final mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

.field public mFromBottomToTop:Z

.field public mIsRtl:Z

.field public mJustifyContent:I

.field public mLastHeight:I

.field public mLastWidth:I

.field public mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

.field public mMaxLine:I

.field public mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field public mParent:Landroid/view/View;

.field public mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

.field public mPendingScrollPosition:I

.field public mPendingScrollPositionOffset:I

.field public mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field public mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field public mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field public mViewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 4
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 5
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 6
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 7
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 8
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 9
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 11
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 12
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 13
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 v0, 0x4

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 16
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 17
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 21
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 22
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 23
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 24
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 25
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 26
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 27
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 28
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 29
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 30
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p2

    .line 31
    iget p3, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 34
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 35
    :cond_2
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_3

    .line 36
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 38
    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 p2, 0x4

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 40
    iput-boolean p4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 41
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isMeasurementUpToDate(III)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 5
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-le v0, p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public canScrollVertically()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 4
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 5
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-le v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return p0
.end method

.method public final clearFlexLines()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 3
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 8
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 9
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 9
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 11
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, v4, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget p1, v4, p1

    if-eqz p1, :cond_3

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    aget v1, v4, v3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 13
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 15
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p1, p0

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    invoke-virtual {p0, v1, v3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 9
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 10
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    int-to-float p0, p0

    int-to-float v0, v3

    div-float/2addr p0, v0

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 4
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 5
    :cond_2
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final ensureOrientationHelper()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 15
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    goto :goto_0

    .line 17
    :cond_3
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 19
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    :goto_0
    return-void
.end method

.method public final fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    .line 2
    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_0

    add-int/2addr v3, v4

    .line 3
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 4
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 5
    :cond_1
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v4

    const/4 v5, 0x0

    move v6, v3

    :goto_0
    if-gtz v6, :cond_3

    .line 7
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 8
    iget-boolean v7, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v26, v3

    goto/16 :goto_18

    .line 9
    :cond_3
    :goto_1
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 10
    iget v8, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    const/4 v9, 0x1

    if-ltz v8, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    if-ge v8, v10, :cond_4

    iget v8, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-ltz v8, :cond_4

    .line 11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v8, v7, :cond_4

    move v7, v9

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    .line 12
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 13
    iget v8, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 14
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/flexbox/FlexLine;

    .line 15
    iget v8, v7, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 16
    iput v8, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v8

    const-string v10, "Invalid justifyContent is set: "

    const/4 v14, -0x1

    if-eqz v8, :cond_14

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v15

    .line 20
    iget v12, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 21
    iget v13, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 22
    iget v11, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v11, v14, :cond_5

    .line 23
    iget v11, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v13, v11

    :cond_5
    move/from16 v19, v13

    .line 24
    iget v14, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 25
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eqz v11, :cond_e

    if-eq v11, v9, :cond_d

    const/4 v13, 0x2

    if-eq v11, v13, :cond_c

    const/4 v13, 0x3

    if-eq v11, v13, :cond_a

    const/4 v13, 0x4

    if-eq v11, v13, :cond_8

    const/4 v13, 0x5

    if-ne v11, v13, :cond_7

    .line 26
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v10, :cond_6

    .line 27
    iget v11, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v11, v12, v11

    int-to-float v11, v11

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    div-float/2addr v11, v10

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    int-to-float v8, v8

    add-float/2addr v8, v11

    sub-int/2addr v12, v15

    int-to-float v10, v12

    sub-float/2addr v10, v11

    goto :goto_7

    .line 28
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_8
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v10, :cond_9

    .line 30
    iget v11, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v11, v12, v11

    int-to-float v11, v11

    int-to-float v10, v10

    div-float/2addr v11, v10

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    move v11, v10

    :goto_4
    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v11, v10

    add-float/2addr v8, v10

    sub-int/2addr v12, v15

    int-to-float v12, v12

    sub-float v10, v12, v10

    goto :goto_7

    :cond_a
    int-to-float v8, v8

    .line 31
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eq v10, v9, :cond_b

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    move/from16 v16, v10

    goto :goto_5

    :cond_b
    const/high16 v16, 0x3f800000    # 1.0f

    .line 32
    :goto_5
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v10, v12, v10

    int-to-float v10, v10

    div-float v11, v10, v16

    sub-int/2addr v12, v15

    int-to-float v10, v12

    goto :goto_7

    :cond_c
    int-to-float v8, v8

    .line 33
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v10, v12, v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    sub-int/2addr v12, v15

    int-to-float v11, v12

    sub-float/2addr v11, v10

    move v10, v11

    goto :goto_6

    .line 34
    :cond_d
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v12, v10

    add-int/2addr v12, v15

    int-to-float v11, v12

    sub-int/2addr v10, v8

    int-to-float v8, v10

    move v10, v8

    move v8, v11

    goto :goto_6

    :cond_e
    int-to-float v8, v8

    sub-int/2addr v12, v15

    int-to-float v10, v12

    :goto_6
    const/4 v11, 0x0

    .line 35
    :goto_7
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 36
    iget v12, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    int-to-float v12, v12

    sub-float/2addr v8, v12

    sub-float/2addr v10, v12

    const/4 v12, 0x0

    .line 37
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 38
    iget v15, v7, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v11, 0x0

    move v13, v14

    :goto_8
    add-int v12, v14, v15

    if-ge v13, v12, :cond_13

    .line 39
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_f

    move/from16 v26, v3

    move/from16 v25, v13

    move/from16 v18, v14

    move/from16 v21, v15

    goto/16 :goto_b

    :cond_f
    move/from16 v18, v14

    .line 40
    iget v14, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v14, v9, :cond_10

    .line 41
    sget-object v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v9, -0x1

    .line 42
    invoke-virtual {v0, v12, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_9

    .line 43
    :cond_10
    sget-object v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 44
    invoke-virtual {v0, v12, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v11, v11, 0x1

    :goto_9
    move v9, v11

    .line 45
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v14, v11, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    move/from16 v16, v15

    aget-wide v14, v14, v13

    move/from16 v20, v9

    long-to-int v9, v14

    .line 46
    invoke-virtual {v11, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v11

    .line 47
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 48
    invoke-direct {v0, v12, v9, v11, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 49
    invoke-virtual {v12, v9, v11}, Landroid/view/View;->measure(II)V

    .line 50
    :cond_11
    iget v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v9

    int-to-float v9, v11

    add-float/2addr v8, v9

    .line 51
    iget v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v9

    int-to-float v9, v11

    sub-float v9, v10, v9

    .line 52
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v10

    add-int v14, v10, v19

    .line 53
    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v10, :cond_12

    .line 54
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 55
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v21, v11, v21

    .line 56
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 57
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v23, v11, v14

    move-object v11, v12

    move-object/from16 v24, v12

    move-object v12, v7

    move/from16 v25, v13

    move/from16 v13, v21

    move/from16 v26, v3

    move-object v3, v15

    move/from16 v21, v16

    move/from16 v15, v22

    move/from16 v16, v23

    .line 58
    invoke-virtual/range {v10 .. v16}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    goto :goto_a

    :cond_12
    move/from16 v26, v3

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object v3, v15

    move/from16 v21, v16

    .line 59
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 60
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 61
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v15, v12, v11

    .line 62
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v16, v11, v14

    move-object/from16 v11, v24

    move-object v12, v7

    .line 63
    invoke-virtual/range {v10 .. v16}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 64
    :goto_a
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    move-object/from16 v11, v24

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    int-to-float v10, v12

    add-float v10, v10, v17

    add-float/2addr v10, v8

    .line 65
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v3

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v8

    int-to-float v3, v3

    add-float v3, v3, v17

    sub-float/2addr v9, v3

    move v8, v10

    move/from16 v11, v20

    move v10, v9

    :goto_b
    add-int/lit8 v13, v25, 0x1

    const/4 v9, 0x1

    move/from16 v14, v18

    move/from16 v15, v21

    move/from16 v3, v26

    goto/16 :goto_8

    :cond_13
    move/from16 v26, v3

    .line 66
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 67
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 68
    iget v8, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    add-int/2addr v3, v8

    .line 69
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 70
    iget v3, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_16

    :cond_14
    move/from16 v26, v3

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    .line 73
    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 74
    iget v11, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 75
    iget v12, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_15

    .line 76
    iget v12, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int v13, v11, v12

    add-int/2addr v11, v12

    move/from16 v20, v11

    move/from16 v19, v13

    goto :goto_c

    :cond_15
    move/from16 v19, v11

    move/from16 v20, v19

    .line 77
    :goto_c
    iget v15, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 78
    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eqz v11, :cond_1e

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1d

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1c

    const/4 v12, 0x3

    if-eq v11, v12, :cond_1a

    const/4 v12, 0x4

    if-eq v11, v12, :cond_18

    const/4 v12, 0x5

    if-ne v11, v12, :cond_17

    .line 79
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v10, :cond_16

    .line 80
    iget v11, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v11, v9, v11

    int-to-float v11, v11

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    div-float/2addr v11, v10

    goto :goto_d

    :cond_16
    const/4 v11, 0x0

    :goto_d
    int-to-float v3, v3

    add-float/2addr v3, v11

    sub-int/2addr v9, v8

    int-to-float v8, v9

    sub-float/2addr v8, v11

    goto :goto_11

    .line 81
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_18
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v10, :cond_19

    .line 83
    iget v11, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v11, v9, v11

    int-to-float v11, v11

    int-to-float v10, v10

    div-float/2addr v11, v10

    goto :goto_e

    :cond_19
    const/4 v10, 0x0

    move v11, v10

    :goto_e
    int-to-float v3, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v11, v10

    add-float/2addr v3, v10

    sub-int/2addr v9, v8

    int-to-float v8, v9

    sub-float/2addr v8, v10

    goto :goto_11

    :cond_1a
    int-to-float v3, v3

    .line 84
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1b

    add-int/lit8 v10, v10, -0x1

    int-to-float v12, v10

    goto :goto_f

    :cond_1b
    const/high16 v12, 0x3f800000    # 1.0f

    .line 85
    :goto_f
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v10, v9, v10

    int-to-float v10, v10

    div-float v11, v10, v12

    sub-int/2addr v9, v8

    int-to-float v8, v9

    goto :goto_11

    :cond_1c
    int-to-float v3, v3

    .line 86
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v10, v9, v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v3, v10

    sub-int/2addr v9, v8

    int-to-float v8, v9

    sub-float/2addr v8, v10

    goto :goto_10

    .line 87
    :cond_1d
    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v8

    int-to-float v8, v9

    sub-int/2addr v10, v3

    int-to-float v3, v10

    const/4 v11, 0x0

    move/from16 v29, v8

    move v8, v3

    move/from16 v3, v29

    goto :goto_11

    :cond_1e
    int-to-float v3, v3

    sub-int/2addr v9, v8

    int-to-float v8, v9

    :goto_10
    const/4 v11, 0x0

    .line 88
    :goto_11
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 89
    iget v9, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    int-to-float v9, v9

    sub-float/2addr v3, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    .line 90
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 91
    iget v14, v7, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v10, 0x0

    move v13, v15

    :goto_12
    add-int v11, v15, v14

    if-ge v13, v11, :cond_25

    .line 92
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_1f

    move/from16 v18, v13

    move/from16 v27, v14

    move/from16 v28, v15

    goto/16 :goto_15

    .line 93
    :cond_1f
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    move/from16 v16, v14

    iget-object v14, v11, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    move/from16 v17, v15

    aget-wide v14, v14, v13

    move/from16 v18, v13

    long-to-int v13, v14

    .line 94
    invoke-virtual {v11, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v11

    .line 95
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 96
    invoke-direct {v0, v12, v13, v11, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 97
    invoke-virtual {v12, v13, v11}, Landroid/view/View;->measure(II)V

    .line 98
    :cond_20
    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v11

    int-to-float v11, v13

    add-float/2addr v3, v11

    .line 99
    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v11

    int-to-float v11, v13

    sub-float/2addr v8, v11

    .line 100
    iget v11, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_21

    .line 101
    sget-object v11, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v11, -0x1

    .line 102
    invoke-virtual {v0, v12, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_13

    .line 103
    :cond_21
    sget-object v11, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 104
    invoke-virtual {v0, v12, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v10, v10, 0x1

    :goto_13
    move/from16 v21, v10

    .line 105
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v10

    add-int v14, v10, v19

    .line 106
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v10

    sub-int v22, v20, v10

    .line 107
    iget-boolean v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v13, :cond_23

    .line 108
    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v10, :cond_22

    .line 109
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 110
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int v14, v22, v11

    .line 111
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v23, v11, v23

    .line 112
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object v11, v12

    move-object/from16 v25, v12

    move-object v12, v7

    move/from16 v27, v16

    move-object v1, v15

    move/from16 v28, v17

    move/from16 v15, v23

    move/from16 v16, v22

    move/from16 v17, v24

    .line 113
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto/16 :goto_14

    :cond_22
    move-object/from16 v25, v12

    move-object v1, v15

    move/from16 v27, v16

    move/from16 v28, v17

    .line 114
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 115
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int v14, v22, v11

    .line 116
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 117
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v17, v12, v11

    move-object/from16 v11, v25

    move-object v12, v7

    move/from16 v16, v22

    .line 118
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_14

    :cond_23
    move-object/from16 v25, v12

    move-object v1, v15

    move/from16 v27, v16

    move/from16 v28, v17

    .line 119
    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v10, :cond_24

    .line 120
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 121
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v15, v11, v12

    .line 122
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v16, v11, v14

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v11, v25

    move-object v12, v7

    .line 123
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_14

    .line 124
    :cond_24
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 125
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 126
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v16, v11, v14

    .line 127
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v17, v12, v11

    move-object/from16 v11, v25

    move-object v12, v7

    .line 128
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 129
    :goto_14
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v11

    move-object/from16 v11, v25

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    int-to-float v10, v12

    add-float/2addr v10, v9

    add-float/2addr v10, v3

    .line 130
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v1

    .line 131
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v9

    sub-float/2addr v8, v1

    move v3, v10

    move/from16 v10, v21

    :goto_15
    add-int/lit8 v13, v18, 0x1

    move-object/from16 v1, p1

    move/from16 v14, v27

    move/from16 v15, v28

    goto/16 :goto_12

    .line 132
    :cond_25
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 133
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 134
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    add-int/2addr v1, v3

    .line 135
    iput v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 136
    iget v3, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :goto_16
    add-int/2addr v5, v3

    if-nez v4, :cond_26

    .line 137
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_26

    .line 138
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 139
    iget v3, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 140
    iget v8, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v3, v8

    sub-int/2addr v1, v3

    .line 141
    iput v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    goto :goto_17

    .line 142
    :cond_26
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 143
    iget v3, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 144
    iget v8, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v3, v8

    add-int/2addr v3, v1

    .line 145
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 146
    :goto_17
    iget v1, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v6, v1

    move-object/from16 v1, p1

    move/from16 v3, v26

    goto/16 :goto_0

    .line 147
    :goto_18
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v1, v5

    .line 148
    iput v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    .line 149
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_28

    add-int/2addr v3, v5

    .line 150
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez v1, :cond_27

    add-int/2addr v3, v1

    .line 151
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_27
    move-object/from16 v1, p1

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 153
    :cond_28
    iget v0, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    sub-int v3, v26, v0

    return v3
.end method

.method public final findFirstReferenceChild(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v2, v2, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 2
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 7
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 9
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    :goto_1
    move-object p1, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final findLastReferenceChild(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v1, v0

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 7
    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 9
    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    move-object p1, p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final findOneVisibleChild(IIZ)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    move/from16 v3, p1

    if-le v1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    if-eq v3, v1, :cond_a

    .line 1
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    .line 4
    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 6
    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v11

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v11, v10

    .line 10
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 11
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v12

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v10

    .line 12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 13
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v13

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v10

    .line 14
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 15
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v14

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v10

    const/4 v10, 0x0

    if-gt v6, v11, :cond_1

    if-lt v8, v13, :cond_1

    move v15, v2

    goto :goto_1

    :cond_1
    move v15, v10

    :goto_1
    if-ge v11, v8, :cond_3

    if-lt v13, v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v10

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v2

    :goto_3
    if-gt v7, v12, :cond_4

    if-lt v9, v14, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v10

    :goto_4
    if-ge v12, v9, :cond_6

    if-lt v14, v7, :cond_5

    goto :goto_5

    :cond_5
    move v7, v10

    goto :goto_6

    :cond_6
    :goto_5
    move v7, v2

    :goto_6
    if-eqz p3, :cond_7

    if-eqz v15, :cond_8

    if-eqz v8, :cond_8

    :goto_7
    move v10, v2

    goto :goto_8

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    goto :goto_7

    :cond_8
    :goto_8
    if-eqz v10, :cond_9

    return-object v5

    :cond_9
    add-int/2addr v3, v4

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final findReferenceChild(III)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-le p2, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    move-object v4, v1

    :goto_1
    if-eq p1, p2, :cond_6

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p3, :cond_5

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    .line 9
    :cond_2
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-lt v6, v0, :cond_4

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 10
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    move-object v1, v5

    :cond_5
    :goto_3
    add-int/2addr p1, v3

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v4

    :goto_4
    return-object v1
.end method

.method public final fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_1

    :cond_1
    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_4

    neg-int v0, v0

    .line 5
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_1
    add-int/2addr p1, p2

    if-eqz p4, :cond_3

    .line 6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_3

    .line 7
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method public final fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    neg-int v0, v0

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_0

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_3

    .line 5
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_2

    .line 6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    :cond_2
    return p2

    :cond_3
    return v1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    :goto_0
    add-int/2addr p0, v0

    return p0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public getFlexItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getLargestMainSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 2
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 4
    iget v3, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    if-nez p1, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 3
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_2

    if-gez p1, :cond_3

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    .line 6
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 7
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 8
    iput v5, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    .line 10
    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 11
    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 12
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 13
    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 14
    iget v10, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 15
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    if-nez v7, :cond_4

    .line 16
    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v10, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v2

    :goto_3
    if-ne v5, v3, :cond_a

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 18
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    .line 19
    iput v13, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 20
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v12

    .line 21
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v13, v13, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v13, v13, v12

    .line 22
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexLine;

    .line 23
    invoke-virtual {v0, v11, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v11

    .line 24
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 25
    iput v3, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v12, v3

    .line 26
    iput v12, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 27
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v14, v14, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v15, v14

    if-gt v15, v12, :cond_5

    .line 28
    iput v4, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    goto :goto_4

    .line 29
    :cond_5
    aget v12, v14, v12

    .line 30
    iput v12, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    :goto_4
    if-eqz v10, :cond_7

    .line 31
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    .line 32
    iput v10, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 33
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    neg-int v11, v11

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 34
    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    add-int/2addr v12, v11

    .line 35
    iput v12, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 36
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 37
    iget v11, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-ltz v11, :cond_6

    goto :goto_5

    :cond_6
    move v11, v2

    .line 38
    :goto_5
    iput v11, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    goto :goto_6

    .line 39
    :cond_7
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    .line 40
    iput v10, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 41
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 42
    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    sub-int/2addr v11, v12

    .line 43
    iput v11, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 44
    :goto_6
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 45
    iget v10, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eq v10, v4, :cond_8

    .line 46
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v10, v4, :cond_10

    :cond_8
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 47
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v4

    if-gt v3, v4, :cond_10

    .line 49
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 50
    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    sub-int v14, v6, v4

    .line 51
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    const/4 v4, 0x0

    .line 52
    iput-object v4, v11, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    if-lez v14, :cond_10

    if-eqz v7, :cond_9

    .line 53
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 54
    iget v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 55
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, -0x1

    move v12, v8

    move v13, v9

    move-object/from16 v17, v3

    .line 56
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_7

    .line 57
    :cond_9
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 58
    iget v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 59
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, -0x1

    move v12, v9

    move v13, v8

    move-object/from16 v17, v3

    .line 60
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 61
    :goto_7
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 62
    iget v4, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 63
    invoke-virtual {v3, v8, v9, v4}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 64
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 65
    iget v4, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 66
    invoke-virtual {v3, v4}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    goto/16 :goto_b

    .line 67
    :cond_a
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 68
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    .line 69
    iput v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 70
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 71
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v9, v9, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v9, v9, v8

    .line 72
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexLine;

    .line 73
    invoke-virtual {v0, v7, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v7

    .line 74
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 75
    iput v3, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    .line 76
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v11, v11, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v11, v11, v8

    if-ne v11, v4, :cond_b

    move v11, v2

    :cond_b
    if-lez v11, :cond_c

    .line 77
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    add-int/lit8 v9, v11, -0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    .line 78
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 79
    iget v4, v4, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v8, v4

    .line 80
    iput v8, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    goto :goto_8

    .line 81
    :cond_c
    iput v4, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 82
    :goto_8
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-lez v11, :cond_d

    sub-int/2addr v11, v3

    goto :goto_9

    :cond_d
    move v11, v2

    .line 83
    :goto_9
    iput v11, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eqz v10, :cond_f

    .line 84
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 85
    iput v3, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 86
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 87
    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    sub-int/2addr v4, v7

    .line 88
    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 89
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 90
    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-ltz v4, :cond_e

    goto :goto_a

    :cond_e
    move v4, v2

    .line 91
    :goto_a
    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    goto :goto_b

    .line 92
    :cond_f
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 93
    iput v3, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 94
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    neg-int v4, v4

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 95
    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    add-int/2addr v7, v4

    .line 96
    iput v7, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 97
    :cond_10
    :goto_b
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 98
    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    sub-int v7, v6, v4

    .line 99
    iput v7, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 100
    invoke-virtual {v0, v7, v8, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v3

    add-int/2addr v3, v4

    if-gez v3, :cond_11

    return v2

    :cond_11
    if-eqz v1, :cond_12

    if-le v6, v3, :cond_13

    neg-int v1, v5

    mul-int/2addr v1, v3

    goto :goto_c

    :cond_12
    if-le v6, v3, :cond_13

    mul-int v1, v5, v3

    goto :goto_c

    :cond_13
    move/from16 v1, p1

    .line 101
    :goto_c
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 102
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 103
    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLastScrollDelta:I

    return v1

    :cond_14
    :goto_d
    return v2
.end method

.method public final handleScrollingSubOrientation(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto :goto_5

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    goto :goto_1

    .line 6
    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v1, v4

    :cond_3
    if-eqz v1, :cond_5

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_4

    .line 9
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 10
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int/2addr v0, p0

    sub-int/2addr v0, v2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    neg-int p0, p0

    goto :goto_4

    .line 12
    :cond_4
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 13
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int v0, p0, p1

    if-lez v0, :cond_8

    goto :goto_2

    :cond_5
    if-lez p1, :cond_6

    .line 14
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 15
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    sub-int/2addr v0, p0

    sub-int/2addr v0, v2

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_4

    .line 17
    :cond_6
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 18
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int v0, p0, p1

    if-ltz v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    neg-int p1, p0

    :cond_8
    :goto_3
    move p0, p1

    :goto_4
    return p0

    :cond_9
    :goto_5
    return v1
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 2
    iput-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v4, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    .line 6
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_a

    if-eq v5, v8, :cond_7

    if-eq v5, v6, :cond_4

    const/4 v9, 0x3

    if-eq v5, v9, :cond_1

    .line 7
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 8
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_1
    if-ne v4, v8, :cond_2

    move v4, v8

    goto :goto_0

    :cond_2
    move v4, v7

    .line 9
    :goto_0
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 10
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v5, v6, :cond_3

    xor-int/2addr v4, v8

    .line 11
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 12
    :cond_3
    iput-boolean v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_4
    if-ne v4, v8, :cond_5

    move v4, v8

    goto :goto_1

    :cond_5
    move v4, v7

    .line 13
    :goto_1
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 14
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v5, v6, :cond_6

    xor-int/2addr v4, v8

    .line 15
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 16
    :cond_6
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_7
    if-eq v4, v8, :cond_8

    move v4, v8

    goto :goto_2

    :cond_8
    move v4, v7

    .line 17
    :goto_2
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 18
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v4, v6, :cond_9

    move v4, v8

    goto :goto_3

    :cond_9
    move v4, v7

    :goto_3
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_a
    if-ne v4, v8, :cond_b

    move v4, v8

    goto :goto_4

    :cond_b
    move v4, v7

    .line 19
    :goto_4
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 20
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v4, v6, :cond_c

    move v4, v8

    goto :goto_5

    :cond_c
    move v4, v7

    :goto_5
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 21
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 22
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v5, 0x0

    if-nez v4, :cond_d

    .line 23
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {v4, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 24
    :cond_d
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    .line 25
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    .line 26
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 27
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 28
    iput-boolean v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    .line 29
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v4, :cond_f

    .line 30
    iget v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v6, :cond_e

    if-ge v6, v3, :cond_e

    move v9, v8

    goto :goto_7

    :cond_e
    move v9, v7

    :goto_7
    if-eqz v9, :cond_f

    .line 31
    iput v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 32
    :cond_f
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 33
    iget-boolean v9, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    const/high16 v10, -0x80000000

    const/4 v11, -0x1

    if-eqz v9, :cond_10

    .line 34
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v9, v11, :cond_10

    if-eqz v4, :cond_2c

    .line 35
    :cond_10
    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 36
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 37
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 38
    iget-boolean v9, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v9, :cond_1f

    .line 39
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v9, v11, :cond_11

    goto/16 :goto_d

    :cond_11
    if-ltz v9, :cond_1e

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    if-lt v9, v12, :cond_12

    goto/16 :goto_c

    .line 41
    :cond_12
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 42
    iput v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 43
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v12, v12, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v9, v12, v9

    .line 44
    iput v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 45
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v9, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    .line 46
    iget v9, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v9, :cond_13

    if-ge v9, v12, :cond_13

    move v9, v8

    goto :goto_8

    :cond_13
    move v9, v7

    :goto_8
    if-eqz v9, :cond_14

    .line 47
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    .line 48
    iget v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v9, v6

    .line 49
    iput v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 50
    iput-boolean v8, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    .line 51
    iput v11, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    goto/16 :goto_b

    .line 52
    :cond_14
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v6, v10, :cond_1c

    .line 53
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 54
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 55
    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v12

    if-le v9, v12, :cond_15

    .line 56
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    goto/16 :goto_b

    .line 57
    :cond_15
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 58
    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    sub-int/2addr v9, v12

    if-gez v9, :cond_16

    .line 59
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 60
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 61
    iput-boolean v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_b

    .line 62
    :cond_16
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v9

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 63
    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v9, v12

    if-gez v9, :cond_17

    .line 64
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 65
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 66
    iput-boolean v8, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_b

    .line 67
    :cond_17
    iget-boolean v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v9, :cond_18

    .line 68
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 69
    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 70
    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v9

    add-int/2addr v9, v6

    goto :goto_9

    :cond_18
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 71
    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    .line 72
    :goto_9
    iput v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_b

    .line 73
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1b

    .line 74
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 75
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ge v9, v6, :cond_1a

    move v6, v8

    goto :goto_a

    :cond_1a
    move v6, v7

    .line 76
    :goto_a
    iput-boolean v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 77
    :cond_1b
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    goto :goto_b

    .line 78
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v6

    if-nez v6, :cond_1d

    iget-boolean v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v6, :cond_1d

    .line 79
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 80
    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v9

    sub-int/2addr v6, v9

    .line 81
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_b

    .line 82
    :cond_1d
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v6, v9

    .line 83
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_b
    move v6, v8

    goto :goto_e

    .line 84
    :cond_1e
    :goto_c
    iput v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 85
    iput v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    :cond_1f
    :goto_d
    move v6, v7

    :goto_e
    if-eqz v6, :cond_20

    goto/16 :goto_16

    .line 86
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-nez v6, :cond_21

    goto/16 :goto_14

    .line 87
    :cond_21
    iget-boolean v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_22

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v6

    goto :goto_f

    .line 89
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v6

    :goto_f
    if-eqz v6, :cond_2a

    .line 90
    iget-object v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 91
    iget v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v12, :cond_23

    .line 92
    iget-object v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    goto :goto_10

    .line 93
    :cond_23
    iget-object v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 94
    :goto_10
    invoke-virtual {v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v9

    if-nez v9, :cond_25

    iget-object v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 95
    iget-boolean v9, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v9, :cond_25

    .line 96
    iget-boolean v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v9, :cond_24

    .line 97
    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    .line 98
    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v12

    add-int/2addr v12, v9

    iput v12, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_11

    .line 99
    :cond_24
    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    iput v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_11

    .line 100
    :cond_25
    iget-boolean v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v9, :cond_26

    .line 101
    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    .line 102
    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v12

    add-int/2addr v12, v9

    iput v12, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_11

    .line 103
    :cond_26
    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    iput v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 104
    :goto_11
    iget-object v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 105
    iput-boolean v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    .line 106
    iget-object v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 107
    iget-object v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 108
    iget-object v12, v12, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eq v6, v11, :cond_27

    goto :goto_12

    :cond_27
    move v6, v7

    :goto_12
    aget v6, v12, v6

    if-eq v6, v11, :cond_28

    goto :goto_13

    :cond_28
    move v6, v7

    .line 109
    :goto_13
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 110
    iget-object v6, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 111
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    if-le v6, v9, :cond_29

    .line 112
    iget-object v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 113
    iget-object v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 114
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    iget v6, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    :cond_29
    move v6, v8

    goto :goto_15

    :cond_2a
    :goto_14
    move v6, v7

    :goto_15
    if-eqz v6, :cond_2b

    goto :goto_16

    .line 115
    :cond_2b
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 116
    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 117
    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 118
    :goto_16
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 119
    iput-boolean v8, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    .line 120
    :cond_2c
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 121
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 122
    iget-boolean v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_2d

    .line 123
    invoke-virtual {v0, v4, v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    goto :goto_17

    .line 124
    :cond_2d
    invoke-virtual {v0, v4, v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 125
    :goto_17
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 126
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 127
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 128
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 129
    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 130
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 131
    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 132
    iget v12, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v13

    if-eqz v13, :cond_30

    .line 134
    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    if-eq v13, v10, :cond_2e

    if-eq v13, v9, :cond_2e

    move v10, v8

    goto :goto_18

    :cond_2e
    move v10, v7

    .line 135
    :goto_18
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 136
    iget-boolean v14, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v14, :cond_2f

    .line 137
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1a

    .line 139
    :cond_2f
    iget v13, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    goto :goto_1a

    .line 140
    :cond_30
    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    if-eq v13, v10, :cond_31

    if-eq v13, v12, :cond_31

    move v10, v8

    goto :goto_19

    :cond_31
    move v10, v7

    .line 141
    :goto_19
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 142
    iget-boolean v14, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v14, :cond_32

    .line 143
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1a

    .line 145
    :cond_32
    iget v13, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    :goto_1a
    move/from16 v16, v13

    .line 146
    iput v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 147
    iput v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 148
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    if-ne v9, v11, :cond_36

    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v12, v11, :cond_33

    if-eqz v10, :cond_36

    .line 149
    :cond_33
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 150
    iget-boolean v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_34

    goto/16 :goto_1e

    .line 151
    :cond_34
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 152
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 153
    iput-object v5, v3, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 155
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 156
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 157
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v17, 0x0

    move v14, v4

    move v15, v6

    move/from16 v18, v3

    move-object/from16 v19, v5

    .line 158
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_1b

    .line 159
    :cond_35
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 160
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 161
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v17, 0x0

    move v14, v6

    move v15, v4

    move/from16 v18, v3

    move-object/from16 v19, v5

    .line 162
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 163
    :goto_1b
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 164
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 165
    invoke-virtual {v3, v4, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 166
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 167
    invoke-virtual {v3, v7}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    .line 168
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, v4, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 169
    iget v5, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 170
    aget v4, v4, v5

    .line 171
    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 172
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 173
    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    goto/16 :goto_1e

    :cond_36
    if-eq v9, v11, :cond_37

    .line 174
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 175
    iget v10, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 176
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_1c

    :cond_37
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 177
    iget v9, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 178
    :goto_1c
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 179
    iput-object v5, v10, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 181
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    .line 182
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v3, v5, v9}, Lcom/google/android/flexbox/FlexboxHelper;->clearFlexLines(Ljava/util/List;I)V

    .line 183
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 184
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 185
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v14, v4

    move v15, v6

    move/from16 v17, v9

    move/from16 v18, v3

    move-object/from16 v19, v5

    .line 186
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_1d

    .line 187
    :cond_38
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v5, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 188
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    const/16 v17, 0x0

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v18, -0x1

    move v14, v4

    move v15, v6

    move-object/from16 v19, v3

    .line 189
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_1d

    .line 190
    :cond_39
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3a

    .line 191
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v3, v5, v9}, Lcom/google/android/flexbox/FlexboxHelper;->clearFlexLines(Ljava/util/List;I)V

    .line 192
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 193
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 194
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v14, v6

    move v15, v4

    move/from16 v17, v9

    move/from16 v18, v3

    move-object/from16 v19, v5

    .line 195
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_1d

    .line 196
    :cond_3a
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v5, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 197
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    const/16 v17, 0x0

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v18, -0x1

    move v14, v6

    move v15, v4

    move-object/from16 v19, v3

    .line 198
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 199
    :goto_1d
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 200
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v3, v4, v6, v9}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 201
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v3, v9}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    .line 202
    :goto_1e
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 203
    iget-boolean v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_3b

    .line 204
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 205
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 206
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 207
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-virtual {v0, v4, v8, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 208
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 209
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 210
    iget v4, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    goto :goto_1f

    .line 211
    :cond_3b
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 212
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 213
    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 214
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-virtual {v0, v3, v8, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 215
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 216
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 217
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    .line 218
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3d

    .line 219
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 220
    iget-boolean v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_3c

    .line 221
    invoke-virtual {v0, v4, v1, v2, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v4

    add-int/2addr v4, v3

    .line 222
    invoke-virtual {v0, v4, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    goto :goto_20

    .line 223
    :cond_3c
    invoke-virtual {v0, v3, v1, v2, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v3

    add-int/2addr v3, v4

    .line 224
    invoke-virtual {v0, v3, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    :cond_3d
    :goto_20
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 4
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 5
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 6
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 7
    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    .line 8
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    sub-int/2addr v1, p0

    .line 10
    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 11
    iput p0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    :goto_0
    return-object v0
.end method

.method public final recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 11

    .line 1
    iget-boolean v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    .line 3
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez v0, :cond_1

    goto/16 :goto_8

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v4, v0, -0x1

    .line 6
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v6, v6, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    aget v5, v6, v5

    if-ne v5, v3, :cond_3

    goto/16 :goto_8

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    move v6, v4

    :goto_0
    if-ltz v6, :cond_8

    .line 9
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 10
    iget v8, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v9

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v9, :cond_4

    .line 12
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-gt v9, v8, :cond_5

    goto :goto_1

    .line 13
    :cond_4
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 14
    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v10

    sub-int/2addr v10, v8

    if-lt v9, v10, :cond_5

    :goto_1
    move v8, v2

    goto :goto_2

    :cond_5
    move v8, v1

    :goto_2
    if-eqz v8, :cond_8

    .line 15
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ne v8, v7, :cond_7

    if-gtz v5, :cond_6

    move v0, v6

    goto :goto_3

    .line 16
    :cond_6
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    add-int/2addr v5, v0

    .line 17
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    move-object v3, v0

    move v0, v6

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_8
    :goto_3
    if-lt v4, v0, :cond_12

    .line 18
    invoke-virtual {p0, v4, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 19
    :cond_9
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez v0, :cond_a

    goto/16 :goto_8

    .line 20
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_8

    .line 21
    :cond_b
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 22
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v5, v5, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    aget v4, v5, v4

    if-ne v4, v3, :cond_c

    goto/16 :goto_8

    .line 23
    :cond_c
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    move v6, v1

    :goto_4
    if-ge v6, v0, :cond_11

    .line 24
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 25
    iget v8, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 26
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v9

    if-nez v9, :cond_d

    iget-boolean v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v9, :cond_d

    .line 27
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 28
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    if-gt v9, v8, :cond_e

    goto :goto_5

    .line 29
    :cond_d
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-gt v9, v8, :cond_e

    :goto_5
    move v8, v2

    goto :goto_6

    :cond_e
    move v8, v1

    :goto_6
    if-eqz v8, :cond_11

    .line 30
    iget v8, v5, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ne v8, v7, :cond_10

    .line 31
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v4, v3, :cond_f

    move v3, v6

    goto :goto_7

    .line 32
    :cond_f
    iget v3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    add-int/2addr v4, v3

    .line 33
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    move-object v5, v3

    move v3, v6

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_11
    :goto_7
    if-ltz v3, :cond_12

    .line 34
    invoke-virtual {p0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_12
    :goto_8
    return-void
.end method

.method public final resolveInfiniteAmount()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-eqz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 5
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 5
    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int/2addr p3, p1

    .line 6
    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    .line 7
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    return p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 9
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 4
    iput v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 5
    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int/2addr p3, p1

    .line 6
    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    .line 7
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    return p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 9
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public setAlignItems(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    if-eq v0, p1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 4
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 3
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 5
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 4
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 6
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "wrap_reverse is not supported in FlexboxLayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setJustifyContent(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 3
    iput p3, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public final updateDirtyPosition(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    .line 5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    return-void

    .line 7
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 10
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    :goto_0
    return-void
.end method

.method public final updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->resolveInfiniteAmount()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 6
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    goto :goto_1

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 11
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v0, v1

    .line 12
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    .line 13
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 14
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 15
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    const/4 v0, 0x1

    .line 16
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    .line 17
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    .line 18
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 19
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    const/high16 v1, -0x80000000

    .line 20
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 21
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 22
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eqz p2, :cond_2

    .line 23
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_2

    .line 25
    iget p2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    if-ltz p2, :cond_2

    .line 26
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ge p2, p3, :cond_2

    .line 27
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 28
    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 29
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    .line 30
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 31
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 32
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 33
    iget p1, p1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr p2, p1

    .line 34
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    :cond_2
    return-void
.end method

.method public final updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->resolveInfiniteAmount()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 6
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 9
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    goto :goto_1

    .line 10
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 11
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 12
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 13
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 14
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    .line 15
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 16
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    .line 17
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    const/4 v0, 0x1

    .line 18
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    const/4 v0, -0x1

    .line 19
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    .line 20
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    .line 21
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    const/high16 v1, -0x80000000

    .line 22
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    .line 23
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    .line 24
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eqz p2, :cond_2

    if-lez v1, :cond_2

    .line 25
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 26
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 27
    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    if-le p2, p1, :cond_2

    .line 28
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    .line 29
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 30
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    .line 31
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    .line 32
    iget p1, p1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr p2, p1

    .line 33
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    :cond_2
    return-void
.end method
