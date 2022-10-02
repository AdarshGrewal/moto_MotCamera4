.class public final synthetic Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/RotateDrawable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/RotateDrawable;

    const-string v0, "$rotateDrawable"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    return-void

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    sget v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->$r8$clinit:I

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadPosition:F

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 8
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 9
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mCurrentFrame:I

    if-eq p1, v0, :cond_1

    .line 10
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mCurrentFrame:I

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;->onFrameUpdate(IZ)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    .line 13
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->showScaleProperty:Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v0, "this$0"

    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    .line 15
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->indicatorScale:F

    .line 16
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
