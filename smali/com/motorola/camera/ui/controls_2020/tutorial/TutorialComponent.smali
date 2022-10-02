.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "TutorialComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ControlSwipeTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomButtonTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ModeMenuTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingsButtonTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;,
        Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTutorialComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TutorialComponent.kt\ncom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1134:1\n1#2:1135\n*E\n"
.end annotation


# static fields
.field public static final INFLATION_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final LISTENED_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOWN_MODE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contentBackground:Landroid/widget/ImageView;

.field public contentHeader:Landroid/widget/TextView;

.field public contentImage:Landroid/widget/ImageView;

.field public contentText:Landroid/widget/TextView;

.field public final controlItemChangeListener:Lcom/motorola/camera/Notifier$Listener;

.field public currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

.field public currentScreenIndex:I

.field public currentScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;",
            ">;"
        }
    .end annotation
.end field

.field public currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

.field public dualCaptureTooltip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;",
            ">;"
        }
    .end annotation
.end field

.field public isControlPanelShown:Z

.field public isModeTutorialShown:Z

.field public isPhotoScreen:Z

.field public isShowTooltips:Z

.field public isTapToggle:Z

.field public isZoomSliderShown:Z

.field public leftButton:Landroid/widget/Button;

.field public mScreenDensity:F

.field public mScreenWidth:I

.field public modeSliderComponent:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

.field public paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

.field public final panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public rightButton:Landroid/widget/Button;

.field public rootLayout:Landroid/widget/RelativeLayout;

.field public settingSingleTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;

.field public final settingTutorialChangeListener:Lcom/motorola/camera/Notifier$Listener;

.field public shouldShowZoomTooltip:Z

.field public superSlowMotionTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;

.field public titleClose:Landroid/widget/ImageButton;

.field public titleIcon:Landroid/widget/ImageView;

.field public titleText:Landroid/widget/TextView;

.field public tooltips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;",
            ">;"
        }
    .end annotation
.end field

.field public totalScreens:I

.field public final zoomSliderChangeListener:Lcom/motorola/camera/Notifier$Listener;

.field public zoomTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v3, "FIRST_USE_INTRO_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->INFLATION_STATES:Ljava/util/List;

    .line 2
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 4
    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    check-cast v4, Ljava/util/Set;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    const-string v5, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 6
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->SHOWN_MODE_STATES:Ljava/util/Collection;

    .line 7
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v6, v3

    .line 8
    move-object v2, v5

    check-cast v2, Ljava/util/Set;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v2, v3

    .line 10
    move-object v6, v5

    check-cast v6, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v2, v3

    .line 12
    move-object v6, v5

    check-cast v6, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v2, v3

    .line 14
    move-object v6, v5

    check-cast v6, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v2, v3

    .line 16
    move-object v6, v5

    check-cast v6, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v2, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v2, v3

    .line 18
    move-object v6, v5

    check-cast v6, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v3

    .line 20
    move-object v2, v5

    check-cast v2, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    move-object v0, v5

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    move-object v0, v5

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 24
    move-object v1, v5

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 25
    check-cast v5, Ljava/util/Set;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026s())\n            .build()"

    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isPhotoScreen:Z

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$panelTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$panelTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$panelTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$panelTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 5
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$controlItemChangeListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$controlItemChangeListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$controlItemChangeListener$2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$controlItemChangeListener$2;

    .line 7
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->TUTORIAL_TOOLTIP:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->controlItemChangeListener:Lcom/motorola/camera/Notifier$Listener;

    .line 9
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$settingTutorialChangeListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$settingTutorialChangeListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$settingTutorialChangeListener$2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$settingTutorialChangeListener$2;

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    .line 11
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->settingTutorialChangeListener:Lcom/motorola/camera/Notifier$Listener;

    .line 12
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomSliderChangeListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomSliderChangeListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomSliderChangeListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomSliderChangeListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    .line 13
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 14
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->zoomSliderChangeListener:Lcom/motorola/camera/Notifier$Listener;

    return-void
