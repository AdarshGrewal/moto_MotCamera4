.class public final Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;
.super Ljava/lang/Object;
.source "TimerDotsComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DotAnimatorBuilder"
.end annotation


# instance fields
.field public final activeColor:I

.field public final first:Landroid/widget/ImageView;

.field public final growthScale:F

.field public final inactiveColor:I

.field public final offScreenTranslation:F

.field public final parentView:Landroid/view/View;

.field public final second:Landroid/widget/ImageView;

.field public final third:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->parentView:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060374

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->activeColor:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060375

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->inactiveColor:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070372

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070373

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->growthScale:F

    const v0, 0x7f0a03d1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->first:Landroid/widget/ImageView;

    const v2, 0x7f0a03d2

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->second:Landroid/widget/ImageView;

    const v2, 0x7f0a03d3

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->third:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    neg-float v1, v1

    .line 12
    :goto_0
    iput v1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->offScreenTranslation:F

    return-void
.end method


# virtual methods
.method public final scaleAnimatorSet(Landroid/widget/ImageView;FJ)Landroid/animation/AnimatorSet;
    .locals 3

    .line 1
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    invoke-virtual {p0, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    .line 3
    sget-object p4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const-string v0, "SCALE_X"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 4
    invoke-static {p1, p4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, p3, v2

    .line 5
    sget-object p4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const-string v1, "SCALE_Y"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v0, [F

    aput p2, v1, v2

    .line 6
    invoke-static {p1, p4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p3, v0

    .line 7
    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p0
.end method

.method public final singleDotAnimatorIn(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->growthScale:F

    const-wide/16 v2, 0x64

    .line 3
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->scaleAnimatorSet(Landroid/widget/ImageView;FJ)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 4
    new-instance v4, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;

    invoke-direct {v4, p1, p0}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$growAndActivateAnimatorSet$1$1;-><init>(Landroid/widget/ImageView;Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->scaleAnimatorSet(Landroid/widget/ImageView;FJ)Landroid/animation/AnimatorSet;

    move-result-object p0

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method public final singleDotAnimatorOut(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;
    .locals 4

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 3
    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->offScreenTranslation:F

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 4
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v1, 0xc8

    .line 5
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 6
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method
