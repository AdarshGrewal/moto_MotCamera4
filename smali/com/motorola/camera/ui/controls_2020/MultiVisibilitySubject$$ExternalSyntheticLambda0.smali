.class public final synthetic Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;IZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;IZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;IZ)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$2:Z

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v0

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->showTimer(JZ)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$2:Z

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 6
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->notifyVisibilityChange(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->notifyVisibilityChange(Z)V

    :cond_2
    :goto_0
    return-void

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$2:Z

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->INFLATION_STATES:Ljava/util/List;

    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->tooltips:Ljava/util/List;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    :goto_2
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez v1, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 16
    :goto_3
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
