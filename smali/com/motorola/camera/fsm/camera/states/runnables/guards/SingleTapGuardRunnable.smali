.class public Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;
.source "SingleTapGuardRunnable.java"


# instance fields
.field public final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;->mType:I

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    check-cast p2, Landroid/os/Bundle;

    const-string v0, "CAPTURE_TRIGGER"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 4
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->tapAllowed(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "TIMER"

    .line 6
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 7
    :goto_0
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 8
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-ne v1, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    .line 10
    :goto_2
    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 11
    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 12
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 13
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "LOCATION"

    .line 15
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    if-eqz p2, :cond_4

    .line 16
    invoke-static {p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isTapInPreview(Landroid/graphics/PointF;Z)Z

    move-result v7

    .line 17
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isInAllowedAreaForTapAnyWhere(Landroid/graphics/PointF;)Z

    move-result p2

    goto :goto_3

    :cond_4
    move p2, v2

    move v7, p2

    .line 18
    :goto_3
    iget v8, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable;->mType:I

    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v8

    if-eqz v8, :cond_9

    if-eq v8, v1, :cond_8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    const/4 p2, 0x3

    if-eq v8, p2, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v6, :cond_6

    const-string p2, "LOCK_FOCUS_STATE"

    .line 19
    invoke-virtual {v5, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    :cond_6
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isRoiSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isRoiAllowed()Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_a

    if-eqz p2, :cond_a

    if-eqz v0, :cond_a

    goto :goto_4

    .line 22
    :cond_8
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isRoiSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 23
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isRoiAllowed()Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz v7, :cond_a

    if-nez v6, :cond_a

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_a

    if-eqz p2, :cond_a

    if-nez v0, :cond_a

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_4
    move v2, v1

    :cond_a
    :goto_5
    return v2
.end method