.end method

.method public static final access$isRtl(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final completeModeTutorial()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isModeTutorialShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isModeTutorialShown:Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentScreen()Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final completeTutorial()V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentScreen()Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 4
    :goto_0
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    if-ne v0, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->hideTooltip()V

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->setTooltipIndex(I)V

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLAY_TUTORIAL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->setFirstUseTooltip(Z)V

    .line 10
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isPhotoScreen:Z

    if-nez v0, :cond_1

    .line 11
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isPhotoScreen:Z

    goto :goto_1

    .line 12
    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->completeModeTutorial()V

    :goto_1
    return-void
.end method

.method public final currentScreen()Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentScreens:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentScreenIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    :goto_0
    return-object p0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public final getTooltipIndex()I
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP_INDEX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.FIRS\u2026_USE_TOOLTIP_INDEX).value"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final hideTooltip()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public inflateViewStub()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    const v2, 0x7f0a03fa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->rootLayout:Landroid/widget/RelativeLayout;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    const v2, 0x7f0a0406

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_2
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_3

    :cond_4
    const v2, 0x7f0a0407

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_3
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleText:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_4

    :cond_5
    const v2, 0x7f0a0405

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    :goto_4
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleClose:Landroid/widget/ImageButton;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_5

    :cond_6
    const v2, 0x7f0a03f1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_5
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentBackground:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_6

    :cond_7
    const v2, 0x7f0a03f2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_6
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentImage:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_7

    :cond_8
    const v2, 0x7f0a03f5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_7
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentHeader:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_8

    :cond_9
    const v2, 0x7f0a03f4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_8
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentText:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_a

    move-object v0, v1

    goto :goto_9

    :cond_a
    const v2, 0x7f0a03f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :goto_9
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->leftButton:Landroid/widget/Button;

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_a

    :cond_b
    const v2, 0x7f0a03f8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :goto_a
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->rightButton:Landroid/widget/Button;

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_c

    move-object v0, v1

    goto :goto_b

    :cond_c
    const v2, 0x7f0a03f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    :goto_b
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenDensity:F

    .line 20
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v2, :cond_d

    :goto_c
    move-object v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_c

    :cond_e
    const v3, 0x7f0a02d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    if-nez v2, :cond_f

    goto :goto_c

    .line 21
    :cond_f
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_c

    :cond_10
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 22
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    :goto_d
    const-string v3, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeSliderComponent"

    .line 23
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->modeSliderComponent:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    .line 24
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ModeMenuTooltip;

    invoke-direct {v3, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ModeMenuTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 25
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ControlSwipeTooltip;

    invoke-direct {v3, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ControlSwipeTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 26
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomButtonTooltip;

    invoke-direct {v3, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomButtonTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 27
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingsButtonTooltip;

    invoke-direct {v3, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingsButtonTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;)V

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 28
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->tooltips:Ljava/util/List;

    .line 29
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->settingSingleTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;

    .line 30
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->zoomTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;

    .line 31
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->shouldShowZoomTooltip:Z

    if-eqz v2, :cond_11

    .line 32
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->showZoomTooltip()V

    .line 33
    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->shouldShowZoomTooltip:Z

    .line 34
    :cond_11
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-nez v2, :cond_14

    .line 35
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v2

    if-eqz v2, :cond_12

    new-array v1, v7, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    .line 36
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;

    invoke-direct {v2, p0, v0, v4, v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;II)V

    aput-object v2, v1, v4

    .line 37
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;

    invoke-direct {v2, p0, v0, v5, v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;II)V

    aput-object v2, v1, v5

    .line 38
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;

    invoke-direct {v2, p0, v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;II)V

    aput-object v2, v1, v6

    .line 39
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_e

    .line 40
    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported()Z

    move-result v2

    if-eqz v2, :cond_13

    new-array v1, v6, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    .line 41
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;

    invoke-direct {v2, p0, v0, v4, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;II)V

    aput-object v2, v1, v4

    .line 42
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;

    invoke-direct {v2, p0, v0, v5, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;II)V

    aput-object v2, v1, v5

    .line 43
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    :cond_13
    :goto_e
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->dualCaptureTooltip:Ljava/util/List;

    .line 45
    :cond_14
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionSupported()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 46
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;

    :cond_15
    return-void
.end method

.method public final nextTooltip(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isZoomSliderShown:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isControlPanelShown:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    .line 5
    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    if-ne v0, p1, :cond_3

    return-void

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->hideTooltip()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->setTooltipIndex(I)V

    const/4 v0, -0x1

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    .line 8
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isShowTooltips:Z

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->setFirstUseTooltip(Z)V

    .line 10
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isShowTooltips:Z

    if-nez v0, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;II)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->setFirstUseTooltip(Z)V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->modeSliderComponent:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    if-nez p0, :cond_7

    goto :goto_2

    .line 14
    :cond_7
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-nez p0, :cond_8

    goto :goto_2

    .line 16
    :cond_8
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method public rotate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->rotate(F)V

    :goto_0
    return-void
.end method

.method public final setFirstUseTooltip(Z)V
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTooltipIndex(I)V
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP_INDEX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final showZoomTooltip()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->zoomTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->controlItemChangeListener:Lcom/motorola/camera/Notifier$Listener;

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->TUTORIAL_TOOLTIP:Lcom/motorola/camera/Notifier$TYPE;

    .line 5
    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 7
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->settingTutorialChangeListener:Lcom/motorola/camera/Notifier$Listener;

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    .line 11
    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->zoomSliderChangeListener:Lcom/motorola/camera/Notifier$Listener;

    .line 13
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 14
    invoke-static {v1, p0, p1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_6

    .line 15
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    .line 18
    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "get(SettingsManager.FIRST_TIME_USE).value"

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 21
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 22
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 23
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 24
    invoke-static {p1, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    .line 25
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p0}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda2;-><init>(ZZLcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 26
    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 27
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 29
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 30
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->getTooltipIndex()I

    move-result p1

    if-ne p1, v3, :cond_4

    return-void

    :cond_4
    if-gez p1, :cond_5

    .line 31
    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isPhotoScreen:Z

    .line 32
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 33
    :cond_5
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->setTooltipIndex(I)V

    .line 34
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->setFirstUseTooltip(Z)V

    const/4 p1, 0x3

    .line 35
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;IZ)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 36
    :cond_6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_TOOLTIP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result p1

    if-ne p1, v1, :cond_7

    move v4, v1

    :cond_7
    if-eqz v4, :cond_19

    .line 38
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isShowTooltips:Z

    .line 39
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->getTooltipIndex()I

    move-result p1

    if-eq p1, v3, :cond_19

    .line 40
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->nextTooltip(I)V

    goto/16 :goto_6

    .line 41
    :cond_8
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->getTooltipIndex()I

    move-result p1

    sub-int/2addr p1, v1

    if-eq p1, v3, :cond_19

    .line 43
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->nextTooltip(I)V

    goto/16 :goto_6

    .line 44
    :cond_9
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 45
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isTapToggle:Z

    if-eqz p1, :cond_a

    .line 46
    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isTapToggle:Z

    goto/16 :goto_6

    .line 47
    :cond_a
    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isShowTooltips:Z

    .line 48
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->hideTooltip()V

    goto/16 :goto_6

    .line 49
    :cond_b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 50
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_5

    .line 51
    :cond_c
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->hideTooltip()V

    goto/16 :goto_6

    .line 54
    :cond_d
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->SHOWN_MODE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 55
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    const-string v0, "get(SettingsManager.FIRS\u2026ME_USE_ZOOM_SLIDER).value"

    if-eqz p1, :cond_f

    .line 56
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 58
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result p1

    if-nez p1, :cond_10

    .line 59
    :cond_e
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 60
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 62
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSecondLaunch()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_0

    .line 63
    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    const-string v2, "getCurrentCameraType()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(ZLcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 65
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 66
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 67
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 68
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSecondLaunch()Z

    move-result p1

    if-eqz p1, :cond_10

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_10
    move p1, v4

    :goto_1
    if-eqz p1, :cond_12

    .line 69
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->zoomTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;

    if-eqz p1, :cond_11

    .line 70
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->showZoomTooltip()V

    goto :goto_2

    .line 71
    :cond_11
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->shouldShowZoomTooltip:Z

    .line 72
    :cond_12
    :goto_2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 73
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.FIRS\u2026E_USE_DUAL_CAPTURE).value"

    .line 74
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 75
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_13

    move p1, v1

    goto :goto_3

    :cond_13
    move p1, v4

    :goto_3
    if-eqz p1, :cond_14

    .line 76
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;II)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    :cond_14
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 78
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.FIRS\u2026_SUPER_SLOW_MOTION).value"

    .line 79
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 80
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_4

    :cond_15
    move v1, v4

    :goto_4
    if-eqz v1, :cond_19

    .line 81
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 82
    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 83
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 84
    :cond_17
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 85
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->hideTooltip()V

    .line 87
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->controlItemChangeListener:Lcom/motorola/camera/Notifier$Listener;

    .line 88
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->TUTORIAL_TOOLTIP:Lcom/motorola/camera/Notifier$TYPE;

    .line 89
    invoke-static {v4, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 90
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->panelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 91
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 92
    invoke-static {v4, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 93
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->settingTutorialChangeListener:Lcom/motorola/camera/Notifier$Listener;

    .line 94
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    .line 95
    invoke-static {v4, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 96
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->zoomSliderChangeListener:Lcom/motorola/camera/Notifier$Listener;

    .line 97
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 98
    invoke-static {v4, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 99
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 100
    :cond_18
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->getTooltipIndex()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 101
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->setTooltipIndex(I)V

    :cond_19
    :goto_6
    return-void
.end method

.method public updateViewStub()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleClose:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->rootLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->leftButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->rightButton:Landroid/widget/Button;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method

.method public final updateViews(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->updateViews(Ljava/util/List;I)V

    return-void
.end method

.method public final updateViews(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 3
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentScreenIndex:I

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentScreens:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget p1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    const/16 p2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 10
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_1
    iget p1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    if-eqz p1, :cond_8

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez p1, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 16
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 17
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez p1, :cond_7

    goto :goto_5

    .line 18
    :cond_7
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 19
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "mParentView.resources.ge\u2026.talkback_tooltip_titles)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v2, :sswitch_data_0

    const-string v2, ""

    goto :goto_4

    :sswitch_0
    const/4 v2, 0x3

    .line 20
    aget-object v2, v3, v2

    const-string/jumbo v3, "tutorialTitles[SPOT_COLOR_VIDEO_TITLE_INDEX]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_1
    const/4 v2, 0x2

    .line 21
    aget-object v2, v3, v2

    const-string/jumbo v3, "tutorialTitles[SPOT_COLOR_TITLE_INDEX]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 22
    :sswitch_2
    aget-object v2, v3, v1

    const-string/jumbo v3, "tutorialTitles[PORTRAIT_TITLE_INDEX]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_3
    const/4 v2, 0x6

    .line 23
    aget-object v2, v3, v2

    const-string/jumbo v3, "tutorialTitles[MACRO_TITLE_INDEX]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_4
    const/4 v2, 0x5

    .line 24
    aget-object v2, v3, v2

    const-string/jumbo v3, "tutorialTitles[ULTRA_RES_TITLE_INDEX]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_5
    const/4 v2, 0x4

    .line 25
    aget-object v2, v3, v2

    const-string/jumbo v3, "tutorialTitles[CUTOUT_TITLE_INDEX]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_6
    const/4 v2, 0x1

    .line 26
    aget-object v2, v3, v2

    const-string/jumbo v3, "tutorialTitles[CINEMAGRAPH_TITLE_INDEX]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :goto_4
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 28
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :goto_5
    iget p1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mBackgroudRes:I

    if-eqz p1, :cond_c

    .line 30
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentBackground:Landroid/widget/ImageView;

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    :goto_6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentBackground:Landroid/widget/ImageView;

    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 32
    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentBackground:Landroid/widget/ImageView;

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    :goto_7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentImage:Landroid/widget/ImageView;

    if-nez p1, :cond_e

    goto :goto_8

    .line 34
    :cond_e
    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    if-eqz v2, :cond_f

    .line 35
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 37
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 38
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 39
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_8

    .line 40
    :cond_f
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 41
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 42
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    :goto_8
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentHeader:Landroid/widget/TextView;

    if-nez p1, :cond_10

    goto :goto_9

    .line 44
    :cond_10
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 45
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 46
    :goto_9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->contentText:Landroid/widget/TextView;

    if-nez p1, :cond_11

    goto :goto_a

    .line 47
    :cond_11
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    .line 48
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    :goto_a
    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 50
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_USE_PAGINATED:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    if-ne p1, v2, :cond_13

    .line 51
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    if-nez p1, :cond_12

    goto :goto_b

    .line 52
    :cond_12
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->totalScreens:I

    invoke-virtual {p1, v3}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    .line 53
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentScreenIndex:I

    invoke-virtual {p1, v3}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setCurrentPosition(I)V

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 55
    :cond_13
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    if-nez p1, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :goto_b
    iget p1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mLeftButtonTextRes:I

    if-nez p1, :cond_16

    .line 57
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->leftButton:Landroid/widget/Button;

    if-nez p1, :cond_15

    goto :goto_10

    :cond_15
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_10

    .line 58
    :cond_16
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->leftButton:Landroid/widget/Button;

    if-nez p1, :cond_17

    const/4 p1, 0x0

    goto :goto_c

    :cond_17
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :goto_c
    const-string p2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    iget-object p2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    const/16 v3, 0x10

    const/16 v4, 0x14

    if-ne p2, v2, :cond_18

    .line 60
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 p2, -0x1

    .line 61
    invoke-virtual {p1, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_d

    .line 62
    :cond_18
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const p2, 0x7f0a03f8

    .line 63
    invoke-virtual {p1, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 64
    :goto_d
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->leftButton:Landroid/widget/Button;

    if-nez p2, :cond_19

    goto :goto_e

    :cond_19
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :goto_e
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->leftButton:Landroid/widget/Button;

    if-nez p1, :cond_1a

    goto :goto_f

    :cond_1a
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    :goto_f
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->leftButton:Landroid/widget/Button;

    if-nez p1, :cond_1b

    goto :goto_10

    .line 67
    :cond_1b
    iget p2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mLeftButtonTextRes:I

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 69
    :goto_10
    iget p1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    if-eqz p1, :cond_1d

    .line 70
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->rightButton:Landroid/widget/Button;

    if-nez p2, :cond_1c

    goto :goto_11

    :cond_1c
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(I)V

    .line 71
    :cond_1d
    :goto_11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110351 -> :sswitch_6
        0x7f110352 -> :sswitch_5
        0x7f110359 -> :sswitch_4
        0x7f11035c -> :sswitch_3
        0x7f110361 -> :sswitch_2
        0x7f110366 -> :sswitch_1
        0x7f110367 -> :sswitch_0
    .end sparse-switch
.end method

.method public viewStubInflationStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->INFLATION_STATES:Ljava/util/List;

    return-object p0
.end method
