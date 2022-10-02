.class public Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "HelpTooltips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;,
        Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorTooltip;,
        Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;,
        Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$CinemaViewfinderTooltip;,
        Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public SpotColorLevelChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

.field public mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

.field public mHideTooltip:Z

.field public mModeToggleListener:Lcom/motorola/camera/Notifier$Listener;

.field public mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public mShowSpotColorLevelTip:Z

.field public mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

.field public mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

.field public mVisibilityListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/ui/widgets/gl/AbstractComponentVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field public mZoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$CinemaViewfinderTooltip;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$CinemaViewfinderTooltip;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    aput-object v0, p2, p1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorTooltip;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorTooltip;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    const/4 v0, 0x2

    aput-object p1, p2, v0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    const/4 v0, 0x3

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 5
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mVisibilityListeners:Ljava/util/Set;

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda4;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 7
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda4;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 9
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mZoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 10
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda4;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 11
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mModeToggleListener:Lcom/motorola/camera/Notifier$Listener;

    .line 12
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->SpotColorLevelChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    return-void
.end method


# virtual methods
.method public final animateDismissCurrentTooltip()V
    .locals 9

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$3;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    const-wide/16 v2, 0xc8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mVisibilityListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/AbstractComponentVisibilityListener;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AbstractComponentVisibilityListener;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final animateDisplayCurrentTooltip()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    const-wide/16 v3, 0x12c

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mVisibilityListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/AbstractComponentVisibilityListener;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AbstractComponentVisibilityListener;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public checkTooltips()V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 4
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDisplayCurrentTooltip()V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final dismissCurrentTooltip()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->markDismissed()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->checkTooltips()V

    :cond_2
    return-void
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/Collection;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 7
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 9
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 11
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 13
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 15
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 17
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 19
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 21
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 23
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 25
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 27
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 28
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    .line 29
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 30
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HelpTooltips"

    return-object p0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->loadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->loadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->SpotColorLevelChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x1

    .line 11
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    .line 2
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    .line 4
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onPreDraw([F[F[F)Z
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRotate(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mCanRotate:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDisplayCurrentTooltip()V

    :cond_0
    return-void
.end method

.method public declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    .line 3
    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mCanRotate:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->setDisplayOrientation(I)V

    .line 4
    :cond_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v4

    .line 5
    iget v4, v4, Lcom/motorola/camera/ui/widgets/ColorToolbox;->tooltipBackground:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-nez v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v9, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v11, v8, [I

    aput v10, v11, v6

    aput v10, v11, v5

    aput v10, v11, v7

    const/4 v12, 0x3

    aput v10, v11, v12

    .line 8
    invoke-virtual {v9, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setColors([I)V

    .line 9
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    new-array v9, v12, [I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v9, v7

    invoke-virtual {v3, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->setColors([I)V

    .line 10
    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mRadius:Ljava/lang/Float;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v9, 0x40000000    # 2.0f

    if-nez v4, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mRadius:F

    .line 12
    iget-object v10, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v3, v9

    mul-float/2addr v3, v4

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v10, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    .line 13
    :goto_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mShowCloseIcon:Z

    .line 14
    iput-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    .line 15
    iget-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mUseDynamicViewSize:Z

    .line 16
    iput-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mUseDynamicViewSize:Z

    if-nez v4, :cond_4

    .line 17
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mSize:Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 18
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mSize:Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    .line 19
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    new-instance v10, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v10, v3, v2}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 20
    iput-object v10, v4, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 21
    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingX:Ljava/lang/Float;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingY:Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_6

    if-nez v4, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    .line 23
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    .line 24
    :cond_6
    :goto_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTitleResource:I

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextResource:I

    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mActionResource:I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 26
    invoke-virtual {v11}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-lez v3, :cond_7

    .line 27
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 28
    :goto_3
    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-lez v10, :cond_8

    .line 29
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    .line 30
    :goto_4
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v11, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    if-eqz v10, :cond_9

    .line 31
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 32
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_5

    .line 33
    :cond_9
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_5
    if-nez v3, :cond_a

    .line 34
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v4, " "

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 35
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_6

    .line 36
    :cond_a
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 37
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 38
    :goto_6
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 39
    iget-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mUseDynamicViewSize:Z

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_f

    .line 40
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    const/high16 v6, 0x435c0000    # 220.0f

    mul-float/2addr v6, v3

    const/high16 v10, 0x43440000    # 196.0f

    mul-float/2addr v10, v3

    .line 41
    iget v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    mul-float/2addr v11, v3

    mul-float/2addr v11, v9

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    .line 42
    iget-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz v3, :cond_b

    .line 43
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v11, v3

    sub-float/2addr v10, v3

    :cond_b
    cmpl-float v3, v11, v6

    if-lez v3, :cond_c

    .line 44
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v10, v10

    invoke-virtual {v3, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 45
    :cond_c
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    iget v13, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v10, v13

    mul-float/2addr v10, v9

    add-float/2addr v10, v3

    float-to-int v3, v10

    .line 46
    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 47
    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 48
    iget-object v13, v10, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 49
    invoke-virtual {v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v10

    .line 50
    :cond_d
    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 51
    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 52
    iget-object v13, v10, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 53
    invoke-virtual {v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v10

    .line 54
    :cond_e
    new-instance v10, Lcom/motorola/camera/PreviewSize;

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v10, v6, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 55
    iput-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    goto/16 :goto_8

    .line 56
    :cond_f
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    mul-float/2addr v10, v9

    iget v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v3, v10

    int-to-float v3, v3

    .line 57
    iget-boolean v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz v10, :cond_10

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    .line 58
    :cond_10
    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v3, v3

    invoke-virtual {v10, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 59
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    .line 60
    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    const/high16 v11, 0x41c00000    # 24.0f

    mul-float/2addr v10, v11

    .line 61
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 62
    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    :cond_11
    int-to-float v6, v6

    add-float/2addr v10, v6

    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 64
    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 65
    invoke-virtual {v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v10, v6

    float-to-int v6, v10

    .line 66
    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 67
    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 68
    iget-object v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 69
    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v10

    int-to-float v6, v6

    .line 70
    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v10, v4

    add-float/2addr v10, v6

    float-to-int v6, v10

    :cond_12
    if-le v6, v3, :cond_14

    sub-int/2addr v6, v3

    .line 71
    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v11, v10, Lcom/motorola/camera/PreviewSize;->width:I

    iget v10, v10, Lcom/motorola/camera/PreviewSize;->height:I

    add-int/2addr v10, v6

    invoke-direct {v3, v11, v10}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 72
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 73
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowDirection:I

    if-ne v3, v7, :cond_13

    .line 74
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    int-to-float v6, v6

    div-float/2addr v6, v9

    .line 75
    invoke-virtual {v3, v5, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FFF)V

    .line 76
    invoke-virtual {v2, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_7

    :cond_13
    if-ne v3, v8, :cond_14

    .line 77
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    int-to-float v6, v6

    div-float/2addr v6, v9

    .line 78
    invoke-virtual {v3, v5, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 79
    invoke-virtual {v2, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 80
    :cond_14
    :goto_7
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    .line 81
    iget v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v6, v10

    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 82
    iget-object v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 83
    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    add-float/2addr v6, v10

    float-to-int v6, v6

    if-le v6, v3, :cond_15

    sub-int/2addr v6, v3

    .line 84
    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v11, v10, Lcom/motorola/camera/PreviewSize;->width:I

    add-int/2addr v11, v6

    iget v6, v10, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v3, v11, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 85
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 86
    :cond_15
    :goto_8
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    .line 87
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    invoke-direct {v2, v3, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 88
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    .line 89
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v2, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->updateDisplay(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;I)V

    .line 90
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    .line 91
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowDirection:I

    .line 92
    iput v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowPosition:F

    .line 93
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    .line 94
    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    .line 95
    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowThickness:F

    iget v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v10, v11

    div-float/2addr v10, v9

    .line 96
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v6, v3, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setPostScale(FFF)V

    .line 97
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v14, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v14, v9

    iget v15, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mRadius:F

    mul-float/2addr v14, v15

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v15

    div-float/2addr v14, v15

    invoke-virtual {v11, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    .line 98
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget v14, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowDirection:I

    .line 99
    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmVisibility$$com$motorola$camera$ui$widgets$gl$textures$SimplePopupTexture$ArrowDirection(I)Z

    move-result v14

    .line 100
    invoke-virtual {v11, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 101
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    mul-float v14, v10, v9

    invoke-virtual {v11, v14, v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 102
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget v14, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowDirection:I

    .line 103
    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmRotation$$com$motorola$camera$ui$widgets$gl$textures$SimplePopupTexture$ArrowDirection(I)F

    move-result v14

    .line 104
    invoke-virtual {v11, v14, v5, v5, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 105
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget v14, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowDirection:I

    .line 106
    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmX$$com$motorola$camera$ui$widgets$gl$textures$SimplePopupTexture$ArrowDirection(I)F

    move-result v15

    add-float/2addr v6, v10

    mul-float/2addr v6, v15

    .line 107
    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmY$$com$motorola$camera$ui$widgets$gl$textures$SimplePopupTexture$ArrowDirection(I)F

    move-result v14

    .line 108
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget v15, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowPosition:F

    mul-float/2addr v14, v15

    add-float/2addr v14, v6

    iget v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowDirection:I

    .line 109
    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmY$$com$motorola$camera$ui$widgets$gl$textures$SimplePopupTexture$ArrowDirection(I)F

    move-result v15

    add-float/2addr v3, v10

    mul-float/2addr v3, v15

    .line 110
    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmX$$com$motorola$camera$ui$widgets$gl$textures$SimplePopupTexture$ArrowDirection(I)F

    move-result v6

    .line 111
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowPosition:F

    mul-float/2addr v6, v10

    add-float/2addr v6, v3

    .line 112
    invoke-virtual {v11, v14, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 113
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    .line 114
    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    .line 115
    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    iget v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v10, v11

    .line 116
    iget v14, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    mul-float/2addr v14, v11

    neg-float v11, v6

    add-float/2addr v11, v10

    .line 117
    iget-object v15, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v15}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    div-float/2addr v15, v9

    add-float/2addr v15, v11

    .line 118
    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean v12, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    if-eqz v12, :cond_16

    neg-float v15, v15

    :cond_16
    sub-float v12, v3, v14

    .line 119
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v8, v9

    sub-float v8, v12, v8

    .line 120
    invoke-virtual {v7, v15, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 121
    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v9

    add-float/2addr v7, v11

    .line 122
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    if-eqz v11, :cond_17

    neg-float v7, v7

    .line 123
    :cond_17
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v9

    sub-float/2addr v12, v11

    .line 124
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    goto :goto_9

    :cond_18
    move v11, v5

    :goto_9
    sub-float/2addr v12, v11

    .line 125
    invoke-virtual {v8, v7, v12, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 126
    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1a

    sub-float v7, v6, v10

    .line 127
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 128
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    if-eqz v10, :cond_19

    neg-float v7, v7

    :cond_19
    neg-float v10, v3

    add-float/2addr v10, v14

    .line 129
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v9

    add-float/2addr v11, v10

    .line 130
    invoke-virtual {v8, v7, v11, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 131
    :cond_1a
    iget-boolean v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz v7, :cond_1c

    .line 132
    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 133
    iget-object v8, v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 134
    iget v8, v8, Landroid/graphics/PointF;->x:F

    .line 135
    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v10, v4

    div-float/2addr v10, v8

    .line 136
    invoke-virtual {v7, v10, v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    const/high16 v7, 0x40c00000    # 6.0f

    .line 137
    iget v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v4, v8

    div-float/2addr v4, v9

    sub-float/2addr v6, v4

    .line 138
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-boolean v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    if-eqz v7, :cond_1b

    neg-float v6, v6

    :cond_1b
    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    const/high16 v9, 0x41200000    # 10.0f

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 139
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 140
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    mul-float/2addr v2, v9

    add-float/2addr v2, v7

    mul-float/2addr v2, v8

    sub-float/2addr v3, v2

    .line 141
    invoke-virtual {v4, v6, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 142
    :cond_1c
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v4, 0x4

    .line 143
    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 144
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 146
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    .line 147
    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 148
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 v4, 0x2

    .line 149
    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 150
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    :cond_1d
    :goto_a
    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 3
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->initialize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-eqz v0, :cond_7

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->checkTooltips()V

    goto/16 :goto_2

    .line 8
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_RECORD_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_2

    .line 20
    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mZoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mModeToggleListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_2

    .line 24
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mZoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mModeToggleListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v4}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 28
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    .line 29
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_7

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 33
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    goto :goto_2

    .line 34
    :cond_5
    :goto_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    .line 35
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_6

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 37
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 38
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    .line 39
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 40
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

    .line 41
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldDismiss(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->dismissCurrentTooltip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTextures()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->unloadTexture()V

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->SpotColorLevelChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
