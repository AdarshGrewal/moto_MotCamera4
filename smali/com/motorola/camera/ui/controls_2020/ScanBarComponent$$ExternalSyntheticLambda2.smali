.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 1
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const v5, 0x7f08008a

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 4
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 5
    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    :goto_3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v4, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 7
    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v5, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    iget-object v5, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mImageRect:Landroid/graphics/Rect;

    if-nez v5, :cond_5

    :goto_4
    move-object v6, v1

    move v1, v4

    goto :goto_5

    .line 9
    :cond_5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 11
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    sub-float/2addr v7, v9

    .line 12
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    sub-float/2addr v1, v8

    .line 13
    invoke-direct {v6, v7, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 14
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 15
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f070343

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    div-float/2addr v1, v5

    :goto_5
    cmpg-float v5, v1, v4

    if-gez v5, :cond_6

    neg-float v1, v1

    :cond_6
    move v10, v1

    .line 16
    iget v1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v4

    .line 17
    iget v5, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v5, v4

    .line 18
    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v7, v4

    mul-float/2addr v1, v1

    mul-float/2addr v5, v5

    add-float/2addr v5, v1

    mul-float/2addr v7, v7

    add-float/2addr v7, v5

    float-to-double v4, v7

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 20
    sget v4, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->FLY_ANIM_SPEED:F

    div-float/2addr v1, v4

    .line 21
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x0

    iget v5, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v13, v5

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 22
    iget v5, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v5, v5

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v11, v4

    move/from16 v17, v5

    .line 23
    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    float-to-long v5, v1

    .line 24
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 25
    invoke-virtual {v4, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 26
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    sget v11, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->FLY_ANIM_SIZE:F

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v7, v1

    move v8, v10

    move v9, v11

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 27
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 28
    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 29
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 30
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 31
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 32
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 33
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_6
    return-void

    .line 34
    :goto_7
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 35
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->actionText:Landroid/widget/TextView;

    const-string v4, "it.mData.titleString"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const-string v8, ""

    if-nez v1, :cond_8

    goto :goto_a

    .line 37
    :cond_8
    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v9, :cond_9

    move-object v9, v8

    goto :goto_9

    .line 38
    :cond_9
    iget-object v10, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v10}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v10

    if-nez v10, :cond_a

    move v10, v7

    goto :goto_8

    :cond_a
    sget-object v11, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v11, v10

    :goto_8
    if-eq v10, v2, :cond_d

    if-eq v10, v6, :cond_c

    if-eq v10, v5, :cond_b

    .line 39
    iget-object v9, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v9}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getTitleString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 40
    :cond_b
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v10, 0x7f1102f0

    .line 41
    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getInstance().getString(\u2026r_code_bar_contact_title)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 42
    :cond_c
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v10, 0x7f1102f5

    .line 43
    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getInstance().getString(\u2026g.qr_code_bar_wifi_title)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 44
    :cond_d
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v10, 0x7f1102f4

    .line 45
    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getInstance().getString(\u2026ng.qr_code_bar_url_title)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    :goto_9
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_a
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-nez v1, :cond_e

    goto/16 :goto_e

    .line 48
    :cond_e
    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v9, :cond_f

    goto/16 :goto_d

    .line 49
    :cond_f
    iget-object v10, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v10}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v10

    if-nez v10, :cond_10

    goto :goto_b

    :cond_10
    sget-object v7, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v7, v7, v10

    :goto_b
    const-string v10, "it.mData.detailsString"

    if-eq v7, v2, :cond_13

    if-eq v7, v6, :cond_12

    if-eq v7, v5, :cond_11

    const/4 v4, 0x4

    if-eq v7, v4, :cond_14

    .line 50
    iget-object v4, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getDetailsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    .line 51
    :cond_11
    iget-object v5, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v5}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getTitleString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    .line 52
    :cond_12
    iget-object v4, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getDetailsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "\r\n"

    const-string v6, "\n"

    const-string v7, "\r"

    .line 53
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->requireNonNegativeLimit(I)V

    .line 55
    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 56
    new-instance v6, Lkotlin/text/DelimitedRangesSequence;

    new-instance v7, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;

    invoke-direct {v7, v5, v3}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;-><init>(Ljava/util/List;Z)V

    invoke-direct {v6, v4, v3, v3, v7}, Lkotlin/text/DelimitedRangesSequence;-><init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V

    .line 57
    new-instance v5, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;

    invoke-direct {v5, v4}, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v6, v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v4

    .line 58
    invoke-static {v4}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v4

    .line 59
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_c

    .line 60
    :cond_13
    iget-object v4, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getDetailsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    move-object v8, v4

    .line 61
    :cond_14
    :goto_d
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_e
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsVisibility(I)V

    .line 63
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_f

    :cond_15
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 64
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v4, :cond_16

    move v4, v3

    goto :goto_10

    :cond_16
    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_10
    if-gt v4, v2, :cond_18

    if-eqz v1, :cond_17

    goto :goto_11

    :cond_17
    move v4, v3

    goto :goto_12

    :cond_18
    :goto_11
    move v4, v2

    .line 65
    :goto_12
    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->moreButton:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    if-nez v5, :cond_19

    goto :goto_14

    :cond_19
    if-eqz v4, :cond_1a

    move v4, v3

    goto :goto_13

    :cond_1a
    move v4, v6

    :goto_13
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 66
    :goto_14
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-nez v4, :cond_1b

    goto :goto_16

    :cond_1b
    if-eqz v1, :cond_1c

    goto :goto_15

    :cond_1c
    move v3, v6

    :goto_15
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :goto_16
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    sget-wide v4, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->TEXT_WAIT_TIME:J

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
