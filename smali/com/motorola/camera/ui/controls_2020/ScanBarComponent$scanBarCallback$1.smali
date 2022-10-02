.class public final Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;
.super Ljava/lang/Object;
.source "ScanBarComponent.kt"

# interfaces
.implements Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v3

    :goto_0
    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    if-ne v3, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {v3, p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->isSameTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v1, :cond_4

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    if-eqz v3, :cond_8

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 9
    iget-boolean v4, v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->isOtherComponentVisible:Z

    if-nez v4, :cond_8

    if-eqz v0, :cond_5

    goto :goto_6

    .line 10
    :cond_5
    iput-object p1, v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 11
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->AUTO_LAUNCH_DATA:Ljava/util/List;

    .line 12
    iget-object v3, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v3}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 14
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->executePrimaryAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 16
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    .line 18
    sget-wide v4, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_TIMEOUT:J

    .line 19
    invoke-virtual {v0, v3, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_5

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    const/16 v0, 0x8

    .line 21
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsVisibility(I)V

    const/4 v3, 0x0

    .line 22
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsScale(F)V

    .line 23
    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 24
    :goto_4
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 25
    :goto_5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "IS_SELECTED"

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 30
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SCAN_BAR_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v1, p1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 p1, 0x4

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_8
    :goto_6
    return-void
.end method

.method public onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getFieldsCount()I

    move-result v1

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getFieldsCount()I

    move-result v0

    if-le v1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    .line 4
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    :cond_2
    return-void
.end method
