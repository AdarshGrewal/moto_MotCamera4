.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->modeChangeToManual:Z

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 5
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 6
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "get(\n                   \u2026.FACE_BEAUTY_LEVEL).value"

    .line 7
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->notifyFaceBeauty(Z)V

    .line 12
    :goto_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->modeChangeToManual:Z

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->animateShow()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
