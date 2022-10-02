.class public Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.super Ljava/lang/Object;
.source "SequentialTooltip.kt"


# instance fields
.field public mButtonRes:I

.field public mContentLayout:Landroid/widget/RelativeLayout;

.field public mContentRes:I

.field public mContentText:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field public mCount:I

.field public mCross:Landroid/view/View;

.field public mCrossLayout:Landroid/widget/RelativeLayout;

.field public mHeight:I

.field public mIndex:I

.field public mIndexText:Landroid/widget/TextView;

.field public mParentView:Landroid/view/View;

.field public mPopWindow:Landroid/widget/PopupWindow;

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    .line 3
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    .line 4
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCount:I

    .line 5
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mButtonRes:I

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0106

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const p3, 0x7f0a03fc

    const-string p4, "null cannot be cast to non-null type android.widget.RelativeLayout"

    .line 8
    invoke-static {p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip$$ExternalSyntheticOutline0;->m(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 9
    new-instance p3, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const p3, 0x7f0a0400

    const-string p5, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p2, p3, p5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip$$ExternalSyntheticOutline0;->m(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    .line 11
    iget p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const p3, 0x7f0a03ff

    invoke-static {p2, p3, p5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip$$ExternalSyntheticOutline0;->m(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndexText:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f1104ad

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 15
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const p2, 0x7f0a03fe

    invoke-static {p1, p2, p5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip$$ExternalSyntheticOutline0;->m(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 17
    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mButtonRes:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const p2, 0x7f0a0402

    invoke-static {p1, p2, p4}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip$$ExternalSyntheticOutline0;->m(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCrossLayout:Landroid/widget/RelativeLayout;

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const p2, 0x7f0a0401

    const-string p3, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip$$ExternalSyntheticOutline0;->m(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x19

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mWidth:I

    .line 23
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    .line 24
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 25
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p1, 0x7f1201b9

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public clickControl()V
    .locals 0

    return-void
.end method

.method public final dismiss()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final getShowHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    .line 3
    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    return p0
.end method

.method public final getTextLineWidth()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final setCanCancel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public final show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V
    .locals 6

    .line 25
    sget-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;)V

    return-void
.end method

.method public final show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    iget v1, p4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCrossLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/4 v1, 0x2

    const v3, 0x7f0a03fc

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz p4, :cond_4

    const/16 v6, 0xe

    if-eq p4, v5, :cond_3

    const/16 v7, 0x15

    if-eq p4, v1, :cond_2

    const/4 v0, 0x4

    if-eq p4, v0, :cond_1

    const/4 v0, 0x5

    if-eq p4, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 10
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 14
    :goto_0
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_6

    if-ne p4, v5, :cond_5

    .line 16
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    const p5, 0x7f06037f

    invoke-virtual {p4, p5}, Landroid/content/Context;->getColor(I)I

    move-result p4

    goto :goto_1

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 17
    :cond_6
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    const p5, 0x7f06037e

    invoke-virtual {p4, p5}, Landroid/content/Context;->getColor(I)I

    move-result p4

    .line 18
    :goto_1
    iget-object p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-nez p5, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p5}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    if-nez p5, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p5, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 19
    :goto_2
    iget-object p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    if-nez p5, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    if-nez p5, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p5, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 20
    :goto_3
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndexText:Landroid/widget/TextView;

    if-nez p4, :cond_b

    goto :goto_5

    :cond_b
    iget-object p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p5, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    if-nez p5, :cond_d

    goto :goto_4

    :cond_d
    const v0, 0x7f110452

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 21
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 22
    invoke-virtual {p5, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    :goto_5
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    if-nez p4, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p4}, Landroid/view/View;->requestLayout()V

    .line 24
    :goto_6
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
