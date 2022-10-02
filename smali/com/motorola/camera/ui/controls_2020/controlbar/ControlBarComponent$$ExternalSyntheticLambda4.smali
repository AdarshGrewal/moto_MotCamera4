.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 10

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_18

    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_18

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(Z)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 4
    :cond_0
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "TYPE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "DIRECTION"

    .line 5
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ORIGIN"

    .line 6
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_18

    if-nez v2, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 p1, 0x2

    new-array v4, p1, [I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, p1, :cond_2

    const/4 v7, -0x1

    .line 7
    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v4}, Landroid/widget/ToggleButton;->getLocationOnScreen([I)V

    .line 9
    :goto_1
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v6, 0x0

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :goto_2
    if-nez v6, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 10
    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v7}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY(Z)F

    move-result v6

    sub-float/2addr v4, v6

    .line 11
    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    goto/16 :goto_8

    .line 12
    :cond_7
    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 13
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    sget-object v7, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->None:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const/16 v8, 0x5a

    if-eq v2, v8, :cond_d

    const/16 v8, 0xb4

    const/4 v9, 0x4

    if-eq v2, v8, :cond_b

    const/16 v8, 0x10e

    if-eq v2, v8, :cond_9

    if-ne v1, v3, :cond_8

    goto :goto_4

    :cond_8
    if-ne v1, v9, :cond_f

    goto :goto_3

    :cond_9
    if-ne v1, p1, :cond_a

    goto :goto_4

    :cond_a
    if-ne v1, v0, :cond_f

    goto :goto_3

    :cond_b
    if-ne v1, v3, :cond_c

    goto :goto_3

    :cond_c
    if-ne v1, v9, :cond_f

    goto :goto_4

    :cond_d
    if-ne v1, p1, :cond_e

    :goto_3
    move-object v7, v6

    goto :goto_5

    :cond_e
    if-ne v1, v0, :cond_f

    :goto_4
    move-object v7, v4

    .line 14
    :cond_f
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v0, :cond_11

    if-eq v1, p1, :cond_10

    move-object v4, v7

    goto :goto_6

    :cond_10
    move-object v4, v6

    :cond_11
    :goto_6
    const-string v1, "ON_DOWN"

    .line 15
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 16
    iget-wide v7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->lastCloseTimestamp:J

    sub-long/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v7, 0x96

    cmp-long p2, v1, v7

    if-gez p2, :cond_12

    move p2, v0

    goto :goto_7

    :cond_12
    move p2, v5

    :goto_7
    if-ne v4, v6, :cond_13

    .line 17
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez v1, :cond_18

    if-eqz p2, :cond_13

    goto :goto_8

    .line 18
    :cond_13
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p2, v0, :cond_16

    if-eq p2, p1, :cond_14

    goto :goto_8

    .line 19
    :cond_14
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p0, :cond_15

    goto :goto_8

    :cond_15
    invoke-virtual {p0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_8

    .line 20
    :cond_16
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p0, :cond_17

    goto :goto_8

    :cond_17
    invoke-virtual {p0, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_18
    :goto_8
    return-void
.end method
