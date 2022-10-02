.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;Ljava/util/List;ZI)V
    .locals 1

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->$r8$classId:I

    const-string v1, "$newList"

    const-string v2, "$animationType"

    const-string/jumbo v3, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    iget-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$3:Z

    .line 1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;

    const/4 v9, 0x2

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;Ljava/util/List;ZI)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$3:Z

    .line 4
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;

    invoke-direct {v3, v0, v5, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Ljava/util/List;ZLandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateLayoutChange(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;ILkotlin/jvm/functions/Function0;)V

    .line 7
    :goto_0
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez p0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_1
    return-void

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;->f$3:Z

    .line 10
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->pendingAnimationEndCallback:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    .line 12
    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->pendingAnimationEndCallback:Lkotlin/jvm/functions/Function0;

    .line 13
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateLayoutChange(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;ILkotlin/jvm/functions/Function0;)V

    if-eqz p0, :cond_4

    .line 15
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 17
    :cond_4
    :goto_2
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez p0, :cond_5

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
