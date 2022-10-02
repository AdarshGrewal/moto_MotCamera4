.class public final synthetic Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;F)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$3:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string v1, "$cameraIndex"

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$3:F

    .line 1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$coordinates"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p0

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$3:F

    sget-object v5, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->Companion:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;

    .line 5
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$it"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p0

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleOne:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->getDirectionX(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 8
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->circleTwo:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->getDirectionX(FF)F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
