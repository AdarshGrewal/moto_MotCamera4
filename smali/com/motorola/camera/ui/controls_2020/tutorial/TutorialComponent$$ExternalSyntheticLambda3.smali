.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;II)V
    .locals 1

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;->f$1:I

    .line 1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->tooltips:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    :goto_0
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 3
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->setCanCancel(Z)V

    .line 4
    :goto_1
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show()V

    :goto_2
    return-void

    .line 5
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;->f$1:I

    .line 6
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->inflateViewStub()V

    .line 8
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    .line 9
    :goto_4
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->dualCaptureTooltip:Ljava/util/List;

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    :goto_5
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez v1, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x1

    .line 10
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->setCanCancel(Z)V

    .line 11
    :goto_6
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez p0, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show()V

    .line 12
    :goto_7
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
