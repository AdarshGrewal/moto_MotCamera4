.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda5;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 4
    :goto_1
    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->modeChanged:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 6
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->showToggle()V

    goto :goto_5

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v2

    :goto_4
    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->showSliderBar()V

    goto :goto_5

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->showToggle()V

    .line 10
    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v2

    :goto_6
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->notifyFaceBeauty(Z)V

    return-void

    .line 11
    :goto_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->animateShow()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
