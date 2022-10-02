.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset()V

    return-void

    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    const-string/jumbo v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsScale(F)V

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    if-nez v1, :cond_2

    :goto_2
    move-object v1, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v1

    :goto_3
    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_6

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    .line 6
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    iget-object v2, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    :goto_4
    if-nez v2, :cond_4

    goto :goto_5

    .line 7
    :cond_4
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    sget v14, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->SHRINK_SIZE:F

    sget v15, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->DEFAULT_SIZE:F

    const/16 v16, 0x1

    .line 8
    sget v17, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->PIVOT_VALUE:F

    const/4 v12, 0x1

    const/4 v10, 0x1

    move-object v5, v3

    move v6, v14

    move v7, v15

    move v8, v15

    move v9, v15

    move/from16 v11, v17

    move/from16 v13, v17

    .line 9
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 10
    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 11
    sget-wide v12, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->FLIP_DURATION:J

    invoke-virtual {v3, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 12
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/16 v18, 0x1

    move-object v5, v11

    move v6, v15

    move v7, v14

    move/from16 v10, v16

    move-object v14, v11

    move/from16 v11, v17

    move-wide/from16 v19, v12

    move/from16 v12, v18

    move/from16 v13, v17

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 13
    invoke-virtual {v14, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 14
    sget-wide v5, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->FLIP_OFFSET:J

    invoke-virtual {v14, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    move-wide/from16 v5, v19

    .line 15
    invoke-virtual {v14, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 16
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;

    invoke-direct {v5, v0, v1, v3, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flipAnimation$1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;Landroid/widget/ImageView;Landroid/view/animation/ScaleAnimation;Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;)V

    invoke-virtual {v14, v5}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-nez v1, :cond_5

    goto :goto_5

    .line 17
    :cond_5
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
    :cond_6
    :goto_5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v4}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    .line 20
    sget-wide v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_TIMEOUT:J

    .line 21
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
