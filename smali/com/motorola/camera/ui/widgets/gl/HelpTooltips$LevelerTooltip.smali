.class public Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;
.super Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.source "HelpTooltips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LevelerTooltip"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 2
    new-instance v5, Landroid/util/SizeF;

    const/high16 p1, 0x43700000    # 240.0f

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-direct {v5, p1, v0}, Landroid/util/SizeF;-><init>(FF)V

    const-wide/16 v1, 0x0

    const v3, 0x7f1104b8

    const v4, 0x7f1100f2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;-><init>(JIILandroid/util/SizeF;IZZ)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void
.end method

.method public markDismissed()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    const-string p0, "IS_SELECTED"

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 4
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->HELP_TOOLTIP_LEVELER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public shouldDismiss(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_NO_LEVELER_CAPTURE_IMAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 6
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/16 v3, 0x13

    if-ne v0, v3, :cond_3

    if-ne v2, v4, :cond_3

    .line 8
    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    .line 9
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 10
    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->showTutorial()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method

.method public updateDisplay(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->updateDisplay()V

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getYOffsetIfNotWideScreen()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    .line 4
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x41a00000    # 20.0f

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    const/16 v3, 0x5a

    if-eq p3, v3, :cond_3

    const/16 v3, 0xb4

    if-eq p3, v3, :cond_2

    const/16 v3, 0x10e

    if-eq p3, v3, :cond_1

    move p2, v2

    move p3, p2

    goto :goto_1

    :cond_1
    div-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 6
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget p3, p3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p3, p3

    div-float/2addr p3, v0

    add-float/2addr p3, v1

    add-float/2addr p3, p1

    goto :goto_1

    :cond_2
    div-float/2addr v1, v0

    sub-float/2addr p2, v1

    .line 7
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget p3, p3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p3, p3

    div-float/2addr p3, v0

    sub-float/2addr p2, p3

    sub-float/2addr p2, p1

    goto :goto_0

    :cond_3
    div-float/2addr v1, v0

    sub-float p3, v2, v1

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    sub-float/2addr p3, v1

    sub-float/2addr p3, p1

    goto :goto_1

    :cond_4
    div-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 9
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    add-float/2addr p2, v1

    add-float/2addr p2, p1

    :goto_0
    move p3, v2

    :goto_1
    const/4 p1, 0x4

    .line 10
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, p3, p2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void
.end method
