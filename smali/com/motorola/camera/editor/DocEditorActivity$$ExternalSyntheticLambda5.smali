.class public final synthetic Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    .line 1
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f110474

    .line 2
    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->showToast$enumunboxing$(II)V

    return-void

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->INFLATION_STATES:Ljava/util/List;

    .line 4
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/multicamera/DualCaptureStateHelper;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/multicamera/DualCaptureStateHelper;->setAllowClickState(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 9
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureLayoutType()I

    move-result p1

    .line 10
    rem-int/2addr p1, v1

    if-nez p1, :cond_2

    move v1, v2

    .line 11
    :cond_2
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->updateLayoutSwitchDrawable(I)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    :goto_2
    return-void

    .line 15
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/List;

    .line 16
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->startForInAppUpdate()V

    return-void

    .line 19
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    sget p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->$r8$clinit:I

    .line 20
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->selectDrawButton()V

    return-void

    .line 21
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->getAdjustedPoints()[F

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 24
    iget-boolean v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    if-eqz v0, :cond_8

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-object p1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    const/16 v0, 0x8

    new-array v4, v0, [I

    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_4

    .line 26
    aget v6, p1, v5

    float-to-int v6, v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 27
    invoke-virtual {p0, v4, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->getCroppedBmpFromOriginalJpeg([I[I)[B

    move-result-object v4

    .line 28
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    :cond_5
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v6, v0, v2

    aget v7, v0, v1

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 30
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    .line 31
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 32
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    if-ne v6, v1, :cond_6

    .line 33
    aget p1, v0, v2

    aget v5, v0, v1

    invoke-static {v4, p1, v5, v0, v3}, Lcom/motorola/camera/mcf/DocUtil;->monoRGB([BII[IZ)[B

    move-result-object p1

    .line 34
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v4}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 35
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v5, v0, v2

    aget v0, v0, v1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    goto :goto_4

    :cond_6
    if-ne v6, p1, :cond_7

    .line 38
    aget p1, v0, v2

    aget v5, v0, v1

    invoke-static {v4, p1, v5, v0, v3}, Lcom/motorola/camera/mcf/DocUtil;->enhanceRGB([BII[IZ)[B

    move-result-object p1

    .line 39
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v4}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 40
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v5, v0, v2

    aget v0, v0, v1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 42
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    goto :goto_4

    .line 43
    :cond_7
    invoke-virtual {v5}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 44
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 45
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 46
    iput-boolean v3, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    .line 47
    iput-boolean v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    .line 48
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5

    .line 49
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 50
    iput-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    .line 51
    :cond_9
    :goto_5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    .line 52
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->releaseImage(Landroid/widget/ImageView;)V

    .line 53
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->releaseResource()V

    .line 54
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseJpeg()V

    return-void

    .line 55
    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->INFLATION_STATES:Ljava/util/List;

    .line 56
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->completeTutorial()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
